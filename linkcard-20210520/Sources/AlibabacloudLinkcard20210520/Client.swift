import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._signatureAlgorithm = "v2"
        self._endpointRule = "central"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("linkcard", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addDirectionalCardWithOptions(_ tmpReq: AddDirectionalCardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDirectionalCardResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddDirectionalCardShrinkRequest = AddDirectionalCardShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.orderList)) {
            request.orderListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.orderList, "OrderList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tagList)) {
            request.tagListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tagList, "TagList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileUri)) {
            query["FileUri"] = request.fileUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderListShrink)) {
            query["OrderList"] = request.orderListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagListShrink)) {
            query["TagList"] = request.tagListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uploadMethod)) {
            query["UploadMethod"] = request.uploadMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uploadType)) {
            query["UploadType"] = request.uploadType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDirectionalCard",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDirectionalCardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDirectionalCard(_ request: AddDirectionalCardRequest) async throws -> AddDirectionalCardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDirectionalCardWithOptions(request as! AddDirectionalCardRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDirectionalGroupWithOptions(_ request: AddDirectionalGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDirectionalGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDirectionalGroup",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDirectionalGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDirectionalGroup(_ request: AddDirectionalGroupRequest) async throws -> AddDirectionalGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDirectionalGroupWithOptions(request as! AddDirectionalGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchAddDirectionalAddressWithOptions(_ request: BatchAddDirectionalAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchAddDirectionalAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressType)) {
            query["AddressType"] = request.addressType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.listAddress)) {
            query["ListAddress"] = request.listAddress ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchAddDirectionalAddress",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchAddDirectionalAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchAddDirectionalAddress(_ request: BatchAddDirectionalAddressRequest) async throws -> BatchAddDirectionalAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchAddDirectionalAddressWithOptions(request as! BatchAddDirectionalAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func forceActivationWithOptions(_ request: ForceActivationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ForceActivationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dateType)) {
            query["DateType"] = request.dateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iccid)) {
            query["Iccid"] = request.iccid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ForceActivation",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ForceActivationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func forceActivation(_ request: ForceActivationRequest) async throws -> ForceActivationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await forceActivationWithOptions(request as! ForceActivationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCardDetailWithOptions(_ request: GetCardDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCardDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destroyCard)) {
            query["DestroyCard"] = request.destroyCard!;
        }
        if (!TeaUtils.Client.isUnset(request.iccid)) {
            query["Iccid"] = request.iccid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showPsim)) {
            query["ShowPsim"] = request.showPsim!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCardDetail",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCardDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCardDetail(_ request: GetCardDetailRequest) async throws -> GetCardDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCardDetailWithOptions(request as! GetCardDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCardFlowInfoWithOptions(_ request: GetCardFlowInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCardFlowInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dateList)) {
            query["DateList"] = request.dateList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.iccid)) {
            query["Iccid"] = request.iccid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCardFlowInfo",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCardFlowInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCardFlowInfo(_ request: GetCardFlowInfoRequest) async throws -> GetCardFlowInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCardFlowInfoWithOptions(request as! GetCardFlowInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCredentialPoolStatisticsWithOptions(_ request: GetCredentialPoolStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCredentialPoolStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialNO)) {
            query["CredentialNO"] = request.credentialNO ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.date)) {
            query["Date"] = request.date ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCredentialPoolStatistics",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCredentialPoolStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCredentialPoolStatistics(_ request: GetCredentialPoolStatisticsRequest) async throws -> GetCredentialPoolStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCredentialPoolStatisticsWithOptions(request as! GetCredentialPoolStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCardInfoWithOptions(_ request: ListCardInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCardInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activeTimeEnd)) {
            query["ActiveTimeEnd"] = request.activeTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.activeTimeStart)) {
            query["ActiveTimeStart"] = request.activeTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aliFee)) {
            query["AliFee"] = request.aliFee ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aliyunOrderId)) {
            query["AliyunOrderId"] = request.aliyunOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apnName)) {
            query["ApnName"] = request.apnName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certifyType)) {
            query["CertifyType"] = request.certifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credentialNo)) {
            query["CredentialNo"] = request.credentialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataLevel)) {
            query["DataLevel"] = request.dataLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directionalGroupId)) {
            query["DirectionalGroupId"] = request.directionalGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireTimeEnd)) {
            query["ExpireTimeEnd"] = request.expireTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireTimeStart)) {
            query["ExpireTimeStart"] = request.expireTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.iccid)) {
            query["Iccid"] = request.iccid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imsi)) {
            query["Imsi"] = request.imsi ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAutoRecharge)) {
            query["IsAutoRecharge"] = request.isAutoRecharge!;
        }
        if (!TeaUtils.Client.isUnset(request.maxFlow)) {
            query["MaxFlow"] = request.maxFlow ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minFlow)) {
            query["MinFlow"] = request.minFlow ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.msisdn)) {
            query["Msisdn"] = request.msisdn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyId)) {
            query["NotifyId"] = request.notifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osStatus)) {
            query["OsStatus"] = request.osStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolId)) {
            query["PoolId"] = request.poolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.simType)) {
            query["SimType"] = request.simType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagName)) {
            query["TagName"] = request.tagName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendor)) {
            query["Vendor"] = request.vendor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCardInfo",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCardInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCardInfo(_ request: ListCardInfoRequest) async throws -> ListCardInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCardInfoWithOptions(request as! ListCardInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDirectionalAddressWithOptions(_ request: ListDirectionalAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDirectionalAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDirectionalAddress",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDirectionalAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDirectionalAddress(_ request: ListDirectionalAddressRequest) async throws -> ListDirectionalAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDirectionalAddressWithOptions(request as! ListDirectionalAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDirectionalDetailWithOptions(_ request: ListDirectionalDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDirectionalDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iccid)) {
            query["Iccid"] = request.iccid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDirectionalDetail",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDirectionalDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDirectionalDetail(_ request: ListDirectionalDetailRequest) async throws -> ListDirectionalDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDirectionalDetailWithOptions(request as! ListDirectionalDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrderWithOptions(_ request: ListOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderStatus)) {
            query["OrderStatus"] = request.orderStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOrder",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrder(_ request: ListOrderRequest) async throws -> ListOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOrderWithOptions(request as! ListOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebindResumeSingleCardWithOptions(_ tmpReq: RebindResumeSingleCardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RebindResumeSingleCardResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RebindResumeSingleCardShrinkRequest = RebindResumeSingleCardShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.optMsisdns)) {
            request.optMsisdnsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.optMsisdns, "OptMsisdns", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iccid)) {
            query["Iccid"] = request.iccid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optMsisdnsShrink)) {
            query["OptMsisdns"] = request.optMsisdnsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RebindResumeSingleCard",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RebindResumeSingleCardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebindResumeSingleCard(_ request: RebindResumeSingleCardRequest) async throws -> RebindResumeSingleCardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rebindResumeSingleCardWithOptions(request as! RebindResumeSingleCardRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewWithOptions(_ request: RenewRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buyNum)) {
            query["BuyNum"] = request.buyNum!;
        }
        if (!TeaUtils.Client.isUnset(request.iccid)) {
            query["Iccid"] = request.iccid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offerCode)) {
            query["OfferCode"] = request.offerCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rechargeType)) {
            query["RechargeType"] = request.rechargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNo)) {
            query["SerialNo"] = request.serialNo ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiProduct)) {
            body["ApiProduct"] = request.apiProduct ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiRevision)) {
            body["ApiRevision"] = request.apiRevision ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Renew",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renew(_ request: RenewRequest) async throws -> RenewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewWithOptions(request as! RenewRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeSingleCardWithOptions(_ tmpReq: ResumeSingleCardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeSingleCardResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ResumeSingleCardShrinkRequest = ResumeSingleCardShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.optMsisdns)) {
            request.optMsisdnsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.optMsisdns, "OptMsisdns", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iccid)) {
            query["Iccid"] = request.iccid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optMsisdnsShrink)) {
            query["OptMsisdns"] = request.optMsisdnsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumeSingleCard",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeSingleCardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeSingleCard(_ request: ResumeSingleCardRequest) async throws -> ResumeSingleCardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resumeSingleCardWithOptions(request as! ResumeSingleCardRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setCardStopRuleWithOptions(_ request: SetCardStopRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetCardStopRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRestore)) {
            query["AutoRestore"] = request.autoRestore!;
        }
        if (!TeaUtils.Client.isUnset(request.flowLimit)) {
            query["FlowLimit"] = request.flowLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.iccid)) {
            query["Iccid"] = request.iccid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetCardStopRule",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetCardStopRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setCardStopRule(_ request: SetCardStopRuleRequest) async throws -> SetCardStopRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setCardStopRuleWithOptions(request as! SetCardStopRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopSingleCardWithOptions(_ tmpReq: StopSingleCardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopSingleCardResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: StopSingleCardShrinkRequest = StopSingleCardShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.optMsisdns)) {
            request.optMsisdnsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.optMsisdns, "OptMsisdns", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iccid)) {
            query["Iccid"] = request.iccid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optMsisdnsShrink)) {
            query["OptMsisdns"] = request.optMsisdnsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopSingleCard",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopSingleCardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopSingleCard(_ request: StopSingleCardRequest) async throws -> StopSingleCardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopSingleCardWithOptions(request as! StopSingleCardRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAutoRechargeSwitchWithOptions(_ request: UpdateAutoRechargeSwitchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAutoRechargeSwitchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iccid)) {
            query["Iccid"] = request.iccid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.open_)) {
            query["Open"] = request.open_!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAutoRechargeSwitch",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAutoRechargeSwitchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAutoRechargeSwitch(_ request: UpdateAutoRechargeSwitchRequest) async throws -> UpdateAutoRechargeSwitchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAutoRechargeSwitchWithOptions(request as! UpdateAutoRechargeSwitchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyIotCardWithOptions(_ request: VerifyIotCardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyIotCardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.iccid)) {
            query["Iccid"] = request.iccid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifyIotCard",
            "version": "2021-05-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyIotCardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyIotCard(_ request: VerifyIotCardRequest) async throws -> VerifyIotCardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifyIotCardWithOptions(request as! VerifyIotCardRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
