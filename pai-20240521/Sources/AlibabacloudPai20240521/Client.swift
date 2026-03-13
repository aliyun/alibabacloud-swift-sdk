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
        self._endpoint = try getEndpoint("pai", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func getQuotaWithOptions(_ QuotaId: String, _ request: GetQuotaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQuota",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(QuotaId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuota(_ QuotaId: String, _ request: GetQuotaRequest) async throws -> GetQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQuotaWithOptions(QuotaId as! String, request as! GetQuotaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupWithOptions(_ ResourceGroupID: String, _ tmpReq: GetResourceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetResourceGroupShrinkRequest = GetResourceGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isAIWorkspaceDataEnabled)) {
            query["IsAIWorkspaceDataEnabled"] = request.isAIWorkspaceDataEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceGroup",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceGroupID)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroup(_ ResourceGroupID: String, _ request: GetResourceGroupRequest) async throws -> GetResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceGroupWithOptions(ResourceGroupID as! String, request as! GetResourceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupMachineGroupWithOptions(_ MachineGroupID: String, _ ResourceGroupID: String, _ tmpReq: GetResourceGroupMachineGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceGroupMachineGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetResourceGroupMachineGroupShrinkRequest = GetResourceGroupMachineGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceGroupMachineGroup",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceGroupID)) + "/machinegroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(MachineGroupID)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceGroupMachineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupMachineGroup(_ MachineGroupID: String, _ ResourceGroupID: String, _ request: GetResourceGroupMachineGroupRequest) async throws -> GetResourceGroupMachineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceGroupMachineGroupWithOptions(MachineGroupID as! String, ResourceGroupID as! String, request as! GetResourceGroupMachineGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupRequestWithOptions(_ request: GetResourceGroupRequestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceGroupRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.podStatus)) {
            query["PodStatus"] = request.podStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupID)) {
            query["ResourceGroupID"] = request.resourceGroupID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceGroupRequest",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/data/request",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceGroupRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupRequest(_ request: GetResourceGroupRequestRequest) async throws -> GetResourceGroupRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceGroupRequestWithOptions(request as! GetResourceGroupRequestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupTotalWithOptions(_ request: GetResourceGroupTotalRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceGroupTotalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceGroupID)) {
            query["ResourceGroupID"] = request.resourceGroupID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceGroupTotal",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/data/total",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceGroupTotalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupTotal(_ request: GetResourceGroupTotalRequest) async throws -> GetResourceGroupTotalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceGroupTotalWithOptions(request as! GetResourceGroupTotalRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserAliUidByInstanceIdWithOptions(_ ResourceInstanceId: String, _ request: GetUserAliUidByInstanceIdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserAliUidByInstanceIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerUid)) {
            query["ResourceOwnerUid"] = request.resourceOwnerUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserAliUidByInstanceId",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/inner/pods/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceInstanceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserAliUidByInstanceIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserAliUidByInstanceId(_ ResourceInstanceId: String, _ request: GetUserAliUidByInstanceIdRequest) async throws -> GetUserAliUidByInstanceIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUserAliUidByInstanceIdWithOptions(ResourceInstanceId as! String, request as! GetUserAliUidByInstanceIdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserViewMetricsWithOptions(_ ResourceGroupID: String, _ request: GetUserViewMetricsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserViewMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeStep)) {
            query["TimeStep"] = request.timeStep ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserViewMetrics",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceGroupID)) + "/usermetrics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserViewMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserViewMetrics(_ ResourceGroupID: String, _ request: GetUserViewMetricsRequest) async throws -> GetUserViewMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUserViewMetricsWithOptions(ResourceGroupID as! String, request as! GetUserViewMetricsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCacheServicesWithOptions(_ request: ListDataCacheServicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataCacheServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.quotaId)) {
            query["QuotaId"] = request.quotaId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataCacheServices",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/caches",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataCacheServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCacheServices(_ request: ListDataCacheServicesRequest) async throws -> ListDataCacheServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDataCacheServicesWithOptions(request as! ListDataCacheServicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodesWithOptions(_ tmpReq: ListNodesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNodesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListNodesShrinkRequest = ListNodesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.healthCount)) {
            request.healthCountShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.healthCount, "HealthCount", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.healthRate)) {
            request.healthRateShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.healthRate, "HealthRate", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceleratorType)) {
            query["AcceleratorType"] = request.acceleratorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.availabilityZone)) {
            query["AvailabilityZone"] = request.availabilityZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cliqueID)) {
            query["CliqueID"] = request.cliqueID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterByQuotaId)) {
            query["FilterByQuotaId"] = request.filterByQuotaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterByResourceGroupIds)) {
            query["FilterByResourceGroupIds"] = request.filterByResourceGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.GPUType)) {
            query["GPUType"] = request.GPUType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthCountShrink)) {
            query["HealthCount"] = request.healthCountShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.healthRateShrink)) {
            query["HealthRate"] = request.healthRateShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hyperNode)) {
            query["HyperNode"] = request.hyperNode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hyperZone)) {
            query["HyperZone"] = request.hyperZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.layoutMode)) {
            query["LayoutMode"] = request.layoutMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.machineGroupIds)) {
            query["MachineGroupIds"] = request.machineGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeNames)) {
            query["NodeNames"] = request.nodeNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeStatuses)) {
            query["NodeStatuses"] = request.nodeStatuses ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeTypes)) {
            query["NodeTypes"] = request.nodeTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderInstanceIds)) {
            query["OrderInstanceIds"] = request.orderInstanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderStatuses)) {
            query["OrderStatuses"] = request.orderStatuses ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.paymentType)) {
            query["PaymentType"] = request.paymentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaId)) {
            query["QuotaId"] = request.quotaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reasonCodes)) {
            query["ReasonCodes"] = request.reasonCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIds)) {
            query["ResourceGroupIds"] = request.resourceGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNodes",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/nodes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNodes(_ request: ListNodesRequest) async throws -> ListNodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listNodesWithOptions(request as! ListNodesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotasWithOptions(_ request: ListQuotasRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListQuotasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labels)) {
            query["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.layoutMode)) {
            query["LayoutMode"] = request.layoutMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.parentQuotaId)) {
            query["ParentQuotaId"] = request.parentQuotaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaIds)) {
            query["QuotaIds"] = request.quotaIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaName)) {
            query["QuotaName"] = request.quotaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statuses)) {
            query["Statuses"] = request.statuses ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceIds)) {
            query["WorkspaceIds"] = request.workspaceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceName)) {
            query["WorkspaceName"] = request.workspaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListQuotas",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListQuotasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotas(_ request: ListQuotasRequest) async throws -> ListQuotasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listQuotasWithOptions(request as! ListQuotasRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceGroupMachineGroupsWithOptions(_ ResourceGroupID: String, _ request: ListResourceGroupMachineGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceGroupMachineGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.creatorID)) {
            query["CreatorID"] = request.creatorID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsSpec)) {
            query["EcsSpec"] = request.ecsSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderInstanceId)) {
            query["OrderInstanceId"] = request.orderInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.paymentDuration)) {
            query["PaymentDuration"] = request.paymentDuration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paymentDurationUnit)) {
            query["PaymentDurationUnit"] = request.paymentDurationUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paymentType)) {
            query["PaymentType"] = request.paymentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceGroupMachineGroups",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceGroupID)) + "/machinegroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceGroupMachineGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceGroupMachineGroups(_ ResourceGroupID: String, _ request: ListResourceGroupMachineGroupsRequest) async throws -> ListResourceGroupMachineGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourceGroupMachineGroupsWithOptions(ResourceGroupID as! String, request as! ListResourceGroupMachineGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceGroupsWithOptions(_ request: ListResourceGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.computingResourceProvider)) {
            query["ComputingResourceProvider"] = request.computingResourceProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showAll)) {
            query["ShowAll"] = request.showAll!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceGroups",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/resources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceGroups(_ request: ListResourceGroupsRequest) async throws -> ListResourceGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourceGroupsWithOptions(request as! ListResourceGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ tmpReq: ListTagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTagResourcesShrinkRequest = ListTagResourcesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resourceId)) {
            request.resourceIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceId, "ResourceId", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdShrink)) {
            query["ResourceId"] = request.resourceIdShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["Scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagOwnerUid)) {
            query["TagOwnerUid"] = request.tagOwnerUid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/inner/tags",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResources(_ request: ListTagResourcesRequest) async throws -> ListTagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTagResourcesWithOptions(request as! ListTagResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesSystemTagsWithOptions(_ request: TagResourcesSystemTagsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesSystemTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["Scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tagOwnerUid)) {
            body["TagOwnerUid"] = request.tagOwnerUid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResourcesSystemTags",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/inner/tags",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagResourcesSystemTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesSystemTags(_ request: TagResourcesSystemTagsRequest) async throws -> TagResourcesSystemTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await tagResourcesSystemTagsWithOptions(request as! TagResourcesSystemTagsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesSystemTagsWithOptions(_ tmpReq: UntagResourcesSystemTagsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesSystemTagsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UntagResourcesSystemTagsShrinkRequest = UntagResourcesSystemTagsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resourceId)) {
            request.resourceIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceId, "ResourceId", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tagKey)) {
            request.tagKeyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tagKey, "TagKey", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdShrink)) {
            query["ResourceId"] = request.resourceIdShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyShrink)) {
            query["TagKey"] = request.tagKeyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagOwnerUid)) {
            query["TagOwnerUid"] = request.tagOwnerUid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResourcesSystemTags",
            "version": "2024-05-21",
            "protocol": "HTTPS",
            "pathname": "/api/v1/inner/tags",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagResourcesSystemTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesSystemTags(_ request: UntagResourcesSystemTagsRequest) async throws -> UntagResourcesSystemTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await untagResourcesSystemTagsWithOptions(request as! UntagResourcesSystemTagsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
