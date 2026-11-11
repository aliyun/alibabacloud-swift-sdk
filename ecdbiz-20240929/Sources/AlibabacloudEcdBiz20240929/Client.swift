import Foundation
import Tea
import TeaUtils
import AlibabacloudGatewayPOP
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._productId = "EcdBiz"
        var gatewayClient: AlibabacloudGatewayPOP.Client = try AlibabacloudGatewayPOP.Client()
        self._spi = gatewayClient
        self._endpointRule = "regional"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("ecdbiz", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func activeRightsWithOptions(_ request: ActiveRightsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ActiveRightsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataDiskSize)) {
            query["DataDiskSize"] = request.dataDiskSize!;
        }
        if (!TeaUtils.Client.isUnset(request.desktopType)) {
            query["DesktopType"] = request.desktopType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rootDiskSize)) {
            query["RootDiskSize"] = request.rootDiskSize!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceIds)) {
            query["WorkspaceIds"] = request.workspaceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.wyidList)) {
            query["WyidList"] = request.wyidList ?? [];
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientIp)) {
            body["ClientIp"] = request.clientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customImageId)) {
            body["CustomImageId"] = request.customImageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hibernate)) {
            body["Hibernate"] = request.hibernate!;
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            body["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.rightsAssignedUser)) {
            bodyFlat["RightsAssignedUser"] = request.rightsAssignedUser ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.rightsGpuSpec)) {
            body["RightsGpuSpec"] = request.rightsGpuSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rightsIds)) {
            bodyFlat["RightsIds"] = request.rightsIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.rightsResourceArea)) {
            body["RightsResourceArea"] = request.rightsResourceArea ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rightsResourceImageOs)) {
            body["RightsResourceImageOs"] = request.rightsResourceImageOs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rightsResourceRegion)) {
            body["RightsResourceRegion"] = request.rightsResourceRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rightsResourceType)) {
            body["RightsResourceType"] = request.rightsResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rightsSpec)) {
            body["RightsSpec"] = request.rightsSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            body["VSwitchId"] = request.vSwitchId ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ActiveRights",
            "version": "2024-09-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ActiveRightsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func activeRights(_ request: ActiveRightsRequest) async throws -> ActiveRightsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await activeRightsWithOptions(request as! ActiveRightsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRightsWithOptions(_ request: ListRightsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRightsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessSceneCode)) {
            query["BusinessSceneCode"] = request.businessSceneCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rightsIds)) {
            query["RightsIds"] = request.rightsIds ?? [];
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aiDesktop)) {
            body["AiDesktop"] = request.aiDesktop!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderField)) {
            body["OrderField"] = request.orderField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            body["OrderType"] = request.orderType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.overseas)) {
            body["Overseas"] = request.overseas!;
        }
        if (!TeaUtils.Client.isUnset(request.rightsActiveStatus)) {
            body["RightsActiveStatus"] = request.rightsActiveStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rightsAssignedUser)) {
            body["RightsAssignedUser"] = request.rightsAssignedUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rightsPeriod)) {
            body["RightsPeriod"] = request.rightsPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rightsResourceId)) {
            body["RightsResourceId"] = request.rightsResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rightsResourceType)) {
            body["RightsResourceType"] = request.rightsResourceType ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.rightsResourceTypes)) {
            bodyFlat["RightsResourceTypes"] = request.rightsResourceTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.rightsSpec)) {
            body["RightsSpec"] = request.rightsSpec ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRights",
            "version": "2024-09-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRightsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRights(_ request: ListRightsRequest) async throws -> ListRightsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRightsWithOptions(request as! ListRightsRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
