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
    public func bindApplicantWithOptions(_ request: BindApplicantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindApplicantResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicantId)) {
            query["ApplicantId"] = request.applicantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizationOssKey)) {
            query["AuthorizationOssKey"] = request.authorizationOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindApplicant",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindApplicantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindApplicant(_ request: BindApplicantRequest) async throws -> BindApplicantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindApplicantWithOptions(request as! BindApplicantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOrderWithOptions(_ request: CancelOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelOrder",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOrder(_ request: CancelOrderRequest) async throws -> CancelOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelOrderWithOptions(request as! CancelOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkAuthorizationLetterWithOptions(_ request: CheckAuthorizationLetterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckAuthorizationLetterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicantType)) {
            query["ApplicantType"] = request.applicantType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.color)) {
            query["Color"] = request.color ?? "";
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
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckAuthorizationLetter",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckAuthorizationLetterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkAuthorizationLetter(_ request: CheckAuthorizationLetterRequest) async throws -> CheckAuthorizationLetterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkAuthorizationLetterWithOptions(request as! CheckAuthorizationLetterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkBizAvailableWithOptions(_ request: CheckBizAvailableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckBizAvailableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.biz)) {
            query["Biz"] = request.biz ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            query["Scene"] = request.scene ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckBizAvailable",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckBizAvailableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkBizAvailable(_ request: CheckBizAvailableRequest) async throws -> CheckBizAvailableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkBizAvailableWithOptions(request as! CheckBizAvailableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDuplicateApplicantRiskWithOptions(_ request: CheckDuplicateApplicantRiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckDuplicateApplicantRiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicantName)) {
            query["ApplicantName"] = request.applicantName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventSceneType)) {
            query["EventSceneType"] = request.eventSceneType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckDuplicateApplicantRisk",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckDuplicateApplicantRiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDuplicateApplicantRisk(_ request: CheckDuplicateApplicantRiskRequest) async throws -> CheckDuplicateApplicantRiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkDuplicateApplicantRiskWithOptions(request as! CheckDuplicateApplicantRiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDuplicateClassificationWithOptions(_ request: CheckDuplicateClassificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckDuplicateClassificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.classification)) {
            query["Classification"] = request.classification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventSceneType)) {
            query["EventSceneType"] = request.eventSceneType!;
        }
        if (!TeaUtils.Client.isUnset(request.trademarkName)) {
            query["TrademarkName"] = request.trademarkName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckDuplicateClassification",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckDuplicateClassificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDuplicateClassification(_ request: CheckDuplicateClassificationRequest) async throws -> CheckDuplicateClassificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkDuplicateClassificationWithOptions(request as! CheckDuplicateClassificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDuplicateTrademarkWithOptions(_ request: CheckDuplicateTrademarkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckDuplicateTrademarkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.classification)) {
            query["Classification"] = request.classification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventSceneType)) {
            query["EventSceneType"] = request.eventSceneType!;
        }
        if (!TeaUtils.Client.isUnset(request.materialName)) {
            query["MaterialName"] = request.materialName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkName)) {
            query["TrademarkName"] = request.trademarkName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckDuplicateTrademark",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckDuplicateTrademarkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDuplicateTrademark(_ request: CheckDuplicateTrademarkRequest) async throws -> CheckDuplicateTrademarkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkDuplicateTrademarkWithOptions(request as! CheckDuplicateTrademarkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkMaterialValidityWithOptions(_ request: CheckMaterialValidityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckMaterialValidityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessLicenseOssKey)) {
            query["BusinessLicenseOssKey"] = request.businessLicenseOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cardNumber)) {
            query["CardNumber"] = request.cardNumber ?? "";
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
        if (!TeaUtils.Client.isUnset(request.materialId)) {
            query["MaterialId"] = request.materialId!;
        }
        if (!TeaUtils.Client.isUnset(request.materialRegion)) {
            query["MaterialRegion"] = request.materialRegion!;
        }
        if (!TeaUtils.Client.isUnset(request.materialType)) {
            query["MaterialType"] = request.materialType!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personalType)) {
            query["PersonalType"] = request.personalType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckMaterialValidity",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckMaterialValidityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkMaterialValidity(_ request: CheckMaterialValidityRequest) async throws -> CheckMaterialValidityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkMaterialValidityWithOptions(request as! CheckMaterialValidityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkTrademarkNameWithOptions(_ request: CheckTrademarkNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckTrademarkNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventSceneType)) {
            query["EventSceneType"] = request.eventSceneType!;
        }
        if (!TeaUtils.Client.isUnset(request.trademarkName)) {
            query["TrademarkName"] = request.trademarkName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckTrademarkName",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckTrademarkNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkTrademarkName(_ request: CheckTrademarkNameRequest) async throws -> CheckTrademarkNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkTrademarkNameWithOptions(request as! CheckTrademarkNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func closeTrademarkApplicationWithOptions(_ request: CloseTrademarkApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloseTrademarkApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloseTrademarkApplication",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloseTrademarkApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func closeTrademarkApplication(_ request: CloseTrademarkApplicationRequest) async throws -> CloseTrademarkApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await closeTrademarkApplicationWithOptions(request as! CloseTrademarkApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func combineAuthorizationLetterWithOptions(_ request: CombineAuthorizationLetterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CombineAuthorizationLetterResponse {
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
            "action": "CombineAuthorizationLetter",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CombineAuthorizationLetterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func combineAuthorizationLetter(_ request: CombineAuthorizationLetterRequest) async throws -> CombineAuthorizationLetterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await combineAuthorizationLetterWithOptions(request as! CombineAuthorizationLetterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func complementTrademarkApplicationWithOptions(_ request: ComplementTrademarkApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ComplementTrademarkApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agreementId)) {
            query["AgreementId"] = request.agreementId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizationOssKey)) {
            query["AuthorizationOssKey"] = request.authorizationOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isBlackIcon)) {
            query["IsBlackIcon"] = request.isBlackIcon!;
        }
        if (!TeaUtils.Client.isUnset(request.materialId)) {
            query["MaterialId"] = request.materialId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderData)) {
            query["OrderData"] = request.orderData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkComment)) {
            query["TrademarkComment"] = request.trademarkComment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkIconOssKey)) {
            query["TrademarkIconOssKey"] = request.trademarkIconOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkName)) {
            query["TrademarkName"] = request.trademarkName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkNameType)) {
            query["TrademarkNameType"] = request.trademarkNameType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkType)) {
            query["TrademarkType"] = request.trademarkType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ComplementTrademarkApplication",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ComplementTrademarkApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func complementTrademarkApplication(_ request: ComplementTrademarkApplicationRequest) async throws -> ComplementTrademarkApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await complementTrademarkApplicationWithOptions(request as! ComplementTrademarkApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmExpertSolutionWithOptions(_ request: ConfirmExpertSolutionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmExpertSolutionResponse {
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
            "action": "ConfirmExpertSolution",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmExpertSolutionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmExpertSolution(_ request: ConfirmExpertSolutionRequest) async throws -> ConfirmExpertSolutionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await confirmExpertSolutionWithOptions(request as! ConfirmExpertSolutionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApplicantWithOptions(_ request: CreateApplicantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApplicantResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicantName)) {
            query["ApplicantName"] = request.applicantName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicantRegion)) {
            query["ApplicantRegion"] = request.applicantRegion!;
        }
        if (!TeaUtils.Client.isUnset(request.applicantType)) {
            query["ApplicantType"] = request.applicantType!;
        }
        if (!TeaUtils.Client.isUnset(request.authorizationOssKey)) {
            query["AuthorizationOssKey"] = request.authorizationOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessLicenceOssKey)) {
            query["BusinessLicenceOssKey"] = request.businessLicenceOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cardNumber)) {
            query["CardNumber"] = request.cardNumber ?? "";
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApplicant",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApplicantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApplicant(_ request: CreateApplicantRequest) async throws -> CreateApplicantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApplicantWithOptions(request as! CreateApplicantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCommodityOrderWithOptions(_ tmpReq: CreateCommodityOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCommodityOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateCommodityOrderShrinkRequest = CreateCommodityOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.components)) {
            request.componentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.components, "Components", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.orderParams)) {
            request.orderParamsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.orderParams, "OrderParams", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentsShrink)) {
            query["Components"] = request.componentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderParamsShrink)) {
            query["OrderParams"] = request.orderParamsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quantity)) {
            query["Quantity"] = request.quantity!;
        }
        if (!TeaUtils.Client.isUnset(request.specCode)) {
            query["SpecCode"] = request.specCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCommodityOrder",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCommodityOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCommodityOrder(_ request: CreateCommodityOrderRequest) async throws -> CreateCommodityOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCommodityOrderWithOptions(request as! CreateCommodityOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrderWithOptions(_ request: CreateOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agreementId)) {
            query["AgreementId"] = request.agreementId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicantId)) {
            query["ApplicantId"] = request.applicantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicationType)) {
            query["ApplicationType"] = request.applicationType!;
        }
        if (!TeaUtils.Client.isUnset(request.authorizationOssKey)) {
            query["AuthorizationOssKey"] = request.authorizationOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.blackAndWhiteIcon)) {
            query["BlackAndWhiteIcon"] = request.blackAndWhiteIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classifications)) {
            query["Classifications"] = request.classifications ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idempotentId)) {
            query["IdempotentId"] = request.idempotentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalNoticeKey)) {
            query["LegalNoticeKey"] = request.legalNoticeKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paymentCallback)) {
            query["PaymentCallback"] = request.paymentCallback ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkComment)) {
            query["TrademarkComment"] = request.trademarkComment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkIcon)) {
            query["TrademarkIcon"] = request.trademarkIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkName)) {
            query["TrademarkName"] = request.trademarkName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkNameType)) {
            query["TrademarkNameType"] = request.trademarkNameType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOrder",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrder(_ request: CreateOrderRequest) async throws -> CreateOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOrderWithOptions(request as! CreateOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrademarkApplicationWithOptions(_ request: CreateTrademarkApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTrademarkApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agreementId)) {
            query["AgreementId"] = request.agreementId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicantId)) {
            query["ApplicantId"] = request.applicantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicationType)) {
            query["ApplicationType"] = request.applicationType!;
        }
        if (!TeaUtils.Client.isUnset(request.authorizationOssKey)) {
            query["AuthorizationOssKey"] = request.authorizationOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.blackAndWhiteIcon)) {
            query["BlackAndWhiteIcon"] = request.blackAndWhiteIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classifications)) {
            query["Classifications"] = request.classifications ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idempotentId)) {
            query["IdempotentId"] = request.idempotentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalNoticeKey)) {
            query["LegalNoticeKey"] = request.legalNoticeKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkComment)) {
            query["TrademarkComment"] = request.trademarkComment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkIcon)) {
            query["TrademarkIcon"] = request.trademarkIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkName)) {
            query["TrademarkName"] = request.trademarkName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkNameType)) {
            query["TrademarkNameType"] = request.trademarkNameType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTrademarkApplication",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTrademarkApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrademarkApplication(_ request: CreateTrademarkApplicationRequest) async throws -> CreateTrademarkApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTrademarkApplicationWithOptions(request as! CreateTrademarkApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSearchConditionWithOptions(_ request: DeleteSearchConditionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSearchConditionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.conditionId)) {
            query["ConditionId"] = request.conditionId!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["SessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.umid)) {
            query["Umid"] = request.umid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSearchCondition",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSearchConditionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSearchCondition(_ request: DeleteSearchConditionRequest) async throws -> DeleteSearchConditionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSearchConditionWithOptions(request as! DeleteSearchConditionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAdminTrademarkApplicationWithOptions(_ request: DescribeAdminTrademarkApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAdminTrademarkApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAdminTrademarkApplication",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAdminTrademarkApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAdminTrademarkApplication(_ request: DescribeAdminTrademarkApplicationRequest) async throws -> DescribeAdminTrademarkApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAdminTrademarkApplicationWithOptions(request as! DescribeAdminTrademarkApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicantWithOptions(_ request: DescribeApplicantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApplicantResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicantId)) {
            query["ApplicantId"] = request.applicantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApplicant",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApplicantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApplicant(_ request: DescribeApplicantRequest) async throws -> DescribeApplicantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApplicantWithOptions(request as! DescribeApplicantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePartnerTrademarkApplicationWithOptions(_ request: DescribePartnerTrademarkApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePartnerTrademarkApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePartnerTrademarkApplication",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePartnerTrademarkApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePartnerTrademarkApplication(_ request: DescribePartnerTrademarkApplicationRequest) async throws -> DescribePartnerTrademarkApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePartnerTrademarkApplicationWithOptions(request as! DescribePartnerTrademarkApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeQualificationStatusWithOptions(_ request: DescribeQualificationStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeQualificationStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tbUid)) {
            query["TbUid"] = request.tbUid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeQualificationStatus",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeQualificationStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeQualificationStatus(_ request: DescribeQualificationStatusRequest) async throws -> DescribeQualificationStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeQualificationStatusWithOptions(request as! DescribeQualificationStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSupplementWithOptions(_ request: DescribeSupplementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSupplementResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.supplementId)) {
            query["SupplementId"] = request.supplementId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSupplement",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSupplementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSupplement(_ request: DescribeSupplementRequest) async throws -> DescribeSupplementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSupplementWithOptions(request as! DescribeSupplementRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTrademarkApplicationWithOptions(_ request: DescribeTrademarkApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTrademarkApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTrademarkApplication",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTrademarkApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTrademarkApplication(_ request: DescribeTrademarkApplicationRequest) async throws -> DescribeTrademarkApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTrademarkApplicationWithOptions(request as! DescribeTrademarkApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTrademarkDetailForInnerWithOptions(_ request: DescribeTrademarkDetailForInnerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTrademarkDetailForInnerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.umid)) {
            query["Umid"] = request.umid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTrademarkDetailForInner",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTrademarkDetailForInnerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTrademarkDetailForInner(_ request: DescribeTrademarkDetailForInnerRequest) async throws -> DescribeTrademarkDetailForInnerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTrademarkDetailForInnerWithOptions(request as! DescribeTrademarkDetailForInnerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateUploadFilePolicyWithOptions(_ request: GenerateUploadFilePolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateUploadFilePolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            query["FileType"] = request.fileType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateUploadFilePolicy",
            "version": "2019-09-02",
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
    public func getAlipayUrlWithOptions(_ request: GetAlipayUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAlipayUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAlipayUrl",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAlipayUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlipayUrl(_ request: GetAlipayUrlRequest) async throws -> GetAlipayUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAlipayUrlWithOptions(request as! GetAlipayUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrderConfirmUrlWithOptions(_ request: GetOrderConfirmUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrderConfirmUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.items)) {
            query["Items"] = request.items ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.outTraceCode)) {
            query["OutTraceCode"] = request.outTraceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outTraceType)) {
            query["OutTraceType"] = request.outTraceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOrderConfirmUrl",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOrderConfirmUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrderConfirmUrl(_ request: GetOrderConfirmUrlRequest) async throws -> GetOrderConfirmUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOrderConfirmUrlWithOptions(request as! GetOrderConfirmUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStsByTaobaoUidWithOptions(_ request: GetStsByTaobaoUidRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStsByTaobaoUidResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunUid)) {
            query["AliyunUid"] = request.aliyunUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tbUid)) {
            query["TbUid"] = request.tbUid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStsByTaobaoUid",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStsByTaobaoUidResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStsByTaobaoUid(_ request: GetStsByTaobaoUidRequest) async throws -> GetStsByTaobaoUidResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStsByTaobaoUidWithOptions(request as! GetStsByTaobaoUidRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAdminTrademarkApplicationLogsWithOptions(_ request: ListAdminTrademarkApplicationLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAdminTrademarkApplicationLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAdminTrademarkApplicationLogs",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAdminTrademarkApplicationLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAdminTrademarkApplicationLogs(_ request: ListAdminTrademarkApplicationLogsRequest) async throws -> ListAdminTrademarkApplicationLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAdminTrademarkApplicationLogsWithOptions(request as! ListAdminTrademarkApplicationLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAdminTrademarkApplicationsWithOptions(_ request: ListAdminTrademarkApplicationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAdminTrademarkApplicationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicantName)) {
            query["ApplicantName"] = request.applicantName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicationStatus)) {
            query["ApplicationStatus"] = request.applicationStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.applicationType)) {
            query["ApplicationType"] = request.applicationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            query["SortOrder"] = request.sortOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplementStatus)) {
            query["SupplementStatus"] = request.supplementStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.trademarkName)) {
            query["TrademarkName"] = request.trademarkName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkNumber)) {
            query["TrademarkNumber"] = request.trademarkNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAdminTrademarkApplications",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAdminTrademarkApplicationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAdminTrademarkApplications(_ request: ListAdminTrademarkApplicationsRequest) async throws -> ListAdminTrademarkApplicationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAdminTrademarkApplicationsWithOptions(request as! ListAdminTrademarkApplicationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicantsWithOptions(_ request: ListApplicantsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApplicantsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicantName)) {
            query["ApplicantName"] = request.applicantName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicantRegion)) {
            query["ApplicantRegion"] = request.applicantRegion!;
        }
        if (!TeaUtils.Client.isUnset(request.applicantType)) {
            query["ApplicantType"] = request.applicantType!;
        }
        if (!TeaUtils.Client.isUnset(request.applicantVersion)) {
            query["ApplicantVersion"] = request.applicantVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.auditStatus)) {
            query["AuditStatus"] = request.auditStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.cardNumber)) {
            query["CardNumber"] = request.cardNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.principalName)) {
            query["PrincipalName"] = request.principalName!;
        }
        if (!TeaUtils.Client.isUnset(request.systemVersion)) {
            query["SystemVersion"] = request.systemVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApplicants",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApplicantsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicants(_ request: ListApplicantsRequest) async throws -> ListApplicantsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listApplicantsWithOptions(request as! ListApplicantsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAreasWithOptions(_ request: ListAreasRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAreasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentCode)) {
            query["ParentCode"] = request.parentCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAreas",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAreasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAreas(_ request: ListAreasRequest) async throws -> ListAreasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAreasWithOptions(request as! ListAreasRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClassificationConditionsWithOptions(_ request: ListClassificationConditionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClassificationConditionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagName)) {
            query["TagName"] = request.tagName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClassificationConditions",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClassificationConditionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClassificationConditions(_ request: ListClassificationConditionsRequest) async throws -> ListClassificationConditionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listClassificationConditionsWithOptions(request as! ListClassificationConditionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClassificationsWithOptions(_ request: ListClassificationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListClassificationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.parentCode)) {
            query["ParentCode"] = request.parentCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListClassifications",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListClassificationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listClassifications(_ request: ListClassificationsRequest) async throws -> ListClassificationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listClassificationsWithOptions(request as! ListClassificationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrademarkApplicationLogsWithOptions(_ request: ListTrademarkApplicationLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrademarkApplicationLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrademarkApplicationLogs",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrademarkApplicationLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrademarkApplicationLogs(_ request: ListTrademarkApplicationLogsRequest) async throws -> ListTrademarkApplicationLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTrademarkApplicationLogsWithOptions(request as! ListTrademarkApplicationLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrademarkApplicationsWithOptions(_ request: ListTrademarkApplicationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrademarkApplicationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicantName)) {
            query["ApplicantName"] = request.applicantName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicationStatus)) {
            query["ApplicationStatus"] = request.applicationStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.applicationType)) {
            query["ApplicationType"] = request.applicationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeLeft)) {
            query["CreateTimeLeft"] = request.createTimeLeft!;
        }
        if (!TeaUtils.Client.isUnset(request.createTimeRight)) {
            query["CreateTimeRight"] = request.createTimeRight!;
        }
        if (!TeaUtils.Client.isUnset(request.flag)) {
            query["Flag"] = request.flag!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType!;
        }
        if (!TeaUtils.Client.isUnset(request.queryVoucherOrderDoneFlag)) {
            query["QueryVoucherOrderDoneFlag"] = request.queryVoucherOrderDoneFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.queryVoucherOrderFlag)) {
            query["QueryVoucherOrderFlag"] = request.queryVoucherOrderFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.sortFiled)) {
            query["SortFiled"] = request.sortFiled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortOrder)) {
            query["SortOrder"] = request.sortOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplementStatus)) {
            query["SupplementStatus"] = request.supplementStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.trademarkName)) {
            query["TrademarkName"] = request.trademarkName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkNumber)) {
            query["TrademarkNumber"] = request.trademarkNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrademarkApplications",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrademarkApplicationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrademarkApplications(_ request: ListTrademarkApplicationsRequest) async throws -> ListTrademarkApplicationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTrademarkApplicationsWithOptions(request as! ListTrademarkApplicationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrademarkSearchForInnerWithOptions(_ request: ListTrademarkSearchForInnerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrademarkSearchForInnerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyBeginTime)) {
            query["ApplyBeginTime"] = request.applyBeginTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applyEndTime)) {
            query["ApplyEndTime"] = request.applyEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classification)) {
            query["Classification"] = request.classification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ifPrecision)) {
            query["IfPrecision"] = request.ifPrecision!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["Product"] = request.product ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchPreference)) {
            query["SearchPreference"] = request.searchPreference ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchType)) {
            query["SearchType"] = request.searchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.umid)) {
            query["Umid"] = request.umid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrademarkSearchForInner",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrademarkSearchForInnerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrademarkSearchForInner(_ request: ListTrademarkSearchForInnerRequest) async throws -> ListTrademarkSearchForInnerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTrademarkSearchForInnerWithOptions(request as! ListTrademarkSearchForInnerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putMeasureDataWithOptions(_ request: PutMeasureDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutMeasureDataResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            body["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutMeasureData",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutMeasureDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putMeasureData(_ request: PutMeasureDataRequest) async throws -> PutMeasureDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putMeasureDataWithOptions(request as! PutMeasureDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putMeasureReadyFlagWithOptions(_ request: PutMeasureReadyFlagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutMeasureReadyFlagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.readyFlag)) {
            query["ReadyFlag"] = request.readyFlag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutMeasureReadyFlag",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutMeasureReadyFlagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putMeasureReadyFlag(_ request: PutMeasureReadyFlagRequest) async throws -> PutMeasureReadyFlagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putMeasureReadyFlagWithOptions(request as! PutMeasureReadyFlagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryActivityItemsWithOptions(_ request: QueryActivityItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryActivityItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            query["ActivityId"] = request.activityId!;
        }
        if (!TeaUtils.Client.isUnset(request.extendInfo)) {
            query["ExtendInfo"] = request.extendInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.floorIndex)) {
            query["FloorIndex"] = request.floorIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.mock)) {
            query["Mock"] = request.mock!;
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.refresh)) {
            query["Refresh"] = request.refresh!;
        }
        if (!TeaUtils.Client.isUnset(request.umId)) {
            query["UmId"] = request.umId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryActivityItems",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryActivityItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryActivityItems(_ request: QueryActivityItemsRequest) async throws -> QueryActivityItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryActivityItemsWithOptions(request as! QueryActivityItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAliyunUidWithOptions(_ request: QueryAliyunUidRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAliyunUidResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tbUid)) {
            query["TbUid"] = request.tbUid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAliyunUid",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAliyunUidResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAliyunUid(_ request: QueryAliyunUidRequest) async throws -> QueryAliyunUidResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAliyunUidWithOptions(request as! QueryAliyunUidRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDetailItemWithOptions(_ request: QueryDetailItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDetailItemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.detailConvertType)) {
            query["DetailConvertType"] = request.detailConvertType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detailId)) {
            query["DetailId"] = request.detailId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detailType)) {
            query["DetailType"] = request.detailType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mock)) {
            query["Mock"] = request.mock!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDetailItem",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDetailItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDetailItem(_ request: QueryDetailItemRequest) async throws -> QueryDetailItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDetailItemWithOptions(request as! QueryDetailItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRemainResourcesWithOptions(_ request: QueryRemainResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRemainResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRemainResources",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRemainResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRemainResources(_ request: QueryRemainResourcesRequest) async throws -> QueryRemainResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRemainResourcesWithOptions(request as! QueryRemainResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refuseSupplementWithOptions(_ request: RefuseSupplementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefuseSupplementResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.supplementId)) {
            query["SupplementId"] = request.supplementId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefuseSupplement",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefuseSupplementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refuseSupplement(_ request: RefuseSupplementRequest) async throws -> RefuseSupplementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refuseSupplementWithOptions(request as! RefuseSupplementRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rejectExpertSolutionWithOptions(_ request: RejectExpertSolutionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RejectExpertSolutionResponse {
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
            "action": "RejectExpertSolution",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RejectExpertSolutionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rejectExpertSolution(_ request: RejectExpertSolutionRequest) async throws -> RejectExpertSolutionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rejectExpertSolutionWithOptions(request as! RejectExpertSolutionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeApplicantWithOptions(_ request: RemoveApplicantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveApplicantResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicantId)) {
            query["ApplicantId"] = request.applicantId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveApplicant",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveApplicantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeApplicant(_ request: RemoveApplicantRequest) async throws -> RemoveApplicantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeApplicantWithOptions(request as! RemoveApplicantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSearchConditionWithOptions(_ request: SaveSearchConditionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSearchConditionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.conditionContent)) {
            body["ConditionContent"] = request.conditionContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagName)) {
            body["TagName"] = request.tagName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.umid)) {
            body["Umid"] = request.umid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSearchCondition",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSearchConditionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSearchCondition(_ request: SaveSearchConditionRequest) async throws -> SaveSearchConditionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveSearchConditionWithOptions(request as! SaveSearchConditionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTemporaryApplicantWithOptions(_ request: SaveTemporaryApplicantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveTemporaryApplicantResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicantId)) {
            query["ApplicantId"] = request.applicantId!;
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
        if (!TeaUtils.Client.isUnset(request.completeApplicant)) {
            query["CompleteApplicant"] = request.completeApplicant!;
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
        if (!TeaUtils.Client.isUnset(request.contactZipCode)) {
            query["ContactZipCode"] = request.contactZipCode ?? "";
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
            "action": "SaveTemporaryApplicant",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveTemporaryApplicantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTemporaryApplicant(_ request: SaveTemporaryApplicantRequest) async throws -> SaveTemporaryApplicantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveTemporaryApplicantWithOptions(request as! SaveTemporaryApplicantRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchItemsWithOptions(_ request: SearchItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludedTags)) {
            query["ExcludedTags"] = request.excludedTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludedUids)) {
            query["ExcludedUids"] = request.excludedUids ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.feedsType)) {
            query["FeedsType"] = request.feedsType!;
        }
        if (!TeaUtils.Client.isUnset(request.intCls)) {
            query["IntCls"] = request.intCls ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keywords)) {
            query["Keywords"] = request.keywords ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mock)) {
            query["Mock"] = request.mock!;
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.priceLeft)) {
            query["PriceLeft"] = request.priceLeft ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priceRight)) {
            query["PriceRight"] = request.priceRight ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.products)) {
            query["Products"] = request.products ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registerNumber)) {
            query["RegisterNumber"] = request.registerNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortType)) {
            query["SortType"] = request.sortType!;
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trademarkNameLength)) {
            query["TrademarkNameLength"] = request.trademarkNameLength!;
        }
        if (!TeaUtils.Client.isUnset(request.trademarkNameType)) {
            query["TrademarkNameType"] = request.trademarkNameType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.umId)) {
            query["UmId"] = request.umId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchItems",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchItems(_ request: SearchItemsRequest) async throws -> SearchItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchItemsWithOptions(request as! SearchItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchSimilarityWithOptions(_ tmpReq: SearchSimilarityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchSimilarityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchSimilarityShrinkRequest = SearchSimilarityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.classifications)) {
            request.classificationsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.classifications, "Classifications", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.similarGroups)) {
            request.similarGroupsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.similarGroups, "SimilarGroups", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.classificationsShrink)) {
            query["Classifications"] = request.classificationsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nameUriList)) {
            query["NameUriList"] = request.nameUriList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.searchType)) {
            query["SearchType"] = request.searchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showDetail)) {
            query["ShowDetail"] = request.showDetail!;
        }
        if (!TeaUtils.Client.isUnset(request.similarGroupsShrink)) {
            query["SimilarGroups"] = request.similarGroupsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sorter)) {
            query["Sorter"] = request.sorter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.umid)) {
            query["Umid"] = request.umid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchSimilarity",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchSimilarityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchSimilarity(_ request: SearchSimilarityRequest) async throws -> SearchSimilarityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchSimilarityWithOptions(request as! SearchSimilarityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchSimilarityListWithOptions(_ tmpReq: SearchSimilarityListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchSimilarityListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchSimilarityListShrinkRequest = SearchSimilarityListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.classifications)) {
            request.classificationsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.classifications, "Classifications", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.similarGroups)) {
            request.similarGroupsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.similarGroups, "SimilarGroups", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.classificationsShrink)) {
            query["Classifications"] = request.classificationsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.similarGroupsShrink)) {
            query["SimilarGroups"] = request.similarGroupsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.successSearchType)) {
            query["SuccessSearchType"] = request.successSearchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.umid)) {
            query["Umid"] = request.umid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uri)) {
            query["Uri"] = request.uri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchSimilarityList",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchSimilarityListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchSimilarityList(_ request: SearchSimilarityListRequest) async throws -> SearchSimilarityListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchSimilarityListWithOptions(request as! SearchSimilarityListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendMessageToUserWithOptions(_ tmpReq: SendMessageToUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendMessageToUserResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendMessageToUserShrinkRequest = SendMessageToUserShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.templateData)) {
            request.templateDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.templateData, "TemplateData", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.receiverNickName)) {
            query["ReceiverNickName"] = request.receiverNickName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.senderNickName)) {
            query["SenderNickName"] = request.senderNickName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateDataShrink)) {
            query["TemplateData"] = request.templateDataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendMessageToUser",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendMessageToUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendMessageToUser(_ request: SendMessageToUserRequest) async throws -> SendMessageToUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sendMessageToUserWithOptions(request as! SendMessageToUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSupplementWithOptions(_ tmpReq: SubmitSupplementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitSupplementResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitSupplementShrinkRequest = SubmitSupplementShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.userFiles)) {
            request.userFilesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userFiles, "UserFiles", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplementId)) {
            query["SupplementId"] = request.supplementId!;
        }
        if (!TeaUtils.Client.isUnset(request.userFilesShrink)) {
            query["UserFiles"] = request.userFilesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitSupplement",
            "version": "2019-09-02",
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
    public func updateApplicantWithOptions(_ request: UpdateApplicantRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateApplicantResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applicantId)) {
            query["ApplicantId"] = request.applicantId!;
        }
        if (!TeaUtils.Client.isUnset(request.applicantName)) {
            query["ApplicantName"] = request.applicantName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizationOssKey)) {
            query["AuthorizationOssKey"] = request.authorizationOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessLicenceOssKey)) {
            query["BusinessLicenceOssKey"] = request.businessLicenceOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cardNumber)) {
            query["CardNumber"] = request.cardNumber ?? "";
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
        if (!TeaUtils.Client.isUnset(request.passportOssKey)) {
            query["PassportOssKey"] = request.passportOssKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personalType)) {
            query["PersonalType"] = request.personalType!;
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            query["Province"] = request.province ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApplicant",
            "version": "2019-09-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateApplicantResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicant(_ request: UpdateApplicantRequest) async throws -> UpdateApplicantResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateApplicantWithOptions(request as! UpdateApplicantRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
