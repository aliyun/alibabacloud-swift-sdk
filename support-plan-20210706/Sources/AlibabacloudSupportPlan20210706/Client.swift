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
        self._endpoint = try getEndpoint("support-plan", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addEnterpriseGroupMemberToTaskGroupWithOptions(_ request: AddEnterpriseGroupMemberToTaskGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddEnterpriseGroupMemberToTaskGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskOrderId)) {
            query["TaskOrderId"] = request.taskOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddEnterpriseGroupMemberToTaskGroup",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(AddEnterpriseGroupMemberToTaskGroupResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(AddEnterpriseGroupMemberToTaskGroupResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addEnterpriseGroupMemberToTaskGroup(_ request: AddEnterpriseGroupMemberToTaskGroupRequest) async throws -> AddEnterpriseGroupMemberToTaskGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addEnterpriseGroupMemberToTaskGroupWithOptions(request as! AddEnterpriseGroupMemberToTaskGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTaskOrderWithOptions(_ request: CreateTaskOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTaskOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createUserId)) {
            query["CreateUserId"] = request.createUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isUrgent)) {
            query["IsUrgent"] = request.isUrgent!;
        }
        if (!TeaUtils.Client.isUnset(request.openGroupId)) {
            query["OpenGroupId"] = request.openGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.overview)) {
            query["Overview"] = request.overview ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.urgentDescription)) {
            query["UrgentDescription"] = request.urgentDescription ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTaskOrder",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(CreateTaskOrderResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(CreateTaskOrderResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTaskOrder(_ request: CreateTaskOrderRequest) async throws -> CreateTaskOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTaskOrderWithOptions(request as! CreateTaskOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDdTaskOrderWithOptions(_ request: ListDdTaskOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDdTaskOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createRealName)) {
            query["CreateRealName"] = request.createRealName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isUrgent)) {
            query["IsUrgent"] = request.isUrgent!;
        }
        if (!TeaUtils.Client.isUnset(request.openGroupId)) {
            query["OpenGroupId"] = request.openGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            query["TaskStatus"] = request.taskStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDdTaskOrder",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListDdTaskOrderResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListDdTaskOrderResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDdTaskOrder(_ request: ListDdTaskOrderRequest) async throws -> ListDdTaskOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDdTaskOrderWithOptions(request as! ListDdTaskOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnterpriseDingtalkGroupCustomerMembersWithOptions(_ request: ListEnterpriseDingtalkGroupCustomerMembersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEnterpriseDingtalkGroupCustomerMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.openGroupId)) {
            query["OpenGroupId"] = request.openGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEnterpriseDingtalkGroupCustomerMembers",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListEnterpriseDingtalkGroupCustomerMembersResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListEnterpriseDingtalkGroupCustomerMembersResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnterpriseDingtalkGroupCustomerMembers(_ request: ListEnterpriseDingtalkGroupCustomerMembersRequest) async throws -> ListEnterpriseDingtalkGroupCustomerMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEnterpriseDingtalkGroupCustomerMembersWithOptions(request as! ListEnterpriseDingtalkGroupCustomerMembersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnterpriseDingtalkGroupsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListEnterpriseDingtalkGroupsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEnterpriseDingtalkGroups",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListEnterpriseDingtalkGroupsResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListEnterpriseDingtalkGroupsResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnterpriseDingtalkGroups() async throws -> ListEnterpriseDingtalkGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEnterpriseDingtalkGroupsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductByGroupWithOptions(_ request: ListProductByGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductByGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.openGroupId)) {
            query["OpenGroupId"] = request.openGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProductByGroup",
            "version": "2021-07-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListProductByGroupResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListProductByGroupResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductByGroup(_ request: ListProductByGroupRequest) async throws -> ListProductByGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProductByGroupWithOptions(request as! ListProductByGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
