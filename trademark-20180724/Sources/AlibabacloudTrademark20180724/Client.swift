import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = "central"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("trademark", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
    }

    public func getEndpoint(_ productId: String, _ regionId: String, _ endpointRule: String, _ network: String, _ suffix: String, _ endpointMap: [String: String], _ endpoint: String) throws -> String {
        if (!TeaUtils.Client.empty(endpoint)) {
            return endpoint as! String
        }
        if (!TeaUtils.Client.isUnset(endpointMap) && !TeaUtils.Client.empty(endpointMap[regionId as! String])) {
            return endpointMap[regionId as! String] ?? ""
        }
        return try AlibabacloudEndpointUtil.Client.getEndpointRules(productId, regionId, endpointRule, network, suffix)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func acceptPartnerNotificationWithOptions(_ request: AcceptPartnerNotificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AcceptPartnerNotificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.material)) {
            query["Material"] = request.material ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operation)) {
            query["Operation"] = request.operation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AcceptPartnerNotification",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AcceptPartnerNotificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func acceptPartnerNotification(_ request: AcceptPartnerNotificationRequest) async throws -> AcceptPartnerNotificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await acceptPartnerNotificationWithOptions(request as! AcceptPartnerNotificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyNotaryPostWithOptions(_ request: ApplyNotaryPostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyNotaryPostResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.notaryOrderId)) {
            query["NotaryOrderId"] = request.notaryOrderId!;
        }
        if (!TeaUtils.Client.isUnset(request.receiverAddress)) {
            query["ReceiverAddress"] = request.receiverAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.receiverName)) {
            query["ReceiverName"] = request.receiverName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.receiverPhone)) {
            query["ReceiverPhone"] = request.receiverPhone ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyNotaryPost",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyNotaryPostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyNotaryPost(_ request: ApplyNotaryPostRequest) async throws -> ApplyNotaryPostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyNotaryPostWithOptions(request as! ApplyNotaryPostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func askAdjudicationFileWithOptions(_ request: AskAdjudicationFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AskAdjudicationFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactAddress)) {
            query["ContactAddress"] = request.contactAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactCity)) {
            query["ContactCity"] = request.contactCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactCounty)) {
            query["ContactCounty"] = request.contactCounty ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactDistrict)) {
            query["ContactDistrict"] = request.contactDistrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            query["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactNumber)) {
            query["ContactNumber"] = request.contactNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactProvince)) {
            query["ContactProvince"] = request.contactProvince ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AskAdjudicationFile",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AskAdjudicationFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func askAdjudicationFile(_ request: AskAdjudicationFileRequest) async throws -> AskAdjudicationFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await askAdjudicationFileWithOptions(request as! AskAdjudicationFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindMaterialWithOptions(_ request: BindMaterialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindMaterialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalNoticeKey)) {
            query["LegalNoticeKey"] = request.legalNoticeKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loaOssKey)) {
            query["LoaOssKey"] = request.loaOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.materialId)) {
            query["MaterialId"] = request.materialId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindMaterial",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindMaterialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindMaterial(_ request: BindMaterialRequest) async throws -> BindMaterialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindMaterialWithOptions(request as! BindMaterialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelTradeOrderWithOptions(_ request: CancelTradeOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelTradeOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelTradeOrder",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelTradeOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelTradeOrder(_ request: CancelTradeOrderRequest) async throws -> CancelTradeOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelTradeOrderWithOptions(request as! CancelTradeOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkFlsmFillWithOptions(_ request: CheckFlsmFillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckFlsmFillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicantType)) {
            query["ApplicantType"] = request.applicantType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossKey)) {
            query["OssKey"] = request.ossKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personalType)) {
            query["PersonalType"] = request.personalType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wtrName)) {
            query["WtrName"] = request.wtrName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckFlsmFill",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckFlsmFillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkFlsmFill(_ request: CheckFlsmFillRequest) async throws -> CheckFlsmFillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkFlsmFillWithOptions(request as! CheckFlsmFillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkIfCollectedWithOptions(_ request: CheckIfCollectedRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckIfCollectedResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.itemIdList)) {
            query["ItemIdList"] = request.itemIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckIfCollected",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckIfCollectedResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkIfCollected(_ request: CheckIfCollectedRequest) async throws -> CheckIfCollectedResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkIfCollectedWithOptions(request as! CheckIfCollectedRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkLoaFillWithOptions(_ request: CheckLoaFillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckLoaFillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicantType)) {
            query["ApplicantType"] = request.applicantType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            query["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactNumber)) {
            query["ContactNumber"] = request.contactNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactZipcode)) {
            query["ContactZipcode"] = request.contactZipcode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossKey)) {
            query["OssKey"] = request.ossKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personalType)) {
            query["PersonalType"] = request.personalType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wtrName)) {
            query["WtrName"] = request.wtrName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckLoaFill",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckLoaFillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkLoaFill(_ request: CheckLoaFillRequest) async throws -> CheckLoaFillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkLoaFillWithOptions(request as! CheckLoaFillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkTrademarkIconWithOptions(_ request: CheckTrademarkIconRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckTrademarkIconResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventSceneType)) {
            query["EventSceneType"] = request.eventSceneType!;
        }
        if (!TeaUtils.Client.isUnset(request.trademarkIconOssKey)) {
            query["TrademarkIconOssKey"] = request.trademarkIconOssKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckTrademarkIcon",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckTrademarkIconResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkTrademarkIcon(_ request: CheckTrademarkIconRequest) async throws -> CheckTrademarkIconResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkTrademarkIconWithOptions(request as! CheckTrademarkIconRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkTrademarkOrderWithOptions(_ request: CheckTrademarkOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckTrademarkOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agreementId)) {
            query["AgreementId"] = request.agreementId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isBlackIcon)) {
            query["IsBlackIcon"] = request.isBlackIcon!;
        }
        if (!TeaUtils.Client.isUnset(request.loaOssKey)) {
            query["LoaOssKey"] = request.loaOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logoGoodsId)) {
            query["LogoGoodsId"] = request.logoGoodsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.materialId)) {
            query["MaterialId"] = request.materialId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderData)) {
            query["OrderData"] = request.orderData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partnerCode)) {
            query["PartnerCode"] = request.partnerCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNum)) {
            query["PhoneNum"] = request.phoneNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realUserName)) {
            query["RealUserName"] = request.realUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registerName)) {
            query["RegisterName"] = request.registerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registerNumber)) {
            query["RegisterNumber"] = request.registerNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renewInfoId)) {
            query["RenewInfoId"] = request.renewInfoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rootCode)) {
            query["RootCode"] = request.rootCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmComment)) {
            query["TmComment"] = request.tmComment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmIcon)) {
            query["TmIcon"] = request.tmIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmName)) {
            query["TmName"] = request.tmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmNameType)) {
            query["TmNameType"] = request.tmNameType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckTrademarkOrder",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckTrademarkOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkTrademarkOrder(_ request: CheckTrademarkOrderRequest) async throws -> CheckTrademarkOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkTrademarkOrderWithOptions(request as! CheckTrademarkOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func combineLoaWithOptions(_ request: CombineLoaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CombineLoaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicantType)) {
            query["ApplicantType"] = request.applicantType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            query["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactPhone)) {
            query["ContactPhone"] = request.contactPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactPostcode)) {
            query["ContactPostcode"] = request.contactPostcode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.materialId)) {
            query["MaterialId"] = request.materialId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.materialName)) {
            query["MaterialName"] = request.materialName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nationality)) {
            query["Nationality"] = request.nationality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personalType)) {
            query["PersonalType"] = request.personalType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName!;
        }
        if (!TeaUtils.Client.isUnset(request.tmNumber)) {
            query["TmNumber"] = request.tmNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmProduceType)) {
            query["TmProduceType"] = request.tmProduceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkName)) {
            query["TrademarkName"] = request.trademarkName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CombineLoa",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CombineLoaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func combineLoa(_ request: CombineLoaRequest) async throws -> CombineLoaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await combineLoaWithOptions(request as! CombineLoaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func combineWTSWithOptions(_ request: CombineWTSRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CombineWTSResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contact)) {
            query["Contact"] = request.contact ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactAddressPost)) {
            query["ContactAddressPost"] = request.contactAddressPost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactMobile)) {
            query["ContactMobile"] = request.contactMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.materialId)) {
            query["MaterialId"] = request.materialId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.materialName)) {
            query["MaterialName"] = request.materialName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nationality)) {
            query["Nationality"] = request.nationality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmNum)) {
            query["TmNum"] = request.tmNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmProduceType)) {
            query["TmProduceType"] = request.tmProduceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkName)) {
            query["TrademarkName"] = request.trademarkName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wtsType)) {
            query["WtsType"] = request.wtsType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CombineWTS",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CombineWTSResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func combineWTS(_ request: CombineWTSRequest) async throws -> CombineWTSResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await combineWTSWithOptions(request as! CombineWTSRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func complementIntentionUserIdWithOptions(_ request: ComplementIntentionUserIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ComplementIntentionUserIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunKp)) {
            query["AliyunKp"] = request.aliyunKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerParentId)) {
            query["CallerParentId"] = request.callerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.callerType)) {
            query["CallerType"] = request.callerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.complementUserId)) {
            body["ComplementUserId"] = request.complementUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ComplementIntentionUserId",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ComplementIntentionUserIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func complementIntentionUserId(_ request: ComplementIntentionUserIdRequest) async throws -> ComplementIntentionUserIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await complementIntentionUserIdWithOptions(request as! ComplementIntentionUserIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmAdditionalMaterialWithOptions(_ request: ConfirmAdditionalMaterialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmAdditionalMaterialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            query["Note"] = request.note ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfirmAdditionalMaterial",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmAdditionalMaterialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmAdditionalMaterial(_ request: ConfirmAdditionalMaterialRequest) async throws -> ConfirmAdditionalMaterialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await confirmAdditionalMaterialWithOptions(request as! ConfirmAdditionalMaterialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmApplicantWithOptions(_ request: ConfirmApplicantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmApplicantResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            query["Note"] = request.note ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfirmApplicant",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmApplicantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmApplicant(_ request: ConfirmApplicantRequest) async throws -> ConfirmApplicantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await confirmApplicantWithOptions(request as! ConfirmApplicantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmDissentOriginalWithOptions(_ request: ConfirmDissentOriginalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmDissentOriginalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactAddress)) {
            query["ContactAddress"] = request.contactAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactCity)) {
            query["ContactCity"] = request.contactCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactCounty)) {
            query["ContactCounty"] = request.contactCounty ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactDistrict)) {
            query["ContactDistrict"] = request.contactDistrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            query["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactNumber)) {
            query["ContactNumber"] = request.contactNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactProvince)) {
            query["ContactProvince"] = request.contactProvince ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfirmDissentOriginal",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmDissentOriginalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmDissentOriginal(_ request: ConfirmDissentOriginalRequest) async throws -> ConfirmDissentOriginalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await confirmDissentOriginalWithOptions(request as! ConfirmDissentOriginalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func convertImageToGrayWithOptions(_ request: ConvertImageToGrayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConvertImageToGrayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ossKey)) {
            query["OssKey"] = request.ossKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConvertImageToGray",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConvertImageToGrayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func convertImageToGray(_ request: ConvertImageToGrayRequest) async throws -> ConvertImageToGrayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await convertImageToGrayWithOptions(request as! ConvertImageToGrayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copyApplicantWithOptions(_ request: CopyApplicantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CopyApplicantResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CopyApplicant",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CopyApplicantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copyApplicant(_ request: CopyApplicantRequest) async throws -> CopyApplicantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await copyApplicantWithOptions(request as! CopyApplicantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIntentionOrderWithOptions(_ request: CreateIntentionOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIntentionOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intentionBizId)) {
            query["IntentionBizId"] = request.intentionBizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIntentionOrder",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIntentionOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIntentionOrder(_ request: CreateIntentionOrderRequest) async throws -> CreateIntentionOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createIntentionOrderWithOptions(request as! CreateIntentionOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIntentionOrderGeneratingPayWithOptions(_ request: CreateIntentionOrderGeneratingPayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIntentionOrderGeneratingPayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intentionBizId)) {
            query["IntentionBizId"] = request.intentionBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paymentCallback)) {
            query["PaymentCallback"] = request.paymentCallback ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIntentionOrderGeneratingPay",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIntentionOrderGeneratingPayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIntentionOrderGeneratingPay(_ request: CreateIntentionOrderGeneratingPayRequest) async throws -> CreateIntentionOrderGeneratingPayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createIntentionOrderGeneratingPayWithOptions(request as! CreateIntentionOrderGeneratingPayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrademarkOrderWithOptions(_ request: CreateTrademarkOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTrademarkOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agreementId)) {
            query["AgreementId"] = request.agreementId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bigDipperSource)) {
            query["BigDipperSource"] = request.bigDipperSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isBlackIcon)) {
            query["IsBlackIcon"] = request.isBlackIcon!;
        }
        if (!TeaUtils.Client.isUnset(request.legalNoticeKey)) {
            query["LegalNoticeKey"] = request.legalNoticeKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loaOssKey)) {
            query["LoaOssKey"] = request.loaOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.materialId)) {
            query["MaterialId"] = request.materialId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderData)) {
            query["OrderData"] = request.orderData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partnerCode)) {
            query["PartnerCode"] = request.partnerCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNum)) {
            query["PhoneNum"] = request.phoneNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName!;
        }
        if (!TeaUtils.Client.isUnset(request.realUserName)) {
            query["RealUserName"] = request.realUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registerName)) {
            query["RegisterName"] = request.registerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registerNumber)) {
            query["RegisterNumber"] = request.registerNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renewInfoId)) {
            query["RenewInfoId"] = request.renewInfoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rootCode)) {
            query["RootCode"] = request.rootCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["SessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmComment)) {
            query["TmComment"] = request.tmComment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmIcon)) {
            query["TmIcon"] = request.tmIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmName)) {
            query["TmName"] = request.tmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmNameType)) {
            query["TmNameType"] = request.tmNameType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.ua)) {
            query["Ua"] = request.ua ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTrademarkOrder",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTrademarkOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrademarkOrder(_ request: CreateTrademarkOrderRequest) async throws -> CreateTrademarkOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTrademarkOrderWithOptions(request as! CreateTrademarkOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMaterialWithOptions(_ request: DeleteMaterialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMaterialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMaterial",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMaterialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMaterial(_ request: DeleteMaterialRequest) async throws -> DeleteMaterialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMaterialWithOptions(request as! DeleteMaterialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTmMonitorRuleWithOptions(_ request: DeleteTmMonitorRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTmMonitorRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTmMonitorRule",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTmMonitorRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTmMonitorRule(_ request: DeleteTmMonitorRuleRequest) async throws -> DeleteTmMonitorRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTmMonitorRuleWithOptions(request as! DeleteTmMonitorRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrademarkApplicationWithOptions(_ request: DeleteTrademarkApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTrademarkApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTrademarkApplication",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTrademarkApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrademarkApplication(_ request: DeleteTrademarkApplicationRequest) async throws -> DeleteTrademarkApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTrademarkApplicationWithOptions(request as! DeleteTrademarkApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func denySupplementWithOptions(_ request: DenySupplementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DenySupplementResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DenySupplement",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DenySupplementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func denySupplement(_ request: DenySupplementRequest) async throws -> DenySupplementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await denySupplementWithOptions(request as! DenySupplementRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func descirbeCombineTrademarkWithOptions(_ request: DescirbeCombineTrademarkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescirbeCombineTrademarkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accurateMatch)) {
            query["AccurateMatch"] = request.accurateMatch!;
        }
        if (!TeaUtils.Client.isUnset(request.classification)) {
            query["Classification"] = request.classification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerName)) {
            query["OwnerName"] = request.ownerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.products)) {
            query["Products"] = request.products ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrationNumber)) {
            query["RegistrationNumber"] = request.registrationNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.similarGroups)) {
            query["SimilarGroups"] = request.similarGroups ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescirbeCombineTrademark",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescirbeCombineTrademarkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func descirbeCombineTrademark(_ request: DescirbeCombineTrademarkRequest) async throws -> DescirbeCombineTrademarkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await descirbeCombineTrademarkWithOptions(request as! DescirbeCombineTrademarkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fillLogisticsWithOptions(_ request: FillLogisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FillLogisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logistics)) {
            query["Logistics"] = request.logistics ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FillLogistics",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FillLogisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fillLogistics(_ request: FillLogisticsRequest) async throws -> FillLogisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await fillLogisticsWithOptions(request as! FillLogisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func filterUnavailableCodesWithOptions(_ tmpReq: FilterUnavailableCodesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FilterUnavailableCodesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FilterUnavailableCodesShrinkRequest = FilterUnavailableCodesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.codes)) {
            request.codesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.codes, "Codes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.codesShrink)) {
            query["Codes"] = request.codesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FilterUnavailableCodes",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FilterUnavailableCodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func filterUnavailableCodes(_ request: FilterUnavailableCodesRequest) async throws -> FilterUnavailableCodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await filterUnavailableCodesWithOptions(request as! FilterUnavailableCodesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func forceUploadTrademarkOnsaleWithOptions(_ request: ForceUploadTrademarkOnsaleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ForceUploadTrademarkOnsaleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            query["BeginTime"] = request.beginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.classificationCode)) {
            query["ClassificationCode"] = request.classificationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.label)) {
            query["Label"] = request.label ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalPrice)) {
            query["OriginalPrice"] = request.originalPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerEnName)) {
            query["OwnerEnName"] = request.ownerEnName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerName)) {
            query["OwnerName"] = request.ownerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            query["Reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regAnnDate)) {
            query["RegAnnDate"] = request.regAnnDate!;
        }
        if (!TeaUtils.Client.isUnset(request.secondaryClassification)) {
            query["SecondaryClassification"] = request.secondaryClassification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdClassification)) {
            query["ThirdClassification"] = request.thirdClassification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmIcon)) {
            query["TmIcon"] = request.tmIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmName)) {
            query["TmName"] = request.tmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmNumber)) {
            query["TmNumber"] = request.tmNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ForceUploadTrademarkOnsale",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ForceUploadTrademarkOnsaleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func forceUploadTrademarkOnsale(_ request: ForceUploadTrademarkOnsaleRequest) async throws -> ForceUploadTrademarkOnsaleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await forceUploadTrademarkOnsaleWithOptions(request as! ForceUploadTrademarkOnsaleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateQrCodeWithOptions(_ request: GenerateQrCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateQrCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fieldKey)) {
            query["FieldKey"] = request.fieldKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossKey)) {
            query["OssKey"] = request.ossKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            query["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateQrCode",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateQrCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateQrCode(_ request: GenerateQrCodeRequest) async throws -> GenerateQrCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateQrCodeWithOptions(request as! GenerateQrCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateUploadFilePolicyWithOptions(_ request: GenerateUploadFilePolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateUploadFilePolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            query["FileType"] = request.fileType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateUploadFilePolicy",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateUploadFilePolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateUploadFilePolicy(_ request: GenerateUploadFilePolicyRequest) async throws -> GenerateUploadFilePolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateUploadFilePolicyWithOptions(request as! GenerateUploadFilePolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAuthorizationLetterVersionWithOptions(_ request: GetAuthorizationLetterVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAuthorizationLetterVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ossKey)) {
            query["OssKey"] = request.ossKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAuthorizationLetterVersion",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAuthorizationLetterVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAuthorizationLetterVersion(_ request: GetAuthorizationLetterVersionRequest) async throws -> GetAuthorizationLetterVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAuthorizationLetterVersionWithOptions(request as! GetAuthorizationLetterVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDefaultPrincipalWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetDefaultPrincipalResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDefaultPrincipal",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDefaultPrincipalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDefaultPrincipal() async throws -> GetDefaultPrincipalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDefaultPrincipalWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDefaultPrincipalNameWithOptions(_ request: GetDefaultPrincipalNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDefaultPrincipalNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDefaultPrincipalName",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDefaultPrincipalNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDefaultPrincipalName(_ request: GetDefaultPrincipalNameRequest) async throws -> GetDefaultPrincipalNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDefaultPrincipalNameWithOptions(request as! GetDefaultPrincipalNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNotaryOrderWithOptions(_ request: GetNotaryOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNotaryOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.notaryOrderId)) {
            query["NotaryOrderId"] = request.notaryOrderId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNotaryOrder",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNotaryOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNotaryOrder(_ request: GetNotaryOrderRequest) async throws -> GetNotaryOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNotaryOrderWithOptions(request as! GetNotaryOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSupportPrincipalNameWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetSupportPrincipalNameResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSupportPrincipalName",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSupportPrincipalNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSupportPrincipalName() async throws -> GetSupportPrincipalNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSupportPrincipalNameWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertMaterialWithOptions(_ request: InsertMaterialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertMaterialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessLicenceOssKey)) {
            query["BusinessLicenceOssKey"] = request.businessLicenceOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cardNumber)) {
            query["CardNumber"] = request.cardNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactAddress)) {
            query["ContactAddress"] = request.contactAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactCity)) {
            query["ContactCity"] = request.contactCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactCounty)) {
            query["ContactCounty"] = request.contactCounty ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactDistrict)) {
            query["ContactDistrict"] = request.contactDistrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactEmail)) {
            query["ContactEmail"] = request.contactEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            query["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactNumber)) {
            query["ContactNumber"] = request.contactNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactProvince)) {
            query["ContactProvince"] = request.contactProvince ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactZipcode)) {
            query["ContactZipcode"] = request.contactZipcode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.EAddress)) {
            query["EAddress"] = request.EAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.EName)) {
            query["EName"] = request.EName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardName)) {
            query["IdCardName"] = request.idCardName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardNumber)) {
            query["IdCardNumber"] = request.idCardNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardOssKey)) {
            query["IdCardOssKey"] = request.idCardOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalNoticeOssKey)) {
            query["LegalNoticeOssKey"] = request.legalNoticeOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loaOssKey)) {
            query["LoaOssKey"] = request.loaOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passportOssKey)) {
            query["PassportOssKey"] = request.passportOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personalType)) {
            query["PersonalType"] = request.personalType!;
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName!;
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            query["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region!;
        }
        if (!TeaUtils.Client.isUnset(request.town)) {
            query["Town"] = request.town ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertMaterial",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertMaterialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertMaterial(_ request: InsertMaterialRequest) async throws -> InsertMaterialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await insertMaterialWithOptions(request as! InsertMaterialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertRenewInfoWithOptions(_ request: InsertRenewInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertRenewInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engAddress)) {
            query["EngAddress"] = request.engAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engName)) {
            query["EngName"] = request.engName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registerTime)) {
            query["RegisterTime"] = request.registerTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertRenewInfo",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertRenewInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertRenewInfo(_ request: InsertRenewInfoRequest) async throws -> InsertRenewInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await insertRenewInfoWithOptions(request as! InsertRenewInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertTmMonitorRuleWithOptions(_ tmpReq: InsertTmMonitorRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertTmMonitorRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InsertTmMonitorRuleShrinkRequest = InsertTmMonitorRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.classification)) {
            request.classificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.classification, "Classification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notifyStatus)) {
            request.notifyStatusShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notifyStatus, "NotifyStatus", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.classificationShrink)) {
            query["Classification"] = request.classificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endApplyDate)) {
            query["EndApplyDate"] = request.endApplyDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyStatusShrink)) {
            query["NotifyStatus"] = request.notifyStatusShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleKeyword)) {
            query["RuleKeyword"] = request.ruleKeyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleSource)) {
            query["RuleSource"] = request.ruleSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType!;
        }
        if (!TeaUtils.Client.isUnset(request.startApplyDate)) {
            query["StartApplyDate"] = request.startApplyDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertTmMonitorRule",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertTmMonitorRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertTmMonitorRule(_ request: InsertTmMonitorRuleRequest) async throws -> InsertTmMonitorRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await insertTmMonitorRuleWithOptions(request as! InsertTmMonitorRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNotaryInfosWithOptions(_ request: ListNotaryInfosRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNotaryInfosResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizOrderNo)) {
            query["BizOrderNo"] = request.bizOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notaryType)) {
            query["NotaryType"] = request.notaryType!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNotaryInfos",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNotaryInfosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNotaryInfos(_ request: ListNotaryInfosRequest) async throws -> ListNotaryInfosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNotaryInfosWithOptions(request as! ListNotaryInfosRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNotaryOrdersWithOptions(_ request: ListNotaryOrdersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNotaryOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunOrderId)) {
            query["AliyunOrderId"] = request.aliyunOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endOrderDate)) {
            query["EndOrderDate"] = request.endOrderDate!;
        }
        if (!TeaUtils.Client.isUnset(request.notaryStatus)) {
            query["NotaryStatus"] = request.notaryStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.notaryType)) {
            query["NotaryType"] = request.notaryType!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortByType)) {
            query["SortByType"] = request.sortByType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortKeyType)) {
            query["SortKeyType"] = request.sortKeyType!;
        }
        if (!TeaUtils.Client.isUnset(request.startOrderDate)) {
            query["StartOrderDate"] = request.startOrderDate!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNotaryOrders",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNotaryOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNotaryOrders(_ request: ListNotaryOrdersRequest) async throws -> ListNotaryOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNotaryOrdersWithOptions(request as! ListNotaryOrdersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrademarkSbjKeyWithOptions(_ request: ListTrademarkSbjKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrademarkSbjKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.principalKey)) {
            query["PrincipalKey"] = request.principalKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrademarkSbjKey",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrademarkSbjKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrademarkSbjKey(_ request: ListTrademarkSbjKeyRequest) async throws -> ListTrademarkSbjKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTrademarkSbjKeyWithOptions(request as! ListTrademarkSbjKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySubmitTransferMaterailWithOptions(_ tmpReq: ModifySubmitTransferMaterailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySubmitTransferMaterailResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifySubmitTransferMaterailShrinkRequest = ModifySubmitTransferMaterailShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.other)) {
            request.otherShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.other, "Other", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assigneeProxy)) {
            query["AssigneeProxy"] = request.assigneeProxy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerBusinessLicenseTranslation)) {
            query["BuyerBusinessLicenseTranslation"] = request.buyerBusinessLicenseTranslation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            query["Note"] = request.note ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sellerBusinessLicenseTranslation)) {
            query["SellerBusinessLicenseTranslation"] = request.sellerBusinessLicenseTranslation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tradeMaterialFullUpdate)) {
            query["TradeMaterialFullUpdate"] = request.tradeMaterialFullUpdate!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addr)) {
            body["Addr"] = request.addr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerBusinessLicense)) {
            body["BuyerBusinessLicense"] = request.buyerBusinessLicense ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerIdCard)) {
            body["BuyerIdCard"] = request.buyerIdCard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cardNo)) {
            body["CardNo"] = request.cardNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cardType)) {
            body["CardType"] = request.cardType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.complete)) {
            body["Complete"] = request.complete!;
        }
        if (!TeaUtils.Client.isUnset(request.contactEmail)) {
            body["ContactEmail"] = request.contactEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactMobile)) {
            body["ContactMobile"] = request.contactMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            body["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notarization)) {
            body["Notarization"] = request.notarization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otherShrink)) {
            body["Other"] = request.otherShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registrationCert)) {
            body["RegistrationCert"] = request.registrationCert ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sellerApply)) {
            body["SellerApply"] = request.sellerApply ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sellerBusinessLicense)) {
            body["SellerBusinessLicense"] = request.sellerBusinessLicense ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sellerIdCard)) {
            body["SellerIdCard"] = request.sellerIdCard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sellerProxy)) {
            body["SellerProxy"] = request.sellerProxy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySubmitTransferMaterail",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySubmitTransferMaterailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySubmitTransferMaterail(_ request: ModifySubmitTransferMaterailRequest) async throws -> ModifySubmitTransferMaterailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySubmitTransferMaterailWithOptions(request as! ModifySubmitTransferMaterailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateProduceWithOptions(_ request: OperateProduceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OperateProduceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extMap)) {
            query["ExtMap"] = request.extMap ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OperateProduce",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OperateProduceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateProduce(_ request: OperateProduceRequest) async throws -> OperateProduceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await operateProduceWithOptions(request as! OperateProduceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func partnerUpdateTrademarkNameWithOptions(_ request: PartnerUpdateTrademarkNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PartnerUpdateTrademarkNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunKp)) {
            query["AliyunKp"] = request.aliyunKp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            query["Bid"] = request.bid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerParentId)) {
            query["CallerParentId"] = request.callerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.callerType)) {
            query["CallerType"] = request.callerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventSceneType)) {
            body["EventSceneType"] = request.eventSceneType!;
        }
        if (!TeaUtils.Client.isUnset(request.intentionBizId)) {
            body["IntentionBizId"] = request.intentionBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmComment)) {
            body["TmComment"] = request.tmComment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmIcon)) {
            body["TmIcon"] = request.tmIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmName)) {
            body["TmName"] = request.tmName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PartnerUpdateTrademarkName",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PartnerUpdateTrademarkNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func partnerUpdateTrademarkName(_ request: PartnerUpdateTrademarkNameRequest) async throws -> PartnerUpdateTrademarkNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await partnerUpdateTrademarkNameWithOptions(request as! PartnerUpdateTrademarkNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCommunicationLogsWithOptions(_ request: QueryCommunicationLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCommunicationLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCommunicationLogs",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCommunicationLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCommunicationLogs(_ request: QueryCommunicationLogsRequest) async throws -> QueryCommunicationLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCommunicationLogsWithOptions(request as! QueryCommunicationLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCredentialsInfoWithOptions(_ request: QueryCredentialsInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCredentialsInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.companyName)) {
            query["CompanyName"] = request.companyName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.materialType)) {
            body["MaterialType"] = request.materialType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossKey)) {
            body["OssKey"] = request.ossKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCredentialsInfo",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCredentialsInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCredentialsInfo(_ request: QueryCredentialsInfoRequest) async throws -> QueryCredentialsInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCredentialsInfoWithOptions(request as! QueryCredentialsInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryExtensionAttributeWithOptions(_ request: QueryExtensionAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryExtensionAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attributeKey)) {
            query["AttributeKey"] = request.attributeKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryExtensionAttribute",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryExtensionAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryExtensionAttribute(_ request: QueryExtensionAttributeRequest) async throws -> QueryExtensionAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryExtensionAttributeWithOptions(request as! QueryExtensionAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryIntentionDetailWithOptions(_ request: QueryIntentionDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryIntentionDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryIntentionDetail",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryIntentionDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryIntentionDetail(_ request: QueryIntentionDetailRequest) async throws -> QueryIntentionDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryIntentionDetailWithOptions(request as! QueryIntentionDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryIntentionListWithOptions(_ request: QueryIntentionListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryIntentionListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortFiled)) {
            query["SortFiled"] = request.sortFiled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            query["SortOrder"] = request.sortOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryIntentionList",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryIntentionListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryIntentionList(_ request: QueryIntentionListRequest) async throws -> QueryIntentionListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryIntentionListWithOptions(request as! QueryIntentionListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryIntentionOwnerWithOptions(_ request: QueryIntentionOwnerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryIntentionOwnerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryIntentionOwner",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryIntentionOwnerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryIntentionOwner(_ request: QueryIntentionOwnerRequest) async throws -> QueryIntentionOwnerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryIntentionOwnerWithOptions(request as! QueryIntentionOwnerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryIntentionPriceWithOptions(_ request: QueryIntentionPriceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryIntentionPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intentionBizId)) {
            query["IntentionBizId"] = request.intentionBizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryIntentionPrice",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryIntentionPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryIntentionPrice(_ request: QueryIntentionPriceRequest) async throws -> QueryIntentionPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryIntentionPriceWithOptions(request as! QueryIntentionPriceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMaterialWithOptions(_ request: QueryMaterialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMaterialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.queryUnconfirmedInfo)) {
            query["QueryUnconfirmedInfo"] = request.queryUnconfirmedInfo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMaterial",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMaterialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMaterial(_ request: QueryMaterialRequest) async throws -> QueryMaterialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMaterialWithOptions(request as! QueryMaterialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMaterialListWithOptions(_ request: QueryMaterialListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMaterialListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cardNumber)) {
            query["CardNumber"] = request.cardNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.materialId)) {
            query["MaterialId"] = request.materialId!;
        }
        if (!TeaUtils.Client.isUnset(request.materialVersion)) {
            query["MaterialVersion"] = request.materialVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.systemVersion)) {
            query["SystemVersion"] = request.systemVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMaterialList",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMaterialListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMaterialList(_ request: QueryMaterialListRequest) async throws -> QueryMaterialListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMaterialListWithOptions(request as! QueryMaterialListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMonitorKeywordsWithOptions(_ request: QueryMonitorKeywordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMonitorKeywordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keywords)) {
            query["Keywords"] = request.keywords ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMonitorKeywords",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMonitorKeywordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMonitorKeywords(_ request: QueryMonitorKeywordsRequest) async throws -> QueryMonitorKeywordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMonitorKeywordsWithOptions(request as! QueryMonitorKeywordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOfficialFileCustomListWithOptions(_ request: QueryOfficialFileCustomListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOfficialFileCustomListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOfficialFileCustomList",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOfficialFileCustomListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOfficialFileCustomList(_ request: QueryOfficialFileCustomListRequest) async throws -> QueryOfficialFileCustomListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOfficialFileCustomListWithOptions(request as! QueryOfficialFileCustomListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderLogisticsListWithOptions(_ request: QueryOrderLogisticsListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrderLogisticsListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            body["FileType"] = request.fileType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.produceOrderId)) {
            body["ProduceOrderId"] = request.produceOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registerNumber)) {
            body["RegisterNumber"] = request.registerNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrderLogisticsList",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrderLogisticsListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderLogisticsList(_ request: QueryOrderLogisticsListRequest) async throws -> QueryOrderLogisticsListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrderLogisticsListWithOptions(request as! QueryOrderLogisticsListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOssResourcesWithOptions(_ request: QueryOssResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOssResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOssResources",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOssResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOssResources(_ request: QueryOssResourcesRequest) async throws -> QueryOssResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOssResourcesWithOptions(request as! QueryOssResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryProduceDetailWithOptions(_ request: QueryProduceDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryProduceDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyNo)) {
            query["ApplyNo"] = request.applyNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryProduceDetail",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryProduceDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryProduceDetail(_ request: QueryProduceDetailRequest) async throws -> QueryProduceDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryProduceDetailWithOptions(request as! QueryProduceDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryProduceListWithOptions(_ request: QueryProduceListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryProduceListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeLeft)) {
            query["CreateTimeLeft"] = request.createTimeLeft!;
        }
        if (!TeaUtils.Client.isUnset(request.createTimeRight)) {
            query["CreateTimeRight"] = request.createTimeRight!;
        }
        if (!TeaUtils.Client.isUnset(request.materialName)) {
            query["MaterialName"] = request.materialName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.tmName)) {
            query["TmName"] = request.tmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmNumber)) {
            query["TmNumber"] = request.tmNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryProduceList",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryProduceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryProduceList(_ request: QueryProduceListRequest) async throws -> QueryProduceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryProduceListWithOptions(request as! QueryProduceListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryQrCodeUploadStatusWithOptions(_ request: QueryQrCodeUploadStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryQrCodeUploadStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fieldKey)) {
            query["FieldKey"] = request.fieldKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossKey)) {
            query["OssKey"] = request.ossKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            query["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryQrCodeUploadStatus",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryQrCodeUploadStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryQrCodeUploadStatus(_ request: QueryQrCodeUploadStatusRequest) async throws -> QueryQrCodeUploadStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryQrCodeUploadStatusWithOptions(request as! QueryQrCodeUploadStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySbjRuleWithOptions(_ request: QuerySbjRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySbjRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySbjRule",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySbjRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySbjRule(_ request: QuerySbjRuleRequest) async throws -> QuerySbjRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySbjRuleWithOptions(request as! QuerySbjRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySupplementDetailWithOptions(_ request: QuerySupplementDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySupplementDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySupplementDetail",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySupplementDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySupplementDetail(_ request: QuerySupplementDetailRequest) async throws -> QuerySupplementDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySupplementDetailWithOptions(request as! QuerySupplementDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskListWithOptions(_ request: QueryTaskListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTaskListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTaskList",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTaskListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskList(_ request: QueryTaskListRequest) async throws -> QueryTaskListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTaskListWithOptions(request as! QueryTaskListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTmCollectionPageListWithOptions(_ request: QueryTmCollectionPageListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTmCollectionPageListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTmCollectionPageList",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTmCollectionPageListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTmCollectionPageList(_ request: QueryTmCollectionPageListRequest) async throws -> QueryTmCollectionPageListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTmCollectionPageListWithOptions(request as! QueryTmCollectionPageListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTmSbjProduceWithOptions(_ request: QueryTmSbjProduceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTmSbjProduceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.highPriorityBizTypeStr)) {
            query["HighPriorityBizTypeStr"] = request.highPriorityBizTypeStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.highPriorityMaterialNameStr)) {
            query["HighPriorityMaterialNameStr"] = request.highPriorityMaterialNameStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.highPriorityOrderIdStr)) {
            query["HighPriorityOrderIdStr"] = request.highPriorityOrderIdStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.highPriorityUserIdStr)) {
            query["HighPriorityUserIdStr"] = request.highPriorityUserIdStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalKey)) {
            query["PrincipalKey"] = request.principalKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.producerType)) {
            query["ProducerType"] = request.producerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryOrderPageSize)) {
            query["QueryOrderPageSize"] = request.queryOrderPageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTmSbjProduce",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTmSbjProduceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTmSbjProduce(_ request: QueryTmSbjProduceRequest) async throws -> QueryTmSbjProduceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTmSbjProduceWithOptions(request as! QueryTmSbjProduceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTmSbjProduceDetailWithOptions(_ request: QueryTmSbjProduceDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTmSbjProduceDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTmSbjProduceDetail",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTmSbjProduceDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTmSbjProduceDetail(_ request: QueryTmSbjProduceDetailRequest) async throws -> QueryTmSbjProduceDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTmSbjProduceDetailWithOptions(request as! QueryTmSbjProduceDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTradeIntentionUserListWithOptions(_ request: QueryTradeIntentionUserListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTradeIntentionUserListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.begin)) {
            query["Begin"] = request.begin!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["End"] = request.end!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTradeIntentionUserList",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTradeIntentionUserListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTradeIntentionUserList(_ request: QueryTradeIntentionUserListRequest) async throws -> QueryTradeIntentionUserListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTradeIntentionUserListWithOptions(request as! QueryTradeIntentionUserListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTradeMarkApplicationDetailWithOptions(_ request: QueryTradeMarkApplicationDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTradeMarkApplicationDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTradeMarkApplicationDetail",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTradeMarkApplicationDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTradeMarkApplicationDetail(_ request: QueryTradeMarkApplicationDetailRequest) async throws -> QueryTradeMarkApplicationDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTradeMarkApplicationDetailWithOptions(request as! QueryTradeMarkApplicationDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTradeMarkApplicationLogsWithOptions(_ request: QueryTradeMarkApplicationLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTradeMarkApplicationLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTradeMarkApplicationLogs",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTradeMarkApplicationLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTradeMarkApplicationLogs(_ request: QueryTradeMarkApplicationLogsRequest) async throws -> QueryTradeMarkApplicationLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTradeMarkApplicationLogsWithOptions(request as! QueryTradeMarkApplicationLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTradeMarkApplicationsWithOptions(_ tmpReq: QueryTradeMarkApplicationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTradeMarkApplicationsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryTradeMarkApplicationsShrinkRequest = QueryTradeMarkApplicationsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.statusList)) {
            request.statusListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.statusList, "StatusList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classificationCode)) {
            query["ClassificationCode"] = request.classificationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hidden)) {
            query["Hidden"] = request.hidden!;
        }
        if (!TeaUtils.Client.isUnset(request.intentionBizId)) {
            query["IntentionBizId"] = request.intentionBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logisticsNo)) {
            query["LogisticsNo"] = request.logisticsNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.materialName)) {
            query["MaterialName"] = request.materialName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType!;
        }
        if (!TeaUtils.Client.isUnset(request.sortFiled)) {
            query["SortFiled"] = request.sortFiled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            query["SortOrder"] = request.sortOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specification)) {
            query["Specification"] = request.specification!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.statusListShrink)) {
            query["StatusList"] = request.statusListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplementStatus)) {
            query["SupplementStatus"] = request.supplementStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.tmName)) {
            query["TmName"] = request.tmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmNumber)) {
            query["TmNumber"] = request.tmNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTradeMarkApplications",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTradeMarkApplicationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTradeMarkApplications(_ request: QueryTradeMarkApplicationsRequest) async throws -> QueryTradeMarkApplicationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTradeMarkApplicationsWithOptions(request as! QueryTradeMarkApplicationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTradeMarkApplicationsByIntentionWithOptions(_ request: QueryTradeMarkApplicationsByIntentionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTradeMarkApplicationsByIntentionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intentionBizId)) {
            query["IntentionBizId"] = request.intentionBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tmProduceStatus)) {
            query["TmProduceStatus"] = request.tmProduceStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTradeMarkApplicationsByIntention",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTradeMarkApplicationsByIntentionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTradeMarkApplicationsByIntention(_ request: QueryTradeMarkApplicationsByIntentionRequest) async throws -> QueryTradeMarkApplicationsByIntentionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTradeMarkApplicationsByIntentionWithOptions(request as! QueryTradeMarkApplicationsByIntentionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTradeProduceDetailWithOptions(_ request: QueryTradeProduceDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTradeProduceDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTradeProduceDetail",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTradeProduceDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTradeProduceDetail(_ request: QueryTradeProduceDetailRequest) async throws -> QueryTradeProduceDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTradeProduceDetailWithOptions(request as! QueryTradeProduceDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTradeProduceListWithOptions(_ request: QueryTradeProduceListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTradeProduceListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerStatus)) {
            query["BuyerStatus"] = request.buyerStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.preOrderId)) {
            query["PreOrderId"] = request.preOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registerNumber)) {
            query["RegisterNumber"] = request.registerNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortFiled)) {
            query["SortFiled"] = request.sortFiled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            query["SortOrder"] = request.sortOrder ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTradeProduceList",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTradeProduceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTradeProduceList(_ request: QueryTradeProduceListRequest) async throws -> QueryTradeProduceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTradeProduceListWithOptions(request as! QueryTradeProduceListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkDetailByApplyNumberWithOptions(_ request: QueryTrademarkDetailByApplyNumberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTrademarkDetailByApplyNumberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyNumber)) {
            query["ApplyNumber"] = request.applyNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTrademarkDetailByApplyNumber",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTrademarkDetailByApplyNumberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkDetailByApplyNumber(_ request: QueryTrademarkDetailByApplyNumberRequest) async throws -> QueryTrademarkDetailByApplyNumberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTrademarkDetailByApplyNumberWithOptions(request as! QueryTrademarkDetailByApplyNumberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkDetailByApplyNumberEspWithOptions(_ request: QueryTrademarkDetailByApplyNumberEspRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTrademarkDetailByApplyNumberEspResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyNumber)) {
            query["ApplyNumber"] = request.applyNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTrademarkDetailByApplyNumberEsp",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTrademarkDetailByApplyNumberEspResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkDetailByApplyNumberEsp(_ request: QueryTrademarkDetailByApplyNumberEspRequest) async throws -> QueryTrademarkDetailByApplyNumberEspResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTrademarkDetailByApplyNumberEspWithOptions(request as! QueryTrademarkDetailByApplyNumberEspRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkModelDetailWithOptions(_ request: QueryTrademarkModelDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTrademarkModelDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reviewSupplementMaterial)) {
            query["ReviewSupplementMaterial"] = request.reviewSupplementMaterial!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTrademarkModelDetail",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTrademarkModelDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkModelDetail(_ request: QueryTrademarkModelDetailRequest) async throws -> QueryTrademarkModelDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTrademarkModelDetailWithOptions(request as! QueryTrademarkModelDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkModelEspDetailWithOptions(_ request: QueryTrademarkModelEspDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTrademarkModelEspDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTrademarkModelEspDetail",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTrademarkModelEspDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkModelEspDetail(_ request: QueryTrademarkModelEspDetailRequest) async throws -> QueryTrademarkModelEspDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTrademarkModelEspDetailWithOptions(request as! QueryTrademarkModelEspDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkModelEspListWithOptions(_ tmpReq: QueryTrademarkModelEspListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTrademarkModelEspListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryTrademarkModelEspListShrinkRequest = QueryTrademarkModelEspListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.existStatus)) {
            request.existStatusShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.existStatus, "ExistStatus", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.additionalSubmitStatus)) {
            query["AdditionalSubmitStatus"] = request.additionalSubmitStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.additionalSubmitTime)) {
            query["AdditionalSubmitTime"] = request.additionalSubmitTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.existStatusShrink)) {
            query["ExistStatus"] = request.existStatusShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderIdsStr)) {
            query["OrderIdsStr"] = request.orderIdsStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderInstanceId)) {
            query["OrderInstanceId"] = request.orderInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.principalKey)) {
            query["PrincipalKey"] = request.principalKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.submitStatus)) {
            query["SubmitStatus"] = request.submitStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.submitTime)) {
            query["SubmitTime"] = request.submitTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTrademarkModelEspList",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTrademarkModelEspListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkModelEspList(_ request: QueryTrademarkModelEspListRequest) async throws -> QueryTrademarkModelEspListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTrademarkModelEspListWithOptions(request as! QueryTrademarkModelEspListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkModelListWithOptions(_ request: QueryTrademarkModelListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTrademarkModelListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.env)) {
            query["Env"] = request.env ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderIdsStr)) {
            query["OrderIdsStr"] = request.orderIdsStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.principalKey)) {
            query["PrincipalKey"] = request.principalKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.produceTypesStr)) {
            query["ProduceTypesStr"] = request.produceTypesStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.submitStart)) {
            query["SubmitStart"] = request.submitStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.submitStatus)) {
            query["SubmitStatus"] = request.submitStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.submitTime)) {
            query["SubmitTime"] = request.submitTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTrademarkModelList",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTrademarkModelListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkModelList(_ request: QueryTrademarkModelListRequest) async throws -> QueryTrademarkModelListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTrademarkModelListWithOptions(request as! QueryTrademarkModelListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkMonitorResultsWithOptions(_ request: QueryTrademarkMonitorResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTrademarkMonitorResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionType)) {
            query["ActionType"] = request.actionType!;
        }
        if (!TeaUtils.Client.isUnset(request.applyYear)) {
            query["ApplyYear"] = request.applyYear ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classification)) {
            query["Classification"] = request.classification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.procedureStatus)) {
            query["ProcedureStatus"] = request.procedureStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.registrationNumber)) {
            query["RegistrationNumber"] = request.registrationNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.tmName)) {
            query["TmName"] = request.tmName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTrademarkMonitorResults",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTrademarkMonitorResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkMonitorResults(_ request: QueryTrademarkMonitorResultsRequest) async throws -> QueryTrademarkMonitorResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTrademarkMonitorResultsWithOptions(request as! QueryTrademarkMonitorResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkMonitorRulesWithOptions(_ request: QueryTrademarkMonitorRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTrademarkMonitorRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyUpdate)) {
            query["NotifyUpdate"] = request.notifyUpdate!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTrademarkMonitorRules",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTrademarkMonitorRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkMonitorRules(_ request: QueryTrademarkMonitorRulesRequest) async throws -> QueryTrademarkMonitorRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTrademarkMonitorRulesWithOptions(request as! QueryTrademarkMonitorRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkOnSaleWithOptions(_ request: QueryTrademarkOnSaleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTrademarkOnSaleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.classification)) {
            query["Classification"] = request.classification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.registerCode)) {
            query["RegisterCode"] = request.registerCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registerNumber)) {
            query["RegisterNumber"] = request.registerNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmType)) {
            query["TmType"] = request.tmType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTrademarkOnSale",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTrademarkOnSaleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkOnSale(_ request: QueryTrademarkOnSaleRequest) async throws -> QueryTrademarkOnSaleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTrademarkOnSaleWithOptions(request as! QueryTrademarkOnSaleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkPriceWithOptions(_ tmpReq: QueryTrademarkPriceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTrademarkPriceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryTrademarkPriceShrinkRequest = QueryTrademarkPriceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.orderData)) {
            request.orderDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.orderData, "OrderData", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderDataShrink)) {
            query["OrderData"] = request.orderDataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmIcon)) {
            query["TmIcon"] = request.tmIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmName)) {
            query["TmName"] = request.tmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTrademarkPrice",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTrademarkPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkPrice(_ request: QueryTrademarkPriceRequest) async throws -> QueryTrademarkPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTrademarkPriceWithOptions(request as! QueryTrademarkPriceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkUploadAuditResultWithOptions(_ request: QueryTrademarkUploadAuditResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTrademarkUploadAuditResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.classification)) {
            query["Classification"] = request.classification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.registerCode)) {
            query["RegisterCode"] = request.registerCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registerNumber)) {
            query["RegisterNumber"] = request.registerNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmType)) {
            query["TmType"] = request.tmType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTrademarkUploadAuditResult",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTrademarkUploadAuditResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTrademarkUploadAuditResult(_ request: QueryTrademarkUploadAuditResultRequest) async throws -> QueryTrademarkUploadAuditResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTrademarkUploadAuditResultWithOptions(request as! QueryTrademarkUploadAuditResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recordBankBalanceWithOptions(_ request: RecordBankBalanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecordBankBalanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionDate)) {
            query["ActionDate"] = request.actionDate!;
        }
        if (!TeaUtils.Client.isUnset(request.balance)) {
            query["Balance"] = request.balance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecordBankBalance",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecordBankBalanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recordBankBalance(_ request: RecordBankBalanceRequest) async throws -> RecordBankBalanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recordBankBalanceWithOptions(request as! RecordBankBalanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundProduceWithOptions(_ request: RefundProduceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefundProduceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refundType)) {
            query["RefundType"] = request.refundType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefundProduce",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefundProduceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundProduce(_ request: RefundProduceRequest) async throws -> RefundProduceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refundProduceWithOptions(request as! RefundProduceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refuseAdditionalMaterialWithOptions(_ request: RefuseAdditionalMaterialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefuseAdditionalMaterialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            query["Note"] = request.note ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefuseAdditionalMaterial",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefuseAdditionalMaterialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refuseAdditionalMaterial(_ request: RefuseAdditionalMaterialRequest) async throws -> RefuseAdditionalMaterialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refuseAdditionalMaterialWithOptions(request as! RefuseAdditionalMaterialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refuseApplicantWithOptions(_ request: RefuseApplicantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefuseApplicantResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            query["Note"] = request.note ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefuseApplicant",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefuseApplicantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refuseApplicant(_ request: RefuseApplicantRequest) async throws -> RefuseApplicantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refuseApplicantWithOptions(request as! RefuseApplicantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rejectApplicantWithOptions(_ request: RejectApplicantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RejectApplicantResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            query["Note"] = request.note ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RejectApplicant",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RejectApplicantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rejectApplicant(_ request: RejectApplicantRequest) async throws -> RejectApplicantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rejectApplicantWithOptions(request as! RejectApplicantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveClassificationConditionsWithOptions(_ request: SaveClassificationConditionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveClassificationConditionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.condition)) {
            query["Condition"] = request.condition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveClassificationConditions",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveClassificationConditionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveClassificationConditions(_ request: SaveClassificationConditionsRequest) async throws -> SaveClassificationConditionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveClassificationConditionsWithOptions(request as! SaveClassificationConditionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveExtensionAttributeWithOptions(_ request: SaveExtensionAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveExtensionAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attributeKey)) {
            query["AttributeKey"] = request.attributeKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attributeValue)) {
            query["AttributeValue"] = request.attributeValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveExtensionAttribute",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveExtensionAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveExtensionAttribute(_ request: SaveExtensionAttributeRequest) async throws -> SaveExtensionAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveExtensionAttributeWithOptions(request as! SaveExtensionAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskWithOptions(_ request: SaveTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.request)) {
            query["Request"] = request.request ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveTask",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTask(_ request: SaveTaskRequest) async throws -> SaveTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveTaskWithOptions(request as! SaveTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForOfficialFileCustomWithOptions(_ request: SaveTaskForOfficialFileCustomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveTaskForOfficialFileCustomResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endAcceptTime)) {
            query["EndAcceptTime"] = request.endAcceptTime!;
        }
        if (!TeaUtils.Client.isUnset(request.startAcceptTime)) {
            query["StartAcceptTime"] = request.startAcceptTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveTaskForOfficialFileCustom",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveTaskForOfficialFileCustomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForOfficialFileCustom(_ request: SaveTaskForOfficialFileCustomRequest) async throws -> SaveTaskForOfficialFileCustomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveTaskForOfficialFileCustomWithOptions(request as! SaveTaskForOfficialFileCustomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTradeMarkReviewMaterialDetailWithOptions(_ tmpReq: SaveTradeMarkReviewMaterialDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveTradeMarkReviewMaterialDetailResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SaveTradeMarkReviewMaterialDetailShrinkRequest = SaveTradeMarkReviewMaterialDetailShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.additionalOssKeyList)) {
            request.additionalOssKeyListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.additionalOssKeyList, "AdditionalOssKeyList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.additionalOssKeyListShrink)) {
            body["AdditionalOssKeyList"] = request.additionalOssKeyListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.address)) {
            body["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicationOssKey)) {
            body["ApplicationOssKey"] = request.applicationOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessLicenceOssKey)) {
            body["BusinessLicenceOssKey"] = request.businessLicenceOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cardNumber)) {
            body["CardNumber"] = request.cardNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeName)) {
            body["ChangeName"] = request.changeName!;
        }
        if (!TeaUtils.Client.isUnset(request.contactAddress)) {
            body["ContactAddress"] = request.contactAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactEmail)) {
            body["ContactEmail"] = request.contactEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            body["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactNumber)) {
            body["ContactNumber"] = request.contactNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            body["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engAddress)) {
            body["EngAddress"] = request.engAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engName)) {
            body["EngName"] = request.engName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardOssKey)) {
            body["IdCardOssKey"] = request.idCardOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalNoticeOssKey)) {
            body["LegalNoticeOssKey"] = request.legalNoticeOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loaOssKey)) {
            body["LoaOssKey"] = request.loaOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passportOssKey)) {
            body["PassportOssKey"] = request.passportOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            body["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["Region"] = request.region!;
        }
        if (!TeaUtils.Client.isUnset(request.reviewMaterialAdditionalJson)) {
            body["ReviewMaterialAdditionalJson"] = request.reviewMaterialAdditionalJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.separate)) {
            body["Separate"] = request.separate!;
        }
        if (!TeaUtils.Client.isUnset(request.submitOnline)) {
            body["SubmitOnline"] = request.submitOnline!;
        }
        if (!TeaUtils.Client.isUnset(request.submitType)) {
            body["SubmitType"] = request.submitType!;
        }
        if (!TeaUtils.Client.isUnset(request.supplementFlag)) {
            body["SupplementFlag"] = request.supplementFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveTradeMarkReviewMaterialDetail",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveTradeMarkReviewMaterialDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTradeMarkReviewMaterialDetail(_ request: SaveTradeMarkReviewMaterialDetailRequest) async throws -> SaveTradeMarkReviewMaterialDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveTradeMarkReviewMaterialDetailWithOptions(request as! SaveTradeMarkReviewMaterialDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sbjOperateWithOptions(_ request: SbjOperateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SbjOperateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applyNo)) {
            query["ApplyNo"] = request.applyNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.auditStatus)) {
            query["AuditStatus"] = request.auditStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileDate)) {
            query["FileDate"] = request.fileDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileOssKey)) {
            query["FileOssKey"] = request.fileOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.message)) {
            query["Message"] = request.message ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderNo)) {
            query["OrderNo"] = request.orderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.receiptOssKey)) {
            query["ReceiptOssKey"] = request.receiptOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.submittedSuccess)) {
            query["SubmittedSuccess"] = request.submittedSuccess!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SbjOperate",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SbjOperateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sbjOperate(_ request: SbjOperateRequest) async throws -> SbjOperateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sbjOperateWithOptions(request as! SbjOperateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sbjOperateNewWithOptions(_ request: SbjOperateNewRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SbjOperateNewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addSubmitCount)) {
            query["AddSubmitCount"] = request.addSubmitCount!;
        }
        if (!TeaUtils.Client.isUnset(request.allowResubmit)) {
            query["AllowResubmit"] = request.allowResubmit!;
        }
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applyNo)) {
            query["ApplyNo"] = request.applyNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.auditStatus)) {
            query["AuditStatus"] = request.auditStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeStatus)) {
            query["ChangeStatus"] = request.changeStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.errorMsgScreenshot)) {
            query["ErrorMsgScreenshot"] = request.errorMsgScreenshot ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileDate)) {
            query["FileDate"] = request.fileDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileOssKey)) {
            query["FileOssKey"] = request.fileOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.message)) {
            query["Message"] = request.message ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderNo)) {
            query["OrderNo"] = request.orderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.receiptOssKey)) {
            query["ReceiptOssKey"] = request.receiptOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.submittedSuccess)) {
            query["SubmittedSuccess"] = request.submittedSuccess!;
        }
        if (!TeaUtils.Client.isUnset(request.successType)) {
            query["SuccessType"] = request.successType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SbjOperateNew",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SbjOperateNewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sbjOperateNew(_ request: SbjOperateNewRequest) async throws -> SbjOperateNewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sbjOperateNewWithOptions(request as! SbjOperateNewRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sbrainServiceExecuteWithOptions(_ tmpReq: SbrainServiceExecuteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SbrainServiceExecuteResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SbrainServiceExecuteShrinkRequest = SbrainServiceExecuteShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.executeParams)) {
            request.executeParamsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.executeParams, "ExecuteParams", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.executeParamsShrink)) {
            query["ExecuteParams"] = request.executeParamsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referenceNo)) {
            query["ReferenceNo"] = request.referenceNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referenceType)) {
            query["ReferenceType"] = request.referenceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneCode)) {
            query["SceneCode"] = request.sceneCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemeId)) {
            query["SchemeId"] = request.schemeId!;
        }
        if (!TeaUtils.Client.isUnset(request.servicePlace)) {
            query["ServicePlace"] = request.servicePlace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SbrainServiceExecute",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SbrainServiceExecuteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sbrainServiceExecute(_ request: SbrainServiceExecuteRequest) async throws -> SbrainServiceExecuteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sbrainServiceExecuteWithOptions(request as! SbrainServiceExecuteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sbrainServiceHasRunningTaskBatchQueryWithOptions(_ tmpReq: SbrainServiceHasRunningTaskBatchQueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SbrainServiceHasRunningTaskBatchQueryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SbrainServiceHasRunningTaskBatchQueryShrinkRequest = SbrainServiceHasRunningTaskBatchQueryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.referenceNos)) {
            request.referenceNosShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.referenceNos, "ReferenceNos", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referenceNosShrink)) {
            query["ReferenceNos"] = request.referenceNosShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referenceType)) {
            query["ReferenceType"] = request.referenceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SbrainServiceHasRunningTaskBatchQuery",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SbrainServiceHasRunningTaskBatchQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sbrainServiceHasRunningTaskBatchQuery(_ request: SbrainServiceHasRunningTaskBatchQueryRequest) async throws -> SbrainServiceHasRunningTaskBatchQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sbrainServiceHasRunningTaskBatchQueryWithOptions(request as! SbrainServiceHasRunningTaskBatchQueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sbrainServiceSchemeMatchWithOptions(_ tmpReq: SbrainServiceSchemeMatchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SbrainServiceSchemeMatchResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SbrainServiceSchemeMatchShrinkRequest = SbrainServiceSchemeMatchShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.matchParams)) {
            request.matchParamsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.matchParams, "MatchParams", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.matchParamsShrink)) {
            query["MatchParams"] = request.matchParamsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referenceNo)) {
            query["ReferenceNo"] = request.referenceNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referenceType)) {
            query["ReferenceType"] = request.referenceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneCode)) {
            query["SceneCode"] = request.sceneCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SbrainServiceSchemeMatch",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SbrainServiceSchemeMatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sbrainServiceSchemeMatch(_ request: SbrainServiceSchemeMatchRequest) async throws -> SbrainServiceSchemeMatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sbrainServiceSchemeMatchWithOptions(request as! SbrainServiceSchemeMatchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchTmOnsalesWithOptions(_ request: SearchTmOnsalesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchTmOnsalesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.classification)) {
            query["Classification"] = request.classification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderPriceLeft)) {
            query["OrderPriceLeft"] = request.orderPriceLeft!;
        }
        if (!TeaUtils.Client.isUnset(request.orderPriceRight)) {
            query["OrderPriceRight"] = request.orderPriceRight!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryAll)) {
            query["QueryAll"] = request.queryAll!;
        }
        if (!TeaUtils.Client.isUnset(request.regLeft)) {
            query["RegLeft"] = request.regLeft!;
        }
        if (!TeaUtils.Client.isUnset(request.regRight)) {
            query["RegRight"] = request.regRight!;
        }
        if (!TeaUtils.Client.isUnset(request.registerNumber)) {
            query["RegisterNumber"] = request.registerNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortName)) {
            query["SortName"] = request.sortName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            query["SortOrder"] = request.sortOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmName)) {
            query["TmName"] = request.tmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topSearch)) {
            query["TopSearch"] = request.topSearch ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchTmOnsales",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchTmOnsalesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchTmOnsales(_ request: SearchTmOnsalesRequest) async throws -> SearchTmOnsalesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchTmOnsalesWithOptions(request as! SearchTmOnsalesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startNotaryWithOptions(_ request: StartNotaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartNotaryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.notaryOrderId)) {
            query["NotaryOrderId"] = request.notaryOrderId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartNotary",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartNotaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startNotary(_ request: StartNotaryRequest) async throws -> StartNotaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startNotaryWithOptions(request as! StartNotaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func storeMaterialTemporarilyWithOptions(_ request: StoreMaterialTemporarilyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StoreMaterialTemporarilyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessLicenceOssKey)) {
            query["BusinessLicenceOssKey"] = request.businessLicenceOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cardNumber)) {
            query["CardNumber"] = request.cardNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactAddress)) {
            query["ContactAddress"] = request.contactAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactCity)) {
            query["ContactCity"] = request.contactCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactCounty)) {
            query["ContactCounty"] = request.contactCounty ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactDistrict)) {
            query["ContactDistrict"] = request.contactDistrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactEmail)) {
            query["ContactEmail"] = request.contactEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            query["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactNumber)) {
            query["ContactNumber"] = request.contactNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactProvince)) {
            query["ContactProvince"] = request.contactProvince ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactZipcode)) {
            query["ContactZipcode"] = request.contactZipcode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.EAddress)) {
            query["EAddress"] = request.EAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.EName)) {
            query["EName"] = request.EName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardName)) {
            query["IdCardName"] = request.idCardName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardNumber)) {
            query["IdCardNumber"] = request.idCardNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardOssKey)) {
            query["IdCardOssKey"] = request.idCardOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalNoticeOssKey)) {
            query["LegalNoticeOssKey"] = request.legalNoticeOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loaOssKey)) {
            query["LoaOssKey"] = request.loaOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passportOssKey)) {
            query["PassportOssKey"] = request.passportOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personalType)) {
            query["PersonalType"] = request.personalType!;
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName!;
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            query["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.town)) {
            query["Town"] = request.town ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StoreMaterialTemporarily",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StoreMaterialTemporarilyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func storeMaterialTemporarily(_ request: StoreMaterialTemporarilyRequest) async throws -> StoreMaterialTemporarilyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await storeMaterialTemporarilyWithOptions(request as! StoreMaterialTemporarilyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSupplementWithOptions(_ tmpReq: SubmitSupplementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitSupplementResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitSupplementShrinkRequest = SubmitSupplementShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.uploadOssKeyList)) {
            request.uploadOssKeyListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.uploadOssKeyList, "UploadOssKeyList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uploadOssKeyListShrink)) {
            query["UploadOssKeyList"] = request.uploadOssKeyListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitSupplement",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitSupplementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSupplement(_ request: SubmitSupplementRequest) async throws -> SubmitSupplementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitSupplementWithOptions(request as! SubmitSupplementRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitTrademarkApplicationComplaintWithOptions(_ tmpReq: SubmitTrademarkApplicationComplaintRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitTrademarkApplicationComplaintResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitTrademarkApplicationComplaintShrinkRequest = SubmitTrademarkApplicationComplaintShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.files)) {
            request.filesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.files, "Files", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filesShrink)) {
            query["Files"] = request.filesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitTrademarkApplicationComplaint",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitTrademarkApplicationComplaintResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitTrademarkApplicationComplaint(_ request: SubmitTrademarkApplicationComplaintRequest) async throws -> SubmitTrademarkApplicationComplaintResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitTrademarkApplicationComplaintWithOptions(request as! SubmitTrademarkApplicationComplaintRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncTrademarkWithOptions(_ request: SyncTrademarkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncTrademarkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            query["BeginTime"] = request.beginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.classificationCode)) {
            query["ClassificationCode"] = request.classificationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.label)) {
            query["Label"] = request.label ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalPrice)) {
            query["OriginalPrice"] = request.originalPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerEnName)) {
            query["OwnerEnName"] = request.ownerEnName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerName)) {
            query["OwnerName"] = request.ownerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            query["Reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regAnnDate)) {
            query["RegAnnDate"] = request.regAnnDate!;
        }
        if (!TeaUtils.Client.isUnset(request.secondaryClassification)) {
            query["SecondaryClassification"] = request.secondaryClassification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdClassification)) {
            query["ThirdClassification"] = request.thirdClassification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmIcon)) {
            query["TmIcon"] = request.tmIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmName)) {
            query["TmName"] = request.tmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmNumber)) {
            query["TmNumber"] = request.tmNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncTrademark",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncTrademarkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncTrademark(_ request: SyncTrademarkRequest) async throws -> SyncTrademarkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await syncTrademarkWithOptions(request as! SyncTrademarkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicantContacterWithOptions(_ request: UpdateApplicantContacterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateApplicantContacterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicantId)) {
            query["ApplicantId"] = request.applicantId!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactAddress)) {
            query["ContactAddress"] = request.contactAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactCity)) {
            query["ContactCity"] = request.contactCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactDistrict)) {
            query["ContactDistrict"] = request.contactDistrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactEmail)) {
            query["ContactEmail"] = request.contactEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            query["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactNumber)) {
            query["ContactNumber"] = request.contactNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactProvince)) {
            query["ContactProvince"] = request.contactProvince ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactZipCode)) {
            query["ContactZipCode"] = request.contactZipCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApplicantContacter",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateApplicantContacterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicantContacter(_ request: UpdateApplicantContacterRequest) async throws -> UpdateApplicantContacterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateApplicantContacterWithOptions(request as! UpdateApplicantContacterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMaterialWithOptions(_ request: UpdateMaterialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMaterialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessLicenceOssKey)) {
            query["BusinessLicenceOssKey"] = request.businessLicenceOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cardNumber)) {
            query["CardNumber"] = request.cardNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactAddress)) {
            query["ContactAddress"] = request.contactAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactCity)) {
            query["ContactCity"] = request.contactCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactCounty)) {
            query["ContactCounty"] = request.contactCounty ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactDistrict)) {
            query["ContactDistrict"] = request.contactDistrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactEmail)) {
            query["ContactEmail"] = request.contactEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            query["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactNumber)) {
            query["ContactNumber"] = request.contactNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactProvince)) {
            query["ContactProvince"] = request.contactProvince ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactZipcode)) {
            query["ContactZipcode"] = request.contactZipcode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.EAddress)) {
            query["EAddress"] = request.EAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.EName)) {
            query["EName"] = request.EName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.idCardName)) {
            query["IdCardName"] = request.idCardName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardNumber)) {
            query["IdCardNumber"] = request.idCardNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardOssKey)) {
            query["IdCardOssKey"] = request.idCardOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalNoticeOssKey)) {
            query["LegalNoticeOssKey"] = request.legalNoticeOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loaId)) {
            query["LoaId"] = request.loaId!;
        }
        if (!TeaUtils.Client.isUnset(request.loaOssKey)) {
            query["LoaOssKey"] = request.loaOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passportOssKey)) {
            query["PassportOssKey"] = request.passportOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personalType)) {
            query["PersonalType"] = request.personalType!;
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            query["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.town)) {
            query["Town"] = request.town ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMaterial",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMaterialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMaterial(_ request: UpdateMaterialRequest) async throws -> UpdateMaterialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateMaterialWithOptions(request as! UpdateMaterialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProduceWithOptions(_ request: UpdateProduceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProduceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extMap)) {
            query["ExtMap"] = request.extMap ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProduce",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProduceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProduce(_ request: UpdateProduceRequest) async throws -> UpdateProduceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateProduceWithOptions(request as! UpdateProduceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProduceLoaIdWithOptions(_ request: UpdateProduceLoaIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProduceLoaIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loaOssKey)) {
            body["LoaOssKey"] = request.loaOssKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProduceLoaId",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProduceLoaIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProduceLoaId(_ request: UpdateProduceLoaIdRequest) async throws -> UpdateProduceLoaIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateProduceLoaIdWithOptions(request as! UpdateProduceLoaIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSendMaterialNumWithOptions(_ request: UpdateSendMaterialNumRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSendMaterialNumResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.num)) {
            query["Num"] = request.num ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSendMaterialNum",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSendMaterialNumResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSendMaterialNum(_ request: UpdateSendMaterialNumRequest) async throws -> UpdateSendMaterialNumResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSendMaterialNumWithOptions(request as! UpdateSendMaterialNumRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrademarkNameWithOptions(_ request: UpdateTrademarkNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTrademarkNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmComment)) {
            body["TmComment"] = request.tmComment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmIcon)) {
            body["TmIcon"] = request.tmIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmName)) {
            body["TmName"] = request.tmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTrademarkName",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTrademarkNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrademarkName(_ request: UpdateTrademarkNameRequest) async throws -> UpdateTrademarkNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTrademarkNameWithOptions(request as! UpdateTrademarkNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrademarkOnsaleWithOptions(_ request: UpdateTrademarkOnsaleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTrademarkOnsaleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            query["BeginTime"] = request.beginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.classificationCode)) {
            query["ClassificationCode"] = request.classificationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.label)) {
            query["Label"] = request.label ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalPrice)) {
            query["OriginalPrice"] = request.originalPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerEnName)) {
            query["OwnerEnName"] = request.ownerEnName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerName)) {
            query["OwnerName"] = request.ownerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            query["Reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regAnnDate)) {
            query["RegAnnDate"] = request.regAnnDate!;
        }
        if (!TeaUtils.Client.isUnset(request.secondaryClassification)) {
            query["SecondaryClassification"] = request.secondaryClassification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdClassification)) {
            query["ThirdClassification"] = request.thirdClassification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmIcon)) {
            query["TmIcon"] = request.tmIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmName)) {
            query["TmName"] = request.tmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmNumber)) {
            query["TmNumber"] = request.tmNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmType)) {
            query["TmType"] = request.tmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tradeTmDetailJson)) {
            query["TradeTmDetailJson"] = request.tradeTmDetailJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTrademarkOnsale",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTrademarkOnsaleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrademarkOnsale(_ request: UpdateTrademarkOnsaleRequest) async throws -> UpdateTrademarkOnsaleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTrademarkOnsaleWithOptions(request as! UpdateTrademarkOnsaleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadNotaryDataWithOptions(_ request: UploadNotaryDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadNotaryDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizOrderNo)) {
            query["BizOrderNo"] = request.bizOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notaryType)) {
            query["NotaryType"] = request.notaryType!;
        }
        if (!TeaUtils.Client.isUnset(request.uploadContext)) {
            query["UploadContext"] = request.uploadContext ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadNotaryData",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadNotaryDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadNotaryData(_ request: UploadNotaryDataRequest) async throws -> UploadNotaryDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadNotaryDataWithOptions(request as! UploadNotaryDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadTrademarkOnSaleWithOptions(_ request: UploadTrademarkOnSaleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadTrademarkOnSaleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            query["BeginTime"] = request.beginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.classificationCode)) {
            query["ClassificationCode"] = request.classificationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.label)) {
            query["Label"] = request.label ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalPrice)) {
            query["OriginalPrice"] = request.originalPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerEnName)) {
            query["OwnerEnName"] = request.ownerEnName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerName)) {
            query["OwnerName"] = request.ownerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            query["Reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regAnnDate)) {
            query["RegAnnDate"] = request.regAnnDate!;
        }
        if (!TeaUtils.Client.isUnset(request.secondaryClassification)) {
            query["SecondaryClassification"] = request.secondaryClassification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdClassification)) {
            query["ThirdClassification"] = request.thirdClassification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmIcon)) {
            query["TmIcon"] = request.tmIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmName)) {
            query["TmName"] = request.tmName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmNumber)) {
            query["TmNumber"] = request.tmNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tmType)) {
            query["TmType"] = request.tmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tradeTmDetailJson)) {
            query["TradeTmDetailJson"] = request.tradeTmDetailJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadTrademarkOnSale",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadTrademarkOnSaleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadTrademarkOnSale(_ request: UploadTrademarkOnSaleRequest) async throws -> UploadTrademarkOnSaleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadTrademarkOnSaleWithOptions(request as! UploadTrademarkOnSaleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func writeCommunicationLogWithOptions(_ request: WriteCommunicationLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> WriteCommunicationLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            query["Note"] = request.note ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetId)) {
            query["TargetId"] = request.targetId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "WriteCommunicationLog",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(WriteCommunicationLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func writeCommunicationLog(_ request: WriteCommunicationLogRequest) async throws -> WriteCommunicationLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await writeCommunicationLogWithOptions(request as! WriteCommunicationLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func writeIntentionCommunicationLogWithOptions(_ request: WriteIntentionCommunicationLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> WriteIntentionCommunicationLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            query["Note"] = request.note ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reject)) {
            query["Reject"] = request.reject!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "WriteIntentionCommunicationLog",
            "version": "2018-07-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(WriteIntentionCommunicationLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func writeIntentionCommunicationLog(_ request: WriteIntentionCommunicationLogRequest) async throws -> WriteIntentionCommunicationLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await writeIntentionCommunicationLogWithOptions(request as! WriteIntentionCommunicationLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
