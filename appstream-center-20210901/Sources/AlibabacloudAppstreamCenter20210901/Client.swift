import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = ""
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("appstream-center", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func approveOtaTaskWithOptions(_ request: ApproveOtaTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApproveOtaTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            body["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otaType)) {
            body["OtaType"] = request.otaType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApproveOtaTask",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApproveOtaTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func approveOtaTask(_ request: ApproveOtaTaskRequest) async throws -> ApproveOtaTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await approveOtaTaskWithOptions(request as! ApproveOtaTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeInstanceGroupWithOptions(_ request: AuthorizeInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthorizeInstanceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizeUserIds)) {
            body["AuthorizeUserIds"] = request.authorizeUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unAuthorizeUserIds)) {
            body["UnAuthorizeUserIds"] = request.unAuthorizeUserIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeInstanceGroup",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthorizeInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeInstanceGroup(_ request: AuthorizeInstanceGroupRequest) async throws -> AuthorizeInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await authorizeInstanceGroupWithOptions(request as! AuthorizeInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOtaTaskWithOptions(_ request: CancelOtaTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelOtaTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelOtaTask",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelOtaTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOtaTask(_ request: CancelOtaTaskRequest) async throws -> CancelOtaTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelOtaTaskWithOptions(request as! CancelOtaTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppInstanceGroupWithOptions(_ tmpReq: CreateAppInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAppInstanceGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAppInstanceGroupShrinkRequest = CreateAppInstanceGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.nodePool)) {
            request.nodePoolShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.nodePool, "NodePool", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userInfo)) {
            request.userInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userInfo, "UserInfo", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCenterImageId)) {
            body["AppCenterImageId"] = request.appCenterImageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupName)) {
            body["AppInstanceGroupName"] = request.appInstanceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            body["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            body["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            body["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeResourceMode)) {
            body["ChargeResourceMode"] = request.chargeResourceMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            body["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodePoolShrink)) {
            body["NodePool"] = request.nodePoolShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            body["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            body["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            body["PromotionId"] = request.promotionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionTimeout)) {
            body["SessionTimeout"] = request.sessionTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.userInfoShrink)) {
            body["UserInfo"] = request.userInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.users)) {
            body["Users"] = request.users ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAppInstanceGroup",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAppInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppInstanceGroup(_ request: CreateAppInstanceGroupRequest) async throws -> CreateAppInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAppInstanceGroupWithOptions(request as! CreateAppInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOtaTaskByTaskIdWithOptions(_ request: GetOtaTaskByTaskIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOtaTaskByTaskIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOtaTaskByTaskId",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOtaTaskByTaskIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOtaTaskByTaskId(_ request: GetOtaTaskByTaskIdRequest) async throws -> GetOtaTaskByTaskIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOtaTaskByTaskIdWithOptions(request as! GetOtaTaskByTaskIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourcePriceWithOptions(_ request: GetResourcePriceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourcePriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeInstanceType)) {
            query["NodeInstanceType"] = request.nodeInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourcePrice",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourcePriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourcePrice(_ request: GetResourcePriceRequest) async throws -> GetResourcePriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourcePriceWithOptions(request as! GetResourcePriceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppInstanceGroupWithOptions(_ request: ListAppInstanceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAppInstanceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCenterImageId)) {
            query["AppCenterImageId"] = request.appCenterImageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            query["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupName)) {
            query["AppInstanceGroupName"] = request.appInstanceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAppInstanceGroup",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAppInstanceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppInstanceGroup(_ request: ListAppInstanceGroupRequest) async throws -> ListAppInstanceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAppInstanceGroupWithOptions(request as! ListAppInstanceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeInstanceTypeWithOptions(_ request: ListNodeInstanceTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodeInstanceTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osType)) {
            query["OsType"] = request.osType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodeInstanceType",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodeInstanceTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodeInstanceType(_ request: ListNodeInstanceTypeRequest) async throws -> ListNodeInstanceTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNodeInstanceTypeWithOptions(request as! ListNodeInstanceTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOtaTaskWithOptions(_ request: ListOtaTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOtaTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otaType)) {
            body["OtaType"] = request.otaType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOtaTask",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOtaTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOtaTask(_ request: ListOtaTaskRequest) async throws -> ListOtaTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOtaTaskWithOptions(request as! ListOtaTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegionsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRegions",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegions() async throws -> ListRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRegionsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAppInstanceGroupAttributeWithOptions(_ tmpReq: ModifyAppInstanceGroupAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAppInstanceGroupAttributeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyAppInstanceGroupAttributeShrinkRequest = ModifyAppInstanceGroupAttributeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.nodePool)) {
            request.nodePoolShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.nodePool, "NodePool", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            query["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupName)) {
            query["AppInstanceGroupName"] = request.appInstanceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodePoolShrink)) {
            query["NodePool"] = request.nodePoolShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionTimeout)) {
            query["SessionTimeout"] = request.sessionTimeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAppInstanceGroupAttribute",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAppInstanceGroupAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAppInstanceGroupAttribute(_ request: ModifyAppInstanceGroupAttributeRequest) async throws -> ModifyAppInstanceGroupAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAppInstanceGroupAttributeWithOptions(request as! ModifyAppInstanceGroupAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodePoolAttributeWithOptions(_ tmpReq: ModifyNodePoolAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNodePoolAttributeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyNodePoolAttributeShrinkRequest = ModifyNodePoolAttributeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.nodePoolStrategy)) {
            request.nodePoolStrategyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.nodePoolStrategy, "NodePoolStrategy", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            body["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeCapacity)) {
            body["NodeCapacity"] = request.nodeCapacity!;
        }
        if (!TeaUtils.Client.isUnset(request.nodePoolStrategyShrink)) {
            body["NodePoolStrategy"] = request.nodePoolStrategyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolId)) {
            body["PoolId"] = request.poolId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNodePoolAttribute",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNodePoolAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNodePoolAttribute(_ request: ModifyNodePoolAttributeRequest) async throws -> ModifyNodePoolAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyNodePoolAttributeWithOptions(request as! ModifyNodePoolAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pageListAppInstanceGroupUserWithOptions(_ request: PageListAppInstanceGroupUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PageListAppInstanceGroupUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            body["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PageListAppInstanceGroupUser",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PageListAppInstanceGroupUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pageListAppInstanceGroupUser(_ request: PageListAppInstanceGroupUserRequest) async throws -> PageListAppInstanceGroupUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pageListAppInstanceGroupUserWithOptions(request as! PageListAppInstanceGroupUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAppInstanceGroupImageWithOptions(_ request: UpdateAppInstanceGroupImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAppInstanceGroupImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCenterImageId)) {
            query["AppCenterImageId"] = request.appCenterImageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appInstanceGroupId)) {
            query["AppInstanceGroupId"] = request.appInstanceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizRegionId)) {
            query["BizRegionId"] = request.bizRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAppInstanceGroupImage",
            "version": "2021-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAppInstanceGroupImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAppInstanceGroupImage(_ request: UpdateAppInstanceGroupImageRequest) async throws -> UpdateAppInstanceGroupImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAppInstanceGroupImageWithOptions(request as! UpdateAppInstanceGroupImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
