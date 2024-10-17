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
        self._endpoint = try getEndpoint("emr-serverless-spark", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addMembersWithOptions(_ request: AddMembersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.memberArns)) {
            body["memberArns"] = request.memberArns ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddMembers",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/v1/auth/members",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addMembers(_ request: AddMembersRequest) async throws -> AddMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addMembersWithOptions(request as! AddMembersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelJobRunWithOptions(_ workspaceId: String, _ jobRunId: String, _ request: CancelJobRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelJobRunResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelJobRun",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/jobRuns/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobRunId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelJobRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelJobRun(_ workspaceId: String, _ jobRunId: String, _ request: CancelJobRunRequest) async throws -> CancelJobRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelJobRunWithOptions(workspaceId as! String, jobRunId as! String, request as! CancelJobRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSqlStatementWithOptions(_ workspaceId: String, _ request: CreateSqlStatementRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSqlStatementResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.codeContent)) {
            body["codeContent"] = request.codeContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultCatalog)) {
            body["defaultCatalog"] = request.defaultCatalog ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultDatabase)) {
            body["defaultDatabase"] = request.defaultDatabase ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.sqlComputeId)) {
            body["sqlComputeId"] = request.sqlComputeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSqlStatement",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/interactive/v1/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/statement",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSqlStatementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSqlStatement(_ workspaceId: String, _ request: CreateSqlStatementRequest) async throws -> CreateSqlStatementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSqlStatementWithOptions(workspaceId as! String, request as! CreateSqlStatementRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobRunWithOptions(_ workspaceId: String, _ jobRunId: String, _ request: GetJobRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetJobRunResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetJobRun",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/jobRuns/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobRunId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetJobRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobRun(_ workspaceId: String, _ jobRunId: String, _ request: GetJobRunRequest) async throws -> GetJobRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getJobRunWithOptions(workspaceId as! String, jobRunId as! String, request as! GetJobRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSqlStatementWithOptions(_ workspaceId: String, _ statementId: String, _ request: GetSqlStatementRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSqlStatementResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSqlStatement",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/interactive/v1/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/statement/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(statementId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSqlStatementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSqlStatement(_ workspaceId: String, _ statementId: String, _ request: GetSqlStatementRequest) async throws -> GetSqlStatementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSqlStatementWithOptions(workspaceId as! String, statementId as! String, request as! GetSqlStatementRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantRoleToUsersWithOptions(_ request: GrantRoleToUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantRoleToUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleArn)) {
            body["roleArn"] = request.roleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userArns)) {
            body["userArns"] = request.userArns ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantRoleToUsers",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/v1/auth/roles/grant",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantRoleToUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantRoleToUsers(_ request: GrantRoleToUsersRequest) async throws -> GrantRoleToUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await grantRoleToUsersWithOptions(request as! GrantRoleToUsersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobRunsWithOptions(_ workspaceId: String, _ tmpReq: ListJobRunsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJobRunsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListJobRunsShrinkRequest = ListJobRunsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.endTime)) {
            request.endTimeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.endTime, "endTime", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.startTime)) {
            request.startTimeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.startTime, "startTime", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.states)) {
            request.statesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.states, "states", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.creator)) {
            query["creator"] = request.creator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTimeShrink)) {
            query["endTime"] = request.endTimeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobRunDeploymentId)) {
            query["jobRunDeploymentId"] = request.jobRunDeploymentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobRunId)) {
            query["jobRunId"] = request.jobRunId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceQueueId)) {
            query["resourceQueueId"] = request.resourceQueueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimeShrink)) {
            query["startTime"] = request.startTimeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statesShrink)) {
            query["states"] = request.statesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["tags"] = request.tagsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJobRuns",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/jobRuns",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListJobRunsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobRuns(_ workspaceId: String, _ request: ListJobRunsRequest) async throws -> ListJobRunsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listJobRunsWithOptions(workspaceId as! String, request as! ListJobRunsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listReleaseVersionsWithOptions(_ request: ListReleaseVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListReleaseVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseType)) {
            query["releaseType"] = request.releaseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseVersion)) {
            query["releaseVersion"] = request.releaseVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseVersionStatus)) {
            query["releaseVersionStatus"] = request.releaseVersionStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListReleaseVersions",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/v1/releaseVersions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListReleaseVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listReleaseVersions(_ request: ListReleaseVersionsRequest) async throws -> ListReleaseVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listReleaseVersionsWithOptions(request as! ListReleaseVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSessionClustersWithOptions(_ workspaceId: String, _ request: ListSessionClustersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSessionClustersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.kind)) {
            query["kind"] = request.kind ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queueName)) {
            query["queueName"] = request.queueName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionClusterId)) {
            query["sessionClusterId"] = request.sessionClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSessionClusters",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/sessionClusters",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSessionClustersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSessionClusters(_ workspaceId: String, _ request: ListSessionClustersRequest) async throws -> ListSessionClustersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSessionClustersWithOptions(workspaceId as! String, request as! ListSessionClustersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspaceQueuesWithOptions(_ workspaceId: String, _ request: ListWorkspaceQueuesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkspaceQueuesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.environment)) {
            query["environment"] = request.environment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkspaceQueues",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/queues",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkspaceQueuesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspaceQueues(_ workspaceId: String, _ request: ListWorkspaceQueuesRequest) async throws -> ListWorkspaceQueuesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkspaceQueuesWithOptions(workspaceId as! String, request as! ListWorkspaceQueuesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspacesWithOptions(_ request: ListWorkspacesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkspacesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["state"] = request.state ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkspaces",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkspacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspaces(_ request: ListWorkspacesRequest) async throws -> ListWorkspacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkspacesWithOptions(request as! ListWorkspacesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startJobRunWithOptions(_ workspaceId: String, _ request: StartJobRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartJobRunResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeType)) {
            body["codeType"] = request.codeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configurationOverrides)) {
            body["configurationOverrides"] = request.configurationOverrides!;
        }
        if (!TeaUtils.Client.isUnset(request.displayReleaseVersion)) {
            body["displayReleaseVersion"] = request.displayReleaseVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executionTimeoutSeconds)) {
            body["executionTimeoutSeconds"] = request.executionTimeoutSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.fusion)) {
            body["fusion"] = request.fusion!;
        }
        if (!TeaUtils.Client.isUnset(request.jobDriver)) {
            body["jobDriver"] = request.jobDriver!;
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            body["jobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseVersion)) {
            body["releaseVersion"] = request.releaseVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceQueueId)) {
            body["resourceQueueId"] = request.resourceQueueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartJobRun",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/jobRuns",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartJobRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startJobRun(_ workspaceId: String, _ request: StartJobRunRequest) async throws -> StartJobRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startJobRunWithOptions(workspaceId as! String, request as! StartJobRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSessionClusterWithOptions(_ workspaceId: String, _ request: StartSessionClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartSessionClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.queueName)) {
            body["queueName"] = request.queueName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionClusterId)) {
            body["sessionClusterId"] = request.sessionClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartSessionCluster",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/sessionClusters/action/startSessionCluster",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartSessionClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSessionCluster(_ workspaceId: String, _ request: StartSessionClusterRequest) async throws -> StartSessionClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startSessionClusterWithOptions(workspaceId as! String, request as! StartSessionClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopSessionClusterWithOptions(_ workspaceId: String, _ request: StopSessionClusterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopSessionClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.queueName)) {
            body["queueName"] = request.queueName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionClusterId)) {
            body["sessionClusterId"] = request.sessionClusterId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopSessionCluster",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/v1/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/sessionClusters/action/stopSessionCluster",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopSessionClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopSessionCluster(_ workspaceId: String, _ request: StopSessionClusterRequest) async throws -> StopSessionClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopSessionClusterWithOptions(workspaceId as! String, request as! StopSessionClusterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func terminateSqlStatementWithOptions(_ workspaceId: String, _ statementId: String, _ request: TerminateSqlStatementRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TerminateSqlStatementResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TerminateSqlStatement",
            "version": "2023-08-08",
            "protocol": "HTTPS",
            "pathname": "/api/interactive/v1/workspace/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/statement/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(statementId)) + "/terminate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TerminateSqlStatementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func terminateSqlStatement(_ workspaceId: String, _ statementId: String, _ request: TerminateSqlStatementRequest) async throws -> TerminateSqlStatementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await terminateSqlStatementWithOptions(workspaceId as! String, statementId as! String, request as! TerminateSqlStatementRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
