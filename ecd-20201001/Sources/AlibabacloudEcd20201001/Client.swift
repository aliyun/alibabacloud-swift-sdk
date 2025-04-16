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
        self._endpointRule = "regional"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("ecd", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func calMcpToolWithOptions(_ request: CalMcpToolRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CalMcpToolResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.args)) {
            body["Args"] = request.args ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorization)) {
            body["Authorization"] = request.authorization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalUserId)) {
            body["ExternalUserId"] = request.externalUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.server)) {
            body["Server"] = request.server ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tool)) {
            body["Tool"] = request.tool ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CalMcpTool",
            "version": "2020-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CalMcpToolResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func calMcpTool(_ request: CalMcpToolRequest) async throws -> CalMcpToolResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await calMcpToolWithOptions(request as! CalMcpToolRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcpSessionWithOptions(_ request: CreateMcpSessionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMcpSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorization)) {
            body["Authorization"] = request.authorization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalUserId)) {
            body["ExternalUserId"] = request.externalUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMcpSession",
            "version": "2020-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMcpSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMcpSession(_ request: CreateMcpSessionRequest) async throws -> CreateMcpSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMcpSessionWithOptions(request as! CreateMcpSessionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDesktopsWithOptions(_ request: DescribeDesktopsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDesktopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.desktopName)) {
            query["DesktopName"] = request.desktopName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopStatus)) {
            query["DesktopStatus"] = request.desktopStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["DirectoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDesktops",
            "version": "2020-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDesktopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDesktops(_ request: DescribeDesktopsRequest) async throws -> DescribeDesktopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDesktopsWithOptions(request as! DescribeDesktopsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDirectoriesWithOptions(_ request: DescribeDirectoriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDirectoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["DirectoryId"] = request.directoryId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.directoryType)) {
            query["DirectoryType"] = request.directoryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDirectories",
            "version": "2020-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDirectoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDirectories(_ request: DescribeDirectoriesRequest) async throws -> DescribeDirectoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDirectoriesWithOptions(request as! DescribeDirectoriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConnectionTicketWithOptions(_ request: GetConnectionTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConnectionTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientOS)) {
            query["ClientOS"] = request.clientOS ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVersion)) {
            query["ClientVersion"] = request.clientVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConnectionTicket",
            "version": "2020-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConnectionTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConnectionTicket(_ request: GetConnectionTicketRequest) async throws -> GetConnectionTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getConnectionTicketWithOptions(request as! GetConnectionTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMcpResourceWithOptions(_ request: GetMcpResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMcpResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorization)) {
            body["Authorization"] = request.authorization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMcpResource",
            "version": "2020-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMcpResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMcpResource(_ request: GetMcpResourceRequest) async throws -> GetMcpResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMcpResourceWithOptions(request as! GetMcpResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcpToolsWithOptions(_ request: ListMcpToolsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMcpToolsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorization)) {
            body["Authorization"] = request.authorization ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMcpTools",
            "version": "2020-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMcpToolsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMcpTools(_ request: ListMcpToolsRequest) async throws -> ListMcpToolsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMcpToolsWithOptions(request as! ListMcpToolsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootDesktopsWithOptions(_ request: RebootDesktopsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RebootDesktopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientOS)) {
            query["ClientOS"] = request.clientOS ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVersion)) {
            query["ClientVersion"] = request.clientVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RebootDesktops",
            "version": "2020-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RebootDesktopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootDesktops(_ request: RebootDesktopsRequest) async throws -> RebootDesktopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rebootDesktopsWithOptions(request as! RebootDesktopsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseMcpSessionWithOptions(_ request: ReleaseMcpSessionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseMcpSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorization)) {
            body["Authorization"] = request.authorization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseMcpSession",
            "version": "2020-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseMcpSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseMcpSession(_ request: ReleaseMcpSessionRequest) async throws -> ReleaseMcpSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseMcpSessionWithOptions(request as! ReleaseMcpSessionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startDesktopsWithOptions(_ request: StartDesktopsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartDesktopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientOS)) {
            query["ClientOS"] = request.clientOS ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVersion)) {
            query["ClientVersion"] = request.clientVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartDesktops",
            "version": "2020-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartDesktopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startDesktops(_ request: StartDesktopsRequest) async throws -> StartDesktopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startDesktopsWithOptions(request as! StartDesktopsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDesktopsWithOptions(_ request: StopDesktopsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopDesktopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientOS)) {
            query["ClientOS"] = request.clientOS ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientVersion)) {
            query["ClientVersion"] = request.clientVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopDesktops",
            "version": "2020-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopDesktopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDesktops(_ request: StopDesktopsRequest) async throws -> StopDesktopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopDesktopsWithOptions(request as! StopDesktopsRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
