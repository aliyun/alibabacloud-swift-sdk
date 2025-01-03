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
        self._endpoint = try getEndpoint("devops", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addGroupMemberWithOptions(_ groupId: String, _ request: AddGroupMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddGroupMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessLevel)) {
            body["accessLevel"] = request.accessLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.aliyunPks)) {
            body["aliyunPks"] = request.aliyunPks ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddGroupMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)) + "/members/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddGroupMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addGroupMember(_ groupId: String, _ request: AddGroupMemberRequest) async throws -> AddGroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addGroupMemberWithOptions(groupId as! String, request as! AddGroupMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addPipelineRelationsWithOptions(_ organizationId: String, _ pipelineId: String, _ request: AddPipelineRelationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddPipelineRelationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.relObjectIds)) {
            query["relObjectIds"] = request.relObjectIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relObjectType)) {
            query["relObjectType"] = request.relObjectType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddPipelineRelations",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/pipelineRelations",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddPipelineRelationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addPipelineRelations(_ organizationId: String, _ pipelineId: String, _ request: AddPipelineRelationsRequest) async throws -> AddPipelineRelationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addPipelineRelationsWithOptions(organizationId as! String, pipelineId as! String, request as! AddPipelineRelationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addRepositoryMemberWithOptions(_ repositoryId: String, _ request: AddRepositoryMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddRepositoryMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessLevel)) {
            body["accessLevel"] = request.accessLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.aliyunPks)) {
            body["aliyunPks"] = request.aliyunPks ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddRepositoryMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/members",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddRepositoryMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addRepositoryMember(_ repositoryId: String, _ request: AddRepositoryMemberRequest) async throws -> AddRepositoryMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addRepositoryMemberWithOptions(repositoryId as! String, request as! AddRepositoryMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWebhookWithOptions(_ repositoryId: String, _ request: AddWebhookRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddWebhookResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSslVerification)) {
            body["enableSslVerification"] = request.enableSslVerification!;
        }
        if (!TeaUtils.Client.isUnset(request.mergeRequestsEvents)) {
            body["mergeRequestsEvents"] = request.mergeRequestsEvents!;
        }
        if (!TeaUtils.Client.isUnset(request.noteEvents)) {
            body["noteEvents"] = request.noteEvents!;
        }
        if (!TeaUtils.Client.isUnset(request.pushEvents)) {
            body["pushEvents"] = request.pushEvents!;
        }
        if (!TeaUtils.Client.isUnset(request.secretToken)) {
            body["secretToken"] = request.secretToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagPushEvents)) {
            body["tagPushEvents"] = request.tagPushEvents!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddWebhook",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/webhooks/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWebhook(_ repositoryId: String, _ request: AddWebhookRequest) async throws -> AddWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addWebhookWithOptions(repositoryId as! String, request as! AddWebhookRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelExecutionReleaseStageWithOptions(_ appName: String, _ releaseWorkflowSn: String, _ releaseStageSn: String, _ executionNumber: String, _ request: CancelExecutionReleaseStageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelExecutionReleaseStageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelExecutionReleaseStage",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/releaseWorkflows/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseWorkflowSn)) + "/releaseStages/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseStageSn)) + "/executions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(executionNumber)) + "%3Acancel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelExecutionReleaseStageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelExecutionReleaseStage(_ appName: String, _ releaseWorkflowSn: String, _ releaseStageSn: String, _ executionNumber: String, _ request: CancelExecutionReleaseStageRequest) async throws -> CancelExecutionReleaseStageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelExecutionReleaseStageWithOptions(appName as! String, releaseWorkflowSn as! String, releaseStageSn as! String, executionNumber as! String, request as! CancelExecutionReleaseStageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func closeMergeRequestWithOptions(_ repositoryId: String, _ localId: String, _ request: CloseMergeRequestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CloseMergeRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloseMergeRequest",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/merge_requests/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(localId)) + "/close",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloseMergeRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func closeMergeRequest(_ repositoryId: String, _ localId: String, _ request: CloseMergeRequestRequest) async throws -> CloseMergeRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await closeMergeRequestWithOptions(repositoryId as! String, localId as! String, request as! CloseMergeRequestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppMembersWithOptions(_ appName: String, _ request: CreateAppMembersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAppMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.playerList)) {
            body["playerList"] = request.playerList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.roleNames)) {
            body["roleNames"] = request.roleNames ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAppMembers",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/members",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAppMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppMembers(_ appName: String, _ request: CreateAppMembersRequest) async throws -> CreateAppMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAppMembersWithOptions(appName as! String, request as! CreateAppMembersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBranchWithOptions(_ repositoryId: String, _ request: CreateBranchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBranchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.branchName)) {
            body["branchName"] = request.branchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ref)) {
            body["ref"] = request.ref ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBranch",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/branches",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBranchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBranch(_ repositoryId: String, _ request: CreateBranchRequest) async throws -> CreateBranchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createBranchWithOptions(repositoryId as! String, request as! CreateBranchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChangeRequestWithOptions(_ appName: String, _ request: CreateChangeRequestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateChangeRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appCodeRepoSn)) {
            body["appCodeRepoSn"] = request.appCodeRepoSn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoDeleteBranchWhenEnd)) {
            body["autoDeleteBranchWhenEnd"] = request.autoDeleteBranchWhenEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.branchName)) {
            body["branchName"] = request.branchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createBranch)) {
            body["createBranch"] = request.createBranch!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccountId)) {
            body["ownerAccountId"] = request.ownerAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            body["ownerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateChangeRequest",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/changeRequests",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateChangeRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChangeRequest(_ appName: String, _ request: CreateChangeRequestRequest) async throws -> CreateChangeRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createChangeRequestWithOptions(appName as! String, request as! CreateChangeRequestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCheckRunWithOptions(_ request: CreateCheckRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCheckRunResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.annotations)) {
            body["annotations"] = request.annotations ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.completedAt)) {
            body["completedAt"] = request.completedAt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conclusion)) {
            body["conclusion"] = request.conclusion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detailsUrl)) {
            body["detailsUrl"] = request.detailsUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalId)) {
            body["externalId"] = request.externalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.headSha)) {
            body["headSha"] = request.headSha ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.output)) {
            body["output"] = request.output!;
        }
        if (!TeaUtils.Client.isUnset(request.startedAt)) {
            body["startedAt"] = request.startedAt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCheckRun",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/check_runs/create_check_run",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCheckRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCheckRun(_ request: CreateCheckRunRequest) async throws -> CreateCheckRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createCheckRunWithOptions(request as! CreateCheckRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCommentWithOptions(_ request: CreateCommentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCommentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localId)) {
            query["localId"] = request.localId!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commentType)) {
            body["commentType"] = request.commentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.draft)) {
            body["draft"] = request.draft!;
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["filePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lineNumber)) {
            body["lineNumber"] = request.lineNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.parentCommentBizId)) {
            body["parentCommentBizId"] = request.parentCommentBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.patchSetBizId)) {
            body["patchSetBizId"] = request.patchSetBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resolved)) {
            body["resolved"] = request.resolved!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateComment",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/code_reviews/comments/create_comment",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCommentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createComment(_ request: CreateCommentRequest) async throws -> CreateCommentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createCommentWithOptions(request as! CreateCommentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCommitStatusWithOptions(_ request: CreateCommitStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCommitStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sha)) {
            query["sha"] = request.sha ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.context)) {
            body["context"] = request.context ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            body["state"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetUrl)) {
            body["targetUrl"] = request.targetUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCommitStatus",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/repository/commit_statuses/create_commit_status",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCommitStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCommitStatus(_ request: CreateCommitStatusRequest) async throws -> CreateCommitStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createCommitStatusWithOptions(request as! CreateCommitStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCommitWithMultipleFilesWithOptions(_ request: CreateCommitWithMultipleFilesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCommitWithMultipleFilesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actions)) {
            body["actions"] = request.actions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.branch)) {
            body["branch"] = request.branch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commitMessage)) {
            body["commitMessage"] = request.commitMessage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCommitWithMultipleFiles",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/repository/commits/files",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCommitWithMultipleFilesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCommitWithMultipleFiles(_ request: CreateCommitWithMultipleFilesRequest) async throws -> CreateCommitWithMultipleFilesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createCommitWithMultipleFilesWithOptions(request as! CreateCommitWithMultipleFilesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeployKeyWithOptions(_ repositoryId: String, _ request: CreateDeployKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDeployKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.key)) {
            body["key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDeployKey",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/keys/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDeployKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeployKey(_ repositoryId: String, _ request: CreateDeployKeyRequest) async throws -> CreateDeployKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDeployKeyWithOptions(repositoryId as! String, request as! CreateDeployKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFileWithOptions(_ repositoryId: String, _ request: CreateFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.branchName)) {
            body["branchName"] = request.branchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commitMessage)) {
            body["commitMessage"] = request.commitMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encoding)) {
            body["encoding"] = request.encoding ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["filePath"] = request.filePath ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFile",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/files",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFile(_ repositoryId: String, _ request: CreateFileRequest) async throws -> CreateFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createFileWithOptions(repositoryId as! String, request as! CreateFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlowTagWithOptions(_ organizationId: String, _ request: CreateFlowTagRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFlowTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.color)) {
            query["color"] = request.color ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowTagGroupId)) {
            query["flowTagGroupId"] = request.flowTagGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFlowTag",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/flow/tags",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFlowTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlowTag(_ organizationId: String, _ request: CreateFlowTagRequest) async throws -> CreateFlowTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createFlowTagWithOptions(organizationId as! String, request as! CreateFlowTagRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlowTagGroupWithOptions(_ organizationId: String, _ request: CreateFlowTagGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFlowTagGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFlowTagGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/flow/tagGroups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFlowTagGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlowTagGroup(_ organizationId: String, _ request: CreateFlowTagGroupRequest) async throws -> CreateFlowTagGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createFlowTagGroupWithOptions(organizationId as! String, request as! CreateFlowTagGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHostGroupWithOptions(_ organizationId: String, _ request: CreateHostGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHostGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunRegion)) {
            body["aliyunRegion"] = request.aliyunRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsLabelKey)) {
            body["ecsLabelKey"] = request.ecsLabelKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsLabelValue)) {
            body["ecsLabelValue"] = request.ecsLabelValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsType)) {
            body["ecsType"] = request.ecsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envId)) {
            body["envId"] = request.envId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.machineInfos)) {
            body["machineInfos"] = request.machineInfos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceConnectionId)) {
            body["serviceConnectionId"] = request.serviceConnectionId!;
        }
        if (!TeaUtils.Client.isUnset(request.tagIds)) {
            body["tagIds"] = request.tagIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHostGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/hostGroups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHostGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHostGroup(_ organizationId: String, _ request: CreateHostGroupRequest) async throws -> CreateHostGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createHostGroupWithOptions(organizationId as! String, request as! CreateHostGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMergeRequestWithOptions(_ repositoryId: String, _ request: CreateMergeRequestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMergeRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createFrom)) {
            body["createFrom"] = request.createFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reviewerIds)) {
            body["reviewerIds"] = request.reviewerIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sourceBranch)) {
            body["sourceBranch"] = request.sourceBranch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceProjectId)) {
            body["sourceProjectId"] = request.sourceProjectId!;
        }
        if (!TeaUtils.Client.isUnset(request.targetBranch)) {
            body["targetBranch"] = request.targetBranch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetProjectId)) {
            body["targetProjectId"] = request.targetProjectId!;
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workItemIds)) {
            body["workItemIds"] = request.workItemIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMergeRequest",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/merge_requests",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMergeRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMergeRequest(_ repositoryId: String, _ request: CreateMergeRequestRequest) async throws -> CreateMergeRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createMergeRequestWithOptions(repositoryId as! String, request as! CreateMergeRequestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOAuthTokenWithOptions(_ request: CreateOAuthTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOAuthTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            body["clientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSecret)) {
            body["clientSecret"] = request.clientSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantType)) {
            body["grantType"] = request.grantType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.login)) {
            body["login"] = request.login ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOAuthToken",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/login/oauth/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOAuthTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOAuthToken(_ request: CreateOAuthTokenRequest) async throws -> CreateOAuthTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createOAuthTokenWithOptions(request as! CreateOAuthTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPipelineWithOptions(_ organizationId: String, _ request: CreatePipelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePipelineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePipeline",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPipeline(_ organizationId: String, _ request: CreatePipelineRequest) async throws -> CreatePipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPipelineWithOptions(organizationId as! String, request as! CreatePipelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPipelineGroupWithOptions(_ organizationId: String, _ request: CreatePipelineGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePipelineGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePipelineGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelineGroups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePipelineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPipelineGroup(_ organizationId: String, _ request: CreatePipelineGroupRequest) async throws -> CreatePipelineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPipelineGroupWithOptions(organizationId as! String, request as! CreatePipelineGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProjectWithOptions(_ organizationId: String, _ request: CreateProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customCode)) {
            body["customCode"] = request.customCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateIdentifier)) {
            body["templateIdentifier"] = request.templateIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProject",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/projects/createProject",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProject(_ organizationId: String, _ request: CreateProjectRequest) async throws -> CreateProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProjectWithOptions(organizationId as! String, request as! CreateProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProjectLabelWithOptions(_ request: CreateProjectLabelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProjectLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.color)) {
            body["color"] = request.color ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProjectLabel",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/labels",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProjectLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProjectLabel(_ request: CreateProjectLabelRequest) async throws -> CreateProjectLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProjectLabelWithOptions(request as! CreateProjectLabelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProtectdBranchWithOptions(_ repositoryId: String, _ request: CreateProtectdBranchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProtectdBranchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowMergeRoles)) {
            body["allowMergeRoles"] = request.allowMergeRoles ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.allowMergeUserIds)) {
            body["allowMergeUserIds"] = request.allowMergeUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.allowPushRoles)) {
            body["allowPushRoles"] = request.allowPushRoles ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.allowPushUserIds)) {
            body["allowPushUserIds"] = request.allowPushUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.branch)) {
            body["branch"] = request.branch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.mergeRequestSetting)) {
            body["mergeRequestSetting"] = request.mergeRequestSetting!;
        }
        if (!TeaUtils.Client.isUnset(request.testSettingDTO)) {
            body["testSettingDTO"] = request.testSettingDTO!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProtectdBranch",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/protect_branches",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProtectdBranchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProtectdBranch(_ repositoryId: String, _ request: CreateProtectdBranchRequest) async throws -> CreateProtectdBranchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProtectdBranchWithOptions(repositoryId as! String, request as! CreateProtectdBranchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPushRuleWithOptions(_ repositoryId: String, _ request: CreatePushRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePushRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ruleInfos)) {
            body["ruleInfos"] = request.ruleInfos ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePushRule",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/push_rule",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePushRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPushRule(_ repositoryId: String, _ request: CreatePushRuleRequest) async throws -> CreatePushRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPushRuleWithOptions(repositoryId as! String, request as! CreatePushRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepositoryWithOptions(_ request: CreateRepositoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createParentPath)) {
            query["createParentPath"] = request.createParentPath!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sync)) {
            query["sync"] = request.sync!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.avatarUrl)) {
            body["avatarUrl"] = request.avatarUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gitignoreType)) {
            body["gitignoreType"] = request.gitignoreType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.importAccount)) {
            body["importAccount"] = request.importAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.importDemoProject)) {
            body["importDemoProject"] = request.importDemoProject!;
        }
        if (!TeaUtils.Client.isUnset(request.importRepoType)) {
            body["importRepoType"] = request.importRepoType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.importToken)) {
            body["importToken"] = request.importToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.importTokenEncrypted)) {
            body["importTokenEncrypted"] = request.importTokenEncrypted ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.importUrl)) {
            body["importUrl"] = request.importUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initStandardService)) {
            body["initStandardService"] = request.initStandardService!;
        }
        if (!TeaUtils.Client.isUnset(request.isCryptoEnabled)) {
            body["isCryptoEnabled"] = request.isCryptoEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.localImportUrl)) {
            body["localImportUrl"] = request.localImportUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            body["namespaceId"] = request.namespaceId!;
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            body["path"] = request.path ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.readmeType)) {
            body["readmeType"] = request.readmeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibilityLevel)) {
            body["visibilityLevel"] = request.visibilityLevel!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepository",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepository(_ request: CreateRepositoryRequest) async throws -> CreateRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRepositoryWithOptions(request as! CreateRepositoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepositoryGroupWithOptions(_ request: CreateRepositoryGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepositoryGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.avatarUrl)) {
            body["avatarUrl"] = request.avatarUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            body["parentId"] = request.parentId!;
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            body["path"] = request.path ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibilityLevel)) {
            body["visibilityLevel"] = request.visibilityLevel!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepositoryGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/groups/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepositoryGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepositoryGroup(_ request: CreateRepositoryGroupRequest) async throws -> CreateRepositoryGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRepositoryGroupWithOptions(request as! CreateRepositoryGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceMemberWithOptions(_ organizationId: String, _ resourceType: String, _ resourceId: String, _ request: CreateResourceMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateResourceMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            body["accountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            body["roleName"] = request.roleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateResourceMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceType)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceId)) + "/members",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateResourceMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceMember(_ organizationId: String, _ resourceType: String, _ resourceId: String, _ request: CreateResourceMemberRequest) async throws -> CreateResourceMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createResourceMemberWithOptions(organizationId as! String, resourceType as! String, resourceId as! String, request as! CreateResourceMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceAuthWithOptions(_ organizationId: String, _ request: CreateServiceAuthRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceAuthResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceAuthType)) {
            query["serviceAuthType"] = request.serviceAuthType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceAuth",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/serviceAuths",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceAuthResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceAuth(_ organizationId: String, _ request: CreateServiceAuthRequest) async throws -> CreateServiceAuthResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceAuthWithOptions(organizationId as! String, request as! CreateServiceAuthRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceConnectionWithOptions(_ organizationId: String, _ request: CreateServiceConnectionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authType)) {
            body["authType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionName)) {
            body["connectionName"] = request.connectionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionType)) {
            body["connectionType"] = request.connectionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceAuthId)) {
            body["serviceAuthId"] = request.serviceAuthId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceConnection",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/createServiceConnection",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceConnection(_ organizationId: String, _ request: CreateServiceConnectionRequest) async throws -> CreateServiceConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceConnectionWithOptions(organizationId as! String, request as! CreateServiceConnectionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceCredentialWithOptions(_ organizationId: String, _ request: CreateServiceCredentialRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceCredentialResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            body["username"] = request.username ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceCredential",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/serviceCredentials",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceCredentialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceCredential(_ organizationId: String, _ request: CreateServiceCredentialRequest) async throws -> CreateServiceCredentialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceCredentialWithOptions(organizationId as! String, request as! CreateServiceCredentialRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSprintWithOptions(_ organizationId: String, _ request: CreateSprintRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSprintResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["endDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceIdentifier)) {
            body["spaceIdentifier"] = request.spaceIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.staffIds)) {
            body["staffIds"] = request.staffIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["startDate"] = request.startDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSprint",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/sprints/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSprintResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSprint(_ organizationId: String, _ request: CreateSprintRequest) async throws -> CreateSprintResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSprintWithOptions(organizationId as! String, request as! CreateSprintRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSshKeyWithOptions(_ organizationId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSshKeyResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSshKey",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/sshKey",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSshKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSshKey(_ organizationId: String) async throws -> CreateSshKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSshKeyWithOptions(organizationId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTagWithOptions(_ repositoryId: String, _ request: CreateTagRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.message)) {
            body["message"] = request.message ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ref)) {
            body["ref"] = request.ref ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagName)) {
            body["tagName"] = request.tagName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTag",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/tags/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTag(_ repositoryId: String, _ request: CreateTagRequest) async throws -> CreateTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTagWithOptions(repositoryId as! String, request as! CreateTagRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTestCaseWithOptions(_ organizationId: String, _ request: CreateTestCaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTestCaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assignedTo)) {
            body["assignedTo"] = request.assignedTo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryIdentifier)) {
            body["directoryIdentifier"] = request.directoryIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fieldValueList)) {
            body["fieldValueList"] = request.fieldValueList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["priority"] = request.priority ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceIdentifier)) {
            body["spaceIdentifier"] = request.spaceIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            body["subject"] = request.subject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.testcaseStepContentInfo)) {
            body["testcaseStepContentInfo"] = request.testcaseStepContentInfo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTestCase",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/testhub/testcase",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTestCaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTestCase(_ organizationId: String, _ request: CreateTestCaseRequest) async throws -> CreateTestCaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTestCaseWithOptions(organizationId as! String, request as! CreateTestCaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserKeyWithOptions(_ request: CreateUserKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expireTime)) {
            body["expireTime"] = request.expireTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyScope)) {
            body["keyScope"] = request.keyScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicKey)) {
            body["publicKey"] = request.publicKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUserKey",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v3/user/keys/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserKey(_ request: CreateUserKeyRequest) async throws -> CreateUserKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createUserKeyWithOptions(request as! CreateUserKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVariableGroupWithOptions(_ organizationId: String, _ request: CreateVariableGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVariableGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.variables)) {
            body["variables"] = request.variables ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVariableGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/variableGroups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVariableGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVariableGroup(_ organizationId: String, _ request: CreateVariableGroupRequest) async throws -> CreateVariableGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createVariableGroupWithOptions(organizationId as! String, request as! CreateVariableGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkitemWithOptions(_ organizationId: String, _ request: CreateWorkitemRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkitemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assignedTo)) {
            body["assignedTo"] = request.assignedTo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            body["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.descriptionFormat)) {
            body["descriptionFormat"] = request.descriptionFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fieldValueList)) {
            body["fieldValueList"] = request.fieldValueList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.parent)) {
            body["parent"] = request.parent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.participant)) {
            body["participant"] = request.participant ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.space)) {
            body["space"] = request.space ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceIdentifier)) {
            body["spaceIdentifier"] = request.spaceIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceType)) {
            body["spaceType"] = request.spaceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sprint)) {
            body["sprint"] = request.sprint ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            body["subject"] = request.subject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracker)) {
            body["tracker"] = request.tracker ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.verifier)) {
            body["verifier"] = request.verifier ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.workitemType)) {
            body["workitemType"] = request.workitemType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkitem",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWorkitemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkitem(_ organizationId: String, _ request: CreateWorkitemRequest) async throws -> CreateWorkitemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createWorkitemWithOptions(organizationId as! String, request as! CreateWorkitemRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkitemCommentWithOptions(_ organizationId: String, _ request: CreateWorkitemCommentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkitemCommentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formatType)) {
            body["formatType"] = request.formatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            body["parentId"] = request.parentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workitemIdentifier)) {
            body["workitemIdentifier"] = request.workitemIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkitemComment",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/comment",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWorkitemCommentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkitemComment(_ organizationId: String, _ request: CreateWorkitemCommentRequest) async throws -> CreateWorkitemCommentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createWorkitemCommentWithOptions(organizationId as! String, request as! CreateWorkitemCommentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkitemEstimateWithOptions(_ organizationId: String, _ request: CreateWorkitemEstimateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkitemEstimateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordUserIdentifier)) {
            body["recordUserIdentifier"] = request.recordUserIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spentTime)) {
            body["spentTime"] = request.spentTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workitemIdentifier)) {
            body["workitemIdentifier"] = request.workitemIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkitemEstimate",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/estimate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWorkitemEstimateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkitemEstimate(_ organizationId: String, _ request: CreateWorkitemEstimateRequest) async throws -> CreateWorkitemEstimateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createWorkitemEstimateWithOptions(organizationId as! String, request as! CreateWorkitemEstimateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkitemRecordWithOptions(_ organizationId: String, _ request: CreateWorkitemRecordRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkitemRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actualTime)) {
            body["actualTime"] = request.actualTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtEnd)) {
            body["gmtEnd"] = request.gmtEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtStart)) {
            body["gmtStart"] = request.gmtStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordUserIdentifier)) {
            body["recordUserIdentifier"] = request.recordUserIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workitemIdentifier)) {
            body["workitemIdentifier"] = request.workitemIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkitemRecord",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/record",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWorkitemRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkitemRecord(_ organizationId: String, _ request: CreateWorkitemRecordRequest) async throws -> CreateWorkitemRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createWorkitemRecordWithOptions(organizationId as! String, request as! CreateWorkitemRecordRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkitemV2WithOptions(_ organizationId: String, _ request: CreateWorkitemV2Request, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkitemV2Response {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assignedTo)) {
            body["assignedTo"] = request.assignedTo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            body["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fieldValueList)) {
            body["fieldValueList"] = request.fieldValueList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.parentIdentifier)) {
            body["parentIdentifier"] = request.parentIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.participants)) {
            body["participants"] = request.participants ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.spaceIdentifier)) {
            body["spaceIdentifier"] = request.spaceIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sprintIdentifier)) {
            body["sprintIdentifier"] = request.sprintIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            body["subject"] = request.subject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.trackers)) {
            body["trackers"] = request.trackers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.verifier)) {
            body["verifier"] = request.verifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versions)) {
            body["versions"] = request.versions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.workitemTypeIdentifier)) {
            body["workitemTypeIdentifier"] = request.workitemTypeIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkitemV2",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitem",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWorkitemV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkitemV2(_ organizationId: String, _ request: CreateWorkitemV2Request) async throws -> CreateWorkitemV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createWorkitemV2WithOptions(organizationId as! String, request as! CreateWorkitemV2Request, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppMemberWithOptions(_ appName: String, _ request: DeleteAppMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAppMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subjectId)) {
            query["subjectId"] = request.subjectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subjectType)) {
            query["subjectType"] = request.subjectType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAppMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/members",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAppMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppMember(_ appName: String, _ request: DeleteAppMemberRequest) async throws -> DeleteAppMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAppMemberWithOptions(appName as! String, request as! DeleteAppMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBranchWithOptions(_ repositoryId: String, _ request: DeleteBranchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBranchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.branchName)) {
            query["branchName"] = request.branchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBranch",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/branches/delete",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBranchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBranch(_ repositoryId: String, _ request: DeleteBranchRequest) async throws -> DeleteBranchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteBranchWithOptions(repositoryId as! String, request as! DeleteBranchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFileWithOptions(_ repositoryId: String, _ request: DeleteFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.branchName)) {
            query["branchName"] = request.branchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commitMessage)) {
            query["commitMessage"] = request.commitMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            query["filePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFile",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/files/delete",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFile(_ repositoryId: String, _ request: DeleteFileRequest) async throws -> DeleteFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteFileWithOptions(repositoryId as! String, request as! DeleteFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlowTagWithOptions(_ organizationId: String, _ id: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFlowTagResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFlowTag",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/flow/tags/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(id)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFlowTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlowTag(_ organizationId: String, _ id: String) async throws -> DeleteFlowTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteFlowTagWithOptions(organizationId as! String, id as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlowTagGroupWithOptions(_ organizationId: String, _ id: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFlowTagGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFlowTagGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/flow/tagGroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(id)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFlowTagGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlowTagGroup(_ organizationId: String, _ id: String) async throws -> DeleteFlowTagGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteFlowTagGroupWithOptions(organizationId as! String, id as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGroupMemberWithOptions(_ groupId: String, _ request: DeleteGroupMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGroupMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aliyunPk)) {
            query["aliyunPk"] = request.aliyunPk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.memberType)) {
            body["memberType"] = request.memberType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGroupMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)) + "/members/remove/aliyun_pk",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGroupMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGroupMember(_ groupId: String, _ request: DeleteGroupMemberRequest) async throws -> DeleteGroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteGroupMemberWithOptions(groupId as! String, request as! DeleteGroupMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHostGroupWithOptions(_ organizationId: String, _ id: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHostGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHostGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/hostGroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(id)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHostGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHostGroup(_ organizationId: String, _ id: String) async throws -> DeleteHostGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteHostGroupWithOptions(organizationId as! String, id as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePipelineWithOptions(_ organizationId: String, _ pipelineId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePipelineResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePipeline",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePipeline(_ organizationId: String, _ pipelineId: String) async throws -> DeletePipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deletePipelineWithOptions(organizationId as! String, pipelineId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePipelineGroupWithOptions(_ organizationId: String, _ groupId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePipelineGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePipelineGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelineGroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePipelineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePipelineGroup(_ organizationId: String, _ groupId: String) async throws -> DeletePipelineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deletePipelineGroupWithOptions(organizationId as! String, groupId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePipelineRelationsWithOptions(_ organizationId: String, _ pipelineId: String, _ request: DeletePipelineRelationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePipelineRelationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.relObjectId)) {
            query["relObjectId"] = request.relObjectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relObjectType)) {
            query["relObjectType"] = request.relObjectType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePipelineRelations",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/pipelineRelations",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePipelineRelationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePipelineRelations(_ organizationId: String, _ pipelineId: String, _ request: DeletePipelineRelationsRequest) async throws -> DeletePipelineRelationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deletePipelineRelationsWithOptions(organizationId as! String, pipelineId as! String, request as! DeletePipelineRelationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProjectWithOptions(_ organizationId: String, _ request: DeleteProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["identifier"] = request.identifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProject",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/projects/delete",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProject(_ organizationId: String, _ request: DeleteProjectRequest) async throws -> DeleteProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProjectWithOptions(organizationId as! String, request as! DeleteProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProjectLabelWithOptions(_ labelId: String, _ request: DeleteProjectLabelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProjectLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProjectLabel",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/labels/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(labelId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProjectLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProjectLabel(_ labelId: String, _ request: DeleteProjectLabelRequest) async throws -> DeleteProjectLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProjectLabelWithOptions(labelId as! String, request as! DeleteProjectLabelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProtectedBranchWithOptions(_ repositoryId: String, _ protectedBranchId: String, _ request: DeleteProtectedBranchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProtectedBranchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProtectedBranch",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/protect_branches/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(protectedBranchId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProtectedBranchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProtectedBranch(_ repositoryId: String, _ protectedBranchId: String, _ request: DeleteProtectedBranchRequest) async throws -> DeleteProtectedBranchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProtectedBranchWithOptions(repositoryId as! String, protectedBranchId as! String, request as! DeleteProtectedBranchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePushRuleWithOptions(_ repositoryId: String, _ pushRuleId: String, _ request: DeletePushRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePushRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePushRule",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/push_rule/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pushRuleId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePushRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePushRule(_ repositoryId: String, _ pushRuleId: String, _ request: DeletePushRuleRequest) async throws -> DeletePushRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deletePushRuleWithOptions(repositoryId as! String, pushRuleId as! String, request as! DeletePushRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryWithOptions(_ repositoryId: String, _ request: DeleteRepositoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reason)) {
            body["reason"] = request.reason ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepository",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/remove",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepository(_ repositoryId: String, _ request: DeleteRepositoryRequest) async throws -> DeleteRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepositoryWithOptions(repositoryId as! String, request as! DeleteRepositoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryGroupWithOptions(_ groupId: String, _ request: DeleteRepositoryGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepositoryGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reason)) {
            body["reason"] = request.reason ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepositoryGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)) + "/remove",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepositoryGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryGroup(_ groupId: String, _ request: DeleteRepositoryGroupRequest) async throws -> DeleteRepositoryGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepositoryGroupWithOptions(groupId as! String, request as! DeleteRepositoryGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryMemberWithOptions(_ repositoryId: String, _ aliyunPk: String, _ request: DeleteRepositoryMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepositoryMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.memberType)) {
            body["memberType"] = request.memberType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepositoryMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/members/delete/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(aliyunPk)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepositoryMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryMember(_ repositoryId: String, _ aliyunPk: String, _ request: DeleteRepositoryMemberRequest) async throws -> DeleteRepositoryMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepositoryMemberWithOptions(repositoryId as! String, aliyunPk as! String, request as! DeleteRepositoryMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryWebhookWithOptions(_ repositoryId: String, _ hookId: String, _ request: DeleteRepositoryWebhookRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepositoryWebhookResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepositoryWebhook",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/hooks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(hookId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepositoryWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryWebhook(_ repositoryId: String, _ hookId: String, _ request: DeleteRepositoryWebhookRequest) async throws -> DeleteRepositoryWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepositoryWebhookWithOptions(repositoryId as! String, hookId as! String, request as! DeleteRepositoryWebhookRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceMemberWithOptions(_ organizationId: String, _ resourceType: String, _ resourceId: String, _ accountId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteResourceMemberResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteResourceMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceType)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceId)) + "/members/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(accountId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteResourceMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceMember(_ organizationId: String, _ resourceType: String, _ resourceId: String, _ accountId: String) async throws -> DeleteResourceMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteResourceMemberWithOptions(organizationId as! String, resourceType as! String, resourceId as! String, accountId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTagWithOptions(_ repositoryId: String, _ request: DeleteTagRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagName)) {
            query["tagName"] = request.tagName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTag",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/tags/delete",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTag(_ repositoryId: String, _ request: DeleteTagRequest) async throws -> DeleteTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteTagWithOptions(repositoryId as! String, request as! DeleteTagRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserKeyWithOptions(_ keyId: String, _ request: DeleteUserKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserKey",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v3/user/keys/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(keyId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserKey(_ keyId: String, _ request: DeleteUserKeyRequest) async throws -> DeleteUserKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteUserKeyWithOptions(keyId as! String, request as! DeleteUserKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVariableGroupWithOptions(_ organizationId: String, _ id: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVariableGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVariableGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/variableGroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(id)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVariableGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVariableGroup(_ organizationId: String, _ id: String) async throws -> DeleteVariableGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteVariableGroupWithOptions(organizationId as! String, id as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkitemWithOptions(_ organizationId: String, _ request: DeleteWorkitemRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWorkitemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["identifier"] = request.identifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWorkitem",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitem/delete",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWorkitemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkitem(_ organizationId: String, _ request: DeleteWorkitemRequest) async throws -> DeleteWorkitemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteWorkitemWithOptions(organizationId as! String, request as! DeleteWorkitemRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkitemAllCommentWithOptions(_ organizationId: String, _ request: DeleteWorkitemAllCommentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWorkitemAllCommentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["identifier"] = request.identifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWorkitemAllComment",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/deleteAllComment",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWorkitemAllCommentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkitemAllComment(_ organizationId: String, _ request: DeleteWorkitemAllCommentRequest) async throws -> DeleteWorkitemAllCommentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteWorkitemAllCommentWithOptions(organizationId as! String, request as! DeleteWorkitemAllCommentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkitemCommentWithOptions(_ organizationId: String, _ request: DeleteWorkitemCommentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWorkitemCommentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commentId)) {
            body["commentId"] = request.commentId!;
        }
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            body["identifier"] = request.identifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWorkitemComment",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/deleteComent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWorkitemCommentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkitemComment(_ organizationId: String, _ request: DeleteWorkitemCommentRequest) async throws -> DeleteWorkitemCommentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteWorkitemCommentWithOptions(organizationId as! String, request as! DeleteWorkitemCommentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableDeployKeyWithOptions(_ repositoryId: String, _ keyId: String, _ request: EnableDeployKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableDeployKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableDeployKey",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/keys/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(keyId)) + "/enable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableDeployKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableDeployKey(_ repositoryId: String, _ keyId: String, _ request: EnableDeployKeyRequest) async throws -> EnableDeployKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableDeployKeyWithOptions(repositoryId as! String, keyId as! String, request as! EnableDeployKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeChangeRequestReleaseStageWithOptions(_ appName: String, _ releaseWorkflowSn: String, _ releaseStageSn: String, _ request: ExecuteChangeRequestReleaseStageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteChangeRequestReleaseStageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["params"] = request.params ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteChangeRequestReleaseStage",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/releaseWorkflows/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseWorkflowSn)) + "/releaseStages/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseStageSn)) + "%3Aexecute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteChangeRequestReleaseStageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeChangeRequestReleaseStage(_ appName: String, _ releaseWorkflowSn: String, _ releaseStageSn: String, _ request: ExecuteChangeRequestReleaseStageRequest) async throws -> ExecuteChangeRequestReleaseStageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeChangeRequestReleaseStageWithOptions(appName as! String, releaseWorkflowSn as! String, releaseStageSn as! String, request as! ExecuteChangeRequestReleaseStageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightCustomValueWithOptions(_ organizationId: String, _ request: ExportInsightCustomValueRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportInsightCustomValueResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportInsightCustomValue",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/data/customValues",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportInsightCustomValueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightCustomValue(_ organizationId: String, _ request: ExportInsightCustomValueRequest) async throws -> ExportInsightCustomValueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await exportInsightCustomValueWithOptions(organizationId as! String, request as! ExportInsightCustomValueRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightExpectedWorkTimeWithOptions(_ organizationId: String, _ request: ExportInsightExpectedWorkTimeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportInsightExpectedWorkTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportInsightExpectedWorkTime",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/data/expectedWorkTimes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportInsightExpectedWorkTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightExpectedWorkTime(_ organizationId: String, _ request: ExportInsightExpectedWorkTimeRequest) async throws -> ExportInsightExpectedWorkTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await exportInsightExpectedWorkTimeWithOptions(organizationId as! String, request as! ExportInsightExpectedWorkTimeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightFieldWithOptions(_ organizationId: String, _ request: ExportInsightFieldRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportInsightFieldResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportInsightField",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/data/fields",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportInsightFieldResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightField(_ organizationId: String, _ request: ExportInsightFieldRequest) async throws -> ExportInsightFieldResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await exportInsightFieldWithOptions(organizationId as! String, request as! ExportInsightFieldRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightSpaceWithOptions(_ organizationId: String, _ request: ExportInsightSpaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportInsightSpaceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportInsightSpace",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/data/spaces",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportInsightSpaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightSpace(_ organizationId: String, _ request: ExportInsightSpaceRequest) async throws -> ExportInsightSpaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await exportInsightSpaceWithOptions(organizationId as! String, request as! ExportInsightSpaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightSpaceRefWithOptions(_ organizationId: String, _ request: ExportInsightSpaceRefRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportInsightSpaceRefResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportInsightSpaceRef",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/data/spaceRefs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportInsightSpaceRefResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightSpaceRef(_ organizationId: String, _ request: ExportInsightSpaceRefRequest) async throws -> ExportInsightSpaceRefResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await exportInsightSpaceRefWithOptions(organizationId as! String, request as! ExportInsightSpaceRefRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightSprintWithOptions(_ organizationId: String, _ request: ExportInsightSprintRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportInsightSprintResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportInsightSprint",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/data/sprints",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportInsightSprintResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightSprint(_ organizationId: String, _ request: ExportInsightSprintRequest) async throws -> ExportInsightSprintResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await exportInsightSprintWithOptions(organizationId as! String, request as! ExportInsightSprintRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightTagRefWithOptions(_ organizationId: String, _ request: ExportInsightTagRefRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportInsightTagRefResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportInsightTagRef",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/data/tagRefs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportInsightTagRefResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightTagRef(_ organizationId: String, _ request: ExportInsightTagRefRequest) async throws -> ExportInsightTagRefResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await exportInsightTagRefWithOptions(organizationId as! String, request as! ExportInsightTagRefRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightWorkTimeWithOptions(_ organizationId: String, _ request: ExportInsightWorkTimeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportInsightWorkTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportInsightWorkTime",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/data/workTimes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportInsightWorkTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightWorkTime(_ organizationId: String, _ request: ExportInsightWorkTimeRequest) async throws -> ExportInsightWorkTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await exportInsightWorkTimeWithOptions(organizationId as! String, request as! ExportInsightWorkTimeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightWorkitemStatusWithOptions(_ organizationId: String, _ request: ExportInsightWorkitemStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportInsightWorkitemStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportInsightWorkitemStatus",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/data/workitemStatuses",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportInsightWorkitemStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightWorkitemStatus(_ organizationId: String, _ request: ExportInsightWorkitemStatusRequest) async throws -> ExportInsightWorkitemStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await exportInsightWorkitemStatusWithOptions(organizationId as! String, request as! ExportInsightWorkitemStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightWorkitemStatusJoinWorkitemDefectExtraWithOptions(_ organizationId: String, _ request: ExportInsightWorkitemStatusJoinWorkitemDefectExtraRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportInsightWorkitemStatusJoinWorkitemDefectExtraResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportInsightWorkitemStatusJoinWorkitemDefectExtra",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/data/workitemStatusJoinWorkitemDefectExtras",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportInsightWorkitemStatusJoinWorkitemDefectExtraResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightWorkitemStatusJoinWorkitemDefectExtra(_ organizationId: String, _ request: ExportInsightWorkitemStatusJoinWorkitemDefectExtraRequest) async throws -> ExportInsightWorkitemStatusJoinWorkitemDefectExtraResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await exportInsightWorkitemStatusJoinWorkitemDefectExtraWithOptions(organizationId as! String, request as! ExportInsightWorkitemStatusJoinWorkitemDefectExtraRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightWorkitemVersionWithOptions(_ organizationId: String, _ request: ExportInsightWorkitemVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportInsightWorkitemVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportInsightWorkitemVersion",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/data/workitemVersions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportInsightWorkitemVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportInsightWorkitemVersion(_ organizationId: String, _ request: ExportInsightWorkitemVersionRequest) async throws -> ExportInsightWorkitemVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await exportInsightWorkitemVersionWithOptions(organizationId as! String, request as! ExportInsightWorkitemVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportWorkitemActivityWithOptions(_ organizationId: String, _ request: ExportWorkitemActivityRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportWorkitemActivityResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportWorkitemActivity",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/data/workitemActivities",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportWorkitemActivityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportWorkitemActivity(_ organizationId: String, _ request: ExportWorkitemActivityRequest) async throws -> ExportWorkitemActivityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await exportWorkitemActivityWithOptions(organizationId as! String, request as! ExportWorkitemActivityRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApplicationWithOptions(_ appName: String, _ request: GetApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApplication",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApplication(_ appName: String, _ request: GetApplicationRequest) async throws -> GetApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getApplicationWithOptions(appName as! String, request as! GetApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBranchInfoWithOptions(_ repositoryId: String, _ request: GetBranchInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBranchInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.branchName)) {
            query["branchName"] = request.branchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBranchInfo",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/branches/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBranchInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBranchInfo(_ repositoryId: String, _ request: GetBranchInfoRequest) async throws -> GetBranchInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getBranchInfoWithOptions(repositoryId as! String, request as! GetBranchInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCheckRunWithOptions(_ request: GetCheckRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCheckRunResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkRunId)) {
            query["checkRunId"] = request.checkRunId!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCheckRun",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/check_runs/get_check_run",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCheckRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCheckRun(_ request: GetCheckRunRequest) async throws -> GetCheckRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCheckRunWithOptions(request as! GetCheckRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCodeupOrganizationWithOptions(_ identity: String, _ request: GetCodeupOrganizationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCodeupOrganizationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCodeupOrganization",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(identity)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCodeupOrganizationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCodeupOrganization(_ identity: String, _ request: GetCodeupOrganizationRequest) async throws -> GetCodeupOrganizationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCodeupOrganizationWithOptions(identity as! String, request as! GetCodeupOrganizationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCompareDetailWithOptions(_ repositoryId: String, _ request: GetCompareDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCompareDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["from"] = request.from ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxDiffByte)) {
            query["maxDiffByte"] = request.maxDiffByte!;
        }
        if (!TeaUtils.Client.isUnset(request.maxDiffFile)) {
            query["maxDiffFile"] = request.maxDiffFile!;
        }
        if (!TeaUtils.Client.isUnset(request.mergeBase)) {
            query["mergeBase"] = request.mergeBase!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            query["to"] = request.to ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCompareDetail",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/commits/compare/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCompareDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCompareDetail(_ repositoryId: String, _ request: GetCompareDetailRequest) async throws -> GetCompareDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCompareDetailWithOptions(repositoryId as! String, request as! GetCompareDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomFieldOptionWithOptions(_ organizationId: String, _ fieldId: String, _ request: GetCustomFieldOptionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCustomFieldOptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.spaceIdentifier)) {
            query["spaceIdentifier"] = request.spaceIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceType)) {
            query["spaceType"] = request.spaceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workitemTypeIdentifier)) {
            query["workitemTypeIdentifier"] = request.workitemTypeIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCustomFieldOption",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/fields/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(fieldId)) + "/getCustomOption",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCustomFieldOptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomFieldOption(_ organizationId: String, _ fieldId: String, _ request: GetCustomFieldOptionRequest) async throws -> GetCustomFieldOptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCustomFieldOptionWithOptions(organizationId as! String, fieldId as! String, request as! GetCustomFieldOptionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileBlobsWithOptions(_ repositoryId: String, _ request: GetFileBlobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFileBlobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            query["filePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["from"] = request.from!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ref)) {
            query["ref"] = request.ref ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            query["to"] = request.to!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFileBlobs",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/files/blobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFileBlobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileBlobs(_ repositoryId: String, _ request: GetFileBlobsRequest) async throws -> GetFileBlobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFileBlobsWithOptions(repositoryId as! String, request as! GetFileBlobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileLastCommitWithOptions(_ repositoryId: String, _ request: GetFileLastCommitRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFileLastCommitResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            query["filePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sha)) {
            query["sha"] = request.sha ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showSignature)) {
            query["showSignature"] = request.showSignature!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFileLastCommit",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/files/lastCommit",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFileLastCommitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileLastCommit(_ repositoryId: String, _ request: GetFileLastCommitRequest) async throws -> GetFileLastCommitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFileLastCommitWithOptions(repositoryId as! String, request as! GetFileLastCommitRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFlowTagGroupWithOptions(_ organizationId: String, _ id: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFlowTagGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFlowTagGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/flow/tagGroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(id)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFlowTagGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFlowTagGroup(_ organizationId: String, _ id: String) async throws -> GetFlowTagGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFlowTagGroupWithOptions(organizationId as! String, id as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGroupByPathWithOptions(_ request: GetGroupByPathRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGroupByPathResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identity)) {
            query["identity"] = request.identity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGroupByPath",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/4/groups/find_by_path",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGroupByPathResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGroupByPath(_ request: GetGroupByPathRequest) async throws -> GetGroupByPathResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGroupByPathWithOptions(request as! GetGroupByPathRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGroupDetailWithOptions(_ request: GetGroupDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGroupDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["groupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGroupDetail",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/groups/get_detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGroupDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGroupDetail(_ request: GetGroupDetailRequest) async throws -> GetGroupDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGroupDetailWithOptions(request as! GetGroupDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHostGroupWithOptions(_ organizationId: String, _ id: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHostGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHostGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/hostGroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(id)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHostGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHostGroup(_ organizationId: String, _ id: String) async throws -> GetHostGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHostGroupWithOptions(organizationId as! String, id as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMergeRequestWithOptions(_ repositoryId: String, _ localId: String, _ request: GetMergeRequestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMergeRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMergeRequest",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/merge_requests/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(localId)) + "/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMergeRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMergeRequest(_ repositoryId: String, _ localId: String, _ request: GetMergeRequestRequest) async throws -> GetMergeRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMergeRequestWithOptions(repositoryId as! String, localId as! String, request as! GetMergeRequestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMergeRequestChangeTreeWithOptions(_ request: GetMergeRequestChangeTreeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMergeRequestChangeTreeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromPatchSetBizId)) {
            query["fromPatchSetBizId"] = request.fromPatchSetBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localId)) {
            query["localId"] = request.localId!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toPatchSetBizId)) {
            query["toPatchSetBizId"] = request.toPatchSetBizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMergeRequestChangeTree",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/merge_requests/diffs/change_tree",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMergeRequestChangeTreeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMergeRequestChangeTree(_ request: GetMergeRequestChangeTreeRequest) async throws -> GetMergeRequestChangeTreeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMergeRequestChangeTreeWithOptions(request as! GetMergeRequestChangeTreeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrganizationMemberWithOptions(_ organizationId: String, _ accountId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrganizationMemberResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOrganizationMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/members/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(accountId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOrganizationMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrganizationMember(_ organizationId: String, _ accountId: String) async throws -> GetOrganizationMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getOrganizationMemberWithOptions(organizationId as! String, accountId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineWithOptions(_ organizationId: String, _ pipelineId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPipelineResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPipeline",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipeline(_ organizationId: String, _ pipelineId: String) async throws -> GetPipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPipelineWithOptions(organizationId as! String, pipelineId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineArtifactUrlWithOptions(_ organizationId: String, _ request: GetPipelineArtifactUrlRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPipelineArtifactUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            query["filePath"] = request.filePath ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPipelineArtifactUrl",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipeline/getArtifactDownloadUrl",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPipelineArtifactUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineArtifactUrl(_ organizationId: String, _ request: GetPipelineArtifactUrlRequest) async throws -> GetPipelineArtifactUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPipelineArtifactUrlWithOptions(organizationId as! String, request as! GetPipelineArtifactUrlRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineEmasArtifactUrlWithOptions(_ organizationId: String, _ emasJobInstanceId: String, _ md5: String, _ pipelineId: String, _ pipelineRunId: String, _ request: GetPipelineEmasArtifactUrlRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPipelineEmasArtifactUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceConnectionId)) {
            query["serviceConnectionId"] = request.serviceConnectionId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPipelineEmasArtifactUrl",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/pipelineRun/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId)) + "/emas/artifact/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(emasJobInstanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(md5)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPipelineEmasArtifactUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineEmasArtifactUrl(_ organizationId: String, _ emasJobInstanceId: String, _ md5: String, _ pipelineId: String, _ pipelineRunId: String, _ request: GetPipelineEmasArtifactUrlRequest) async throws -> GetPipelineEmasArtifactUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPipelineEmasArtifactUrlWithOptions(organizationId as! String, emasJobInstanceId as! String, md5 as! String, pipelineId as! String, pipelineRunId as! String, request as! GetPipelineEmasArtifactUrlRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineGroupWithOptions(_ organizationId: String, _ groupId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPipelineGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPipelineGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelineGroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPipelineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineGroup(_ organizationId: String, _ groupId: String) async throws -> GetPipelineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPipelineGroupWithOptions(organizationId as! String, groupId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineRunWithOptions(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPipelineRunResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPipelineRun",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/pipelineRuns/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPipelineRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineRun(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String) async throws -> GetPipelineRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPipelineRunWithOptions(organizationId as! String, pipelineId as! String, pipelineRunId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineScanReportUrlWithOptions(_ organizationId: String, _ request: GetPipelineScanReportUrlRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPipelineScanReportUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reportPath)) {
            body["reportPath"] = request.reportPath ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPipelineScanReportUrl",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipeline/getPipelineScanReportUrl",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPipelineScanReportUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPipelineScanReportUrl(_ organizationId: String, _ request: GetPipelineScanReportUrlRequest) async throws -> GetPipelineScanReportUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPipelineScanReportUrlWithOptions(organizationId as! String, request as! GetPipelineScanReportUrlRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectInfoWithOptions(_ organizationId: String, _ projectId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProjectInfo",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/project/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectInfo(_ organizationId: String, _ projectId: String) async throws -> GetProjectInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProjectInfoWithOptions(organizationId as! String, projectId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectMemberWithOptions(_ repositoryId: String, _ aliyunPk: String, _ request: GetProjectMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProjectMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/members/get/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(aliyunPk)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectMember(_ repositoryId: String, _ aliyunPk: String, _ request: GetProjectMemberRequest) async throws -> GetProjectMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProjectMemberWithOptions(repositoryId as! String, aliyunPk as! String, request as! GetProjectMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getReleaseStagePipelineRunWithOptions(_ appName: String, _ releaseWorkflowSn: String, _ releaseStageSn: String, _ executionNumber: String, _ request: GetReleaseStagePipelineRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetReleaseStagePipelineRunResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetReleaseStagePipelineRun",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/releaseWorkflows/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseWorkflowSn)) + "/releaseStages/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseStageSn)) + "/executions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(executionNumber)) + "%3AgetPipelineRun",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetReleaseStagePipelineRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getReleaseStagePipelineRun(_ appName: String, _ releaseWorkflowSn: String, _ releaseStageSn: String, _ executionNumber: String, _ request: GetReleaseStagePipelineRunRequest) async throws -> GetReleaseStagePipelineRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getReleaseStagePipelineRunWithOptions(appName as! String, releaseWorkflowSn as! String, releaseStageSn as! String, executionNumber as! String, request as! GetReleaseStagePipelineRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepositoryWithOptions(_ request: GetRepositoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identity)) {
            query["identity"] = request.identity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepository",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/get",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepository(_ request: GetRepositoryRequest) async throws -> GetRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepositoryWithOptions(request as! GetRepositoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepositoryCommitWithOptions(_ repositoryId: String, _ sha: String, _ request: GetRepositoryCommitRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepositoryCommitResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showSignature)) {
            query["showSignature"] = request.showSignature!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepositoryCommit",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/commits/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sha)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepositoryCommitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepositoryCommit(_ repositoryId: String, _ sha: String, _ request: GetRepositoryCommitRequest) async throws -> GetRepositoryCommitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepositoryCommitWithOptions(repositoryId as! String, sha as! String, request as! GetRepositoryCommitRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepositoryTagWithOptions(_ repositoryId: String, _ request: GetRepositoryTagRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepositoryTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagName)) {
            query["tagName"] = request.tagName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepositoryTag",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/tag/info",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepositoryTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepositoryTag(_ repositoryId: String, _ request: GetRepositoryTagRequest) async throws -> GetRepositoryTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepositoryTagWithOptions(repositoryId as! String, request as! GetRepositoryTagRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSearchCodePreviewWithOptions(_ request: GetSearchCodePreviewRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSearchCodePreviewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docId)) {
            query["docId"] = request.docId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isDsl)) {
            query["isDsl"] = request.isDsl!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSearchCodePreview",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/search/code_preview",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSearchCodePreviewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSearchCodePreview(_ request: GetSearchCodePreviewRequest) async throws -> GetSearchCodePreviewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSearchCodePreviewWithOptions(request as! GetSearchCodePreviewRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSprintInfoWithOptions(_ organizationId: String, _ sprintId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSprintInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSprintInfo",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/sprints/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sprintId)) + "/getSprintinfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSprintInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSprintInfo(_ organizationId: String, _ sprintId: String) async throws -> GetSprintInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSprintInfoWithOptions(organizationId as! String, sprintId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTestResultListWithOptions(_ organizationId: String, _ testPlanIdentifier: String, _ request: GetTestResultListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTestResultListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.conditions)) {
            body["conditions"] = request.conditions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryIdentifier)) {
            body["directoryIdentifier"] = request.directoryIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTestResultList",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/testhub/testplan/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(testPlanIdentifier)) + "/testresults",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTestResultListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTestResultList(_ organizationId: String, _ testPlanIdentifier: String, _ request: GetTestResultListRequest) async throws -> GetTestResultListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTestResultListWithOptions(organizationId as! String, testPlanIdentifier as! String, request as! GetTestResultListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTestcaseListWithOptions(_ organizationId: String, _ request: GetTestcaseListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTestcaseListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.conditions)) {
            body["conditions"] = request.conditions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryIdentifier)) {
            body["directoryIdentifier"] = request.directoryIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResult)) {
            body["maxResult"] = request.maxResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceIdentifier)) {
            body["spaceIdentifier"] = request.spaceIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTestcaseList",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/testhub/testcases",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTestcaseListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTestcaseList(_ organizationId: String, _ request: GetTestcaseListRequest) async throws -> GetTestcaseListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTestcaseListWithOptions(organizationId as! String, request as! GetTestcaseListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserInfoWithOptions(_ request: GetUserInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserInfo",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/users/current",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserInfo(_ request: GetUserInfoRequest) async throws -> GetUserInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUserInfoWithOptions(request as! GetUserInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVMDeployOrderWithOptions(_ organizationId: String, _ pipelineId: String, _ deployOrderId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVMDeployOrderResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVMDeployOrder",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/deploy/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deployOrderId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVMDeployOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVMDeployOrder(_ organizationId: String, _ pipelineId: String, _ deployOrderId: String) async throws -> GetVMDeployOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getVMDeployOrderWithOptions(organizationId as! String, pipelineId as! String, deployOrderId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVariableGroupWithOptions(_ organizationId: String, _ id: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVariableGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVariableGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/variableGroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(id)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVariableGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVariableGroup(_ organizationId: String, _ id: String) async throws -> GetVariableGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getVariableGroupWithOptions(organizationId as! String, id as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkItemActivityWithOptions(_ organizationId: String, _ workitemId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkItemActivityResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkItemActivity",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemId)) + "/getActivity",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkItemActivityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkItemActivity(_ organizationId: String, _ workitemId: String) async throws -> GetWorkItemActivityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWorkItemActivityWithOptions(organizationId as! String, workitemId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkItemInfoWithOptions(_ organizationId: String, _ workitemId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkItemInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkItemInfo",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkItemInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkItemInfo(_ organizationId: String, _ workitemId: String) async throws -> GetWorkItemInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWorkItemInfoWithOptions(organizationId as! String, workitemId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkItemWorkFlowInfoWithOptions(_ organizationId: String, _ workitemId: String, _ request: GetWorkItemWorkFlowInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkItemWorkFlowInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configurationId)) {
            query["configurationId"] = request.configurationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkItemWorkFlowInfo",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemId)) + "/getWorkflowInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkItemWorkFlowInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkItemWorkFlowInfo(_ organizationId: String, _ workitemId: String, _ request: GetWorkItemWorkFlowInfoRequest) async throws -> GetWorkItemWorkFlowInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWorkItemWorkFlowInfoWithOptions(organizationId as! String, workitemId as! String, request as! GetWorkItemWorkFlowInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkitemAttachmentCreatemetaWithOptions(_ organizationId: String, _ workitemIdentifier: String, _ request: GetWorkitemAttachmentCreatemetaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkitemAttachmentCreatemetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["fileName"] = request.fileName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkitemAttachmentCreatemeta",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitem/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemIdentifier)) + "/attachment/createmeta",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkitemAttachmentCreatemetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkitemAttachmentCreatemeta(_ organizationId: String, _ workitemIdentifier: String, _ request: GetWorkitemAttachmentCreatemetaRequest) async throws -> GetWorkitemAttachmentCreatemetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWorkitemAttachmentCreatemetaWithOptions(organizationId as! String, workitemIdentifier as! String, request as! GetWorkitemAttachmentCreatemetaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkitemCommentListWithOptions(_ organizationId: String, _ workitemId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkitemCommentListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkitemCommentList",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemId)) + "/commentList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkitemCommentListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkitemCommentList(_ organizationId: String, _ workitemId: String) async throws -> GetWorkitemCommentListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWorkitemCommentListWithOptions(organizationId as! String, workitemId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkitemFileWithOptions(_ organizationId: String, _ workitemIdentifier: String, _ fileIdentifier: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkitemFileResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkitemFile",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitem/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemIdentifier)) + "/files/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(fileIdentifier)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkitemFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkitemFile(_ organizationId: String, _ workitemIdentifier: String, _ fileIdentifier: String) async throws -> GetWorkitemFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWorkitemFileWithOptions(organizationId as! String, workitemIdentifier as! String, fileIdentifier as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkitemRelationsWithOptions(_ organizationId: String, _ workitemId: String, _ request: GetWorkitemRelationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkitemRelationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.relationType)) {
            query["relationType"] = request.relationType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkitemRelations",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemId)) + "/getRelations",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkitemRelationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkitemRelations(_ organizationId: String, _ workitemId: String, _ request: GetWorkitemRelationsRequest) async throws -> GetWorkitemRelationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWorkitemRelationsWithOptions(organizationId as! String, workitemId as! String, request as! GetWorkitemRelationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkitemTimeTypeListWithOptions(_ organizationId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkitemTimeTypeListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkitemTimeTypeList",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/type/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkitemTimeTypeListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkitemTimeTypeList(_ organizationId: String) async throws -> GetWorkitemTimeTypeListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWorkitemTimeTypeListWithOptions(organizationId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func joinPipelineGroupWithOptions(_ organizationId: String, _ request: JoinPipelineGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> JoinPipelineGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["groupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.pipelineIds)) {
            query["pipelineIds"] = request.pipelineIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "JoinPipelineGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelineGroups/join",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(JoinPipelineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func joinPipelineGroup(_ organizationId: String, _ request: JoinPipelineGroupRequest) async throws -> JoinPipelineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await joinPipelineGroupWithOptions(organizationId as! String, request as! JoinPipelineGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func linkMergeRequestLabelWithOptions(_ request: LinkMergeRequestLabelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> LinkMergeRequestLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localId)) {
            query["localId"] = request.localId!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelIds)) {
            body["labelIds"] = request.labelIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LinkMergeRequestLabel",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/merge_requests/link_labels",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LinkMergeRequestLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func linkMergeRequestLabel(_ request: LinkMergeRequestLabelRequest) async throws -> LinkMergeRequestLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await linkMergeRequestLabelWithOptions(request as! LinkMergeRequestLabelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAllReleaseWorkflowsWithOptions(_ appName: String, _ request: ListAllReleaseWorkflowsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAllReleaseWorkflowsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAllReleaseWorkflows",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/releaseWorkflows",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAllReleaseWorkflowsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAllReleaseWorkflows(_ appName: String, _ request: ListAllReleaseWorkflowsRequest) async throws -> ListAllReleaseWorkflowsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAllReleaseWorkflowsWithOptions(appName as! String, request as! ListAllReleaseWorkflowsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppReleaseStageExecutionIntegratedMetadataWithOptions(_ appName: String, _ releaseWorkflowSn: String, _ releaseStageSn: String, _ executionNumber: String, _ request: ListAppReleaseStageExecutionIntegratedMetadataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAppReleaseStageExecutionIntegratedMetadataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAppReleaseStageExecutionIntegratedMetadata",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/releaseWorkflows/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseWorkflowSn)) + "/releaseStages/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseStageSn)) + "/executions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(executionNumber)) + "/integratedMetadata",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAppReleaseStageExecutionIntegratedMetadataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppReleaseStageExecutionIntegratedMetadata(_ appName: String, _ releaseWorkflowSn: String, _ releaseStageSn: String, _ executionNumber: String, _ request: ListAppReleaseStageExecutionIntegratedMetadataRequest) async throws -> ListAppReleaseStageExecutionIntegratedMetadataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAppReleaseStageExecutionIntegratedMetadataWithOptions(appName as! String, releaseWorkflowSn as! String, releaseStageSn as! String, executionNumber as! String, request as! ListAppReleaseStageExecutionIntegratedMetadataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppReleaseStageExecutionsWithOptions(_ appName: String, _ releaseWorkflowSn: String, _ releaseStageSn: String, _ request: ListAppReleaseStageExecutionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAppReleaseStageExecutionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["orderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pagination)) {
            query["pagination"] = request.pagination ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.perPage)) {
            query["perPage"] = request.perPage!;
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAppReleaseStageExecutions",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/releaseWorkflows/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseWorkflowSn)) + "/releaseStages/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseStageSn)) + "/executions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAppReleaseStageExecutionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppReleaseStageExecutions(_ appName: String, _ releaseWorkflowSn: String, _ releaseStageSn: String, _ request: ListAppReleaseStageExecutionsRequest) async throws -> ListAppReleaseStageExecutionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAppReleaseStageExecutionsWithOptions(appName as! String, releaseWorkflowSn as! String, releaseStageSn as! String, request as! ListAppReleaseStageExecutionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationMembersWithOptions(_ appName: String, _ request: ListApplicationMembersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApplicationMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApplicationMembers",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/members",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApplicationMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationMembers(_ appName: String, _ request: ListApplicationMembersRequest) async throws -> ListApplicationMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listApplicationMembersWithOptions(appName as! String, request as! ListApplicationMembersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationsWithOptions(_ request: ListApplicationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApplicationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["orderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pagination)) {
            query["pagination"] = request.pagination ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.perPage)) {
            query["perPage"] = request.perPage!;
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApplications",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps%3Asearch",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApplicationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplications(_ request: ListApplicationsRequest) async throws -> ListApplicationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listApplicationsWithOptions(request as! ListApplicationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChangeRequestWorkflowExecutionsWithOptions(_ appName: String, _ sn: String, _ request: ListChangeRequestWorkflowExecutionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChangeRequestWorkflowExecutionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["orderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.perPage)) {
            query["perPage"] = request.perPage!;
        }
        if (!TeaUtils.Client.isUnset(request.releaseStageSn)) {
            query["releaseStageSn"] = request.releaseStageSn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.releaseWorkflowSn)) {
            query["releaseWorkflowSn"] = request.releaseWorkflowSn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChangeRequestWorkflowExecutions",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/changeRequests/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sn)) + "/executions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChangeRequestWorkflowExecutionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChangeRequestWorkflowExecutions(_ appName: String, _ sn: String, _ request: ListChangeRequestWorkflowExecutionsRequest) async throws -> ListChangeRequestWorkflowExecutionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listChangeRequestWorkflowExecutionsWithOptions(appName as! String, sn as! String, request as! ListChangeRequestWorkflowExecutionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChangeRequestsWithOptions(_ appName: String, _ tmpReq: ListChangeRequestsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChangeRequestsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListChangeRequestsShrinkRequest = ListChangeRequestsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.appNameList)) {
            request.appNameListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.appNameList, "appNameList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.ownerIdList)) {
            request.ownerIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ownerIdList, "ownerIdList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.stateList)) {
            request.stateListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.stateList, "stateList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appNameListShrink)) {
            query["appNameList"] = request.appNameListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayNameKeyword)) {
            query["displayNameKeyword"] = request.displayNameKeyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["orderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerIdListShrink)) {
            query["ownerIdList"] = request.ownerIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pagination)) {
            query["pagination"] = request.pagination ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.perPage)) {
            query["perPage"] = request.perPage!;
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stateListShrink)) {
            query["stateList"] = request.stateListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChangeRequests",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/changeRequests",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChangeRequestsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChangeRequests(_ appName: String, _ request: ListChangeRequestsRequest) async throws -> ListChangeRequestsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listChangeRequestsWithOptions(appName as! String, request as! ListChangeRequestsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCheckRunsWithOptions(_ request: ListCheckRunsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCheckRunsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.ref)) {
            query["ref"] = request.ref ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCheckRuns",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/check_runs/list_check_runs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCheckRunsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCheckRuns(_ request: ListCheckRunsRequest) async throws -> ListCheckRunsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listCheckRunsWithOptions(request as! ListCheckRunsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCommitStatusesWithOptions(_ request: ListCommitStatusesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCommitStatusesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sha)) {
            query["sha"] = request.sha ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCommitStatuses",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/repository/commit_statuses/list_commit_statuses",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCommitStatusesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCommitStatuses(_ request: ListCommitStatusesRequest) async throws -> ListCommitStatusesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listCommitStatusesWithOptions(request as! ListCommitStatusesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFlowTagGroupsWithOptions(_ organizationId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFlowTagGroupsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFlowTagGroups",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/flow/tagGroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFlowTagGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFlowTagGroups(_ organizationId: String) async throws -> ListFlowTagGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFlowTagGroupsWithOptions(organizationId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupMemberWithOptions(_ groupId: String, _ request: ListGroupMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGroupMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGroupMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)) + "/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGroupMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupMember(_ groupId: String, _ request: ListGroupMemberRequest) async throws -> ListGroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGroupMemberWithOptions(groupId as! String, request as! ListGroupMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupRepositoriesWithOptions(_ groupId: String, _ request: ListGroupRepositoriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGroupRepositoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["search"] = request.search ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGroupRepositories",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)) + "/projects",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGroupRepositoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupRepositories(_ groupId: String, _ request: ListGroupRepositoriesRequest) async throws -> ListGroupRepositoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGroupRepositoriesWithOptions(groupId as! String, request as! ListGroupRepositoriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostGroupsWithOptions(_ organizationId: String, _ request: ListHostGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHostGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createEndTime)) {
            query["createEndTime"] = request.createEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.createStartTime)) {
            query["createStartTime"] = request.createStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.creatorAccountIds)) {
            query["creatorAccountIds"] = request.creatorAccountIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ids)) {
            query["ids"] = request.ids ?? "";
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
        if (!TeaUtils.Client.isUnset(request.pageOrder)) {
            query["pageOrder"] = request.pageOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSort)) {
            query["pageSort"] = request.pageSort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHostGroups",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/hostGroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHostGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostGroups(_ organizationId: String, _ request: ListHostGroupsRequest) async throws -> ListHostGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listHostGroupsWithOptions(organizationId as! String, request as! ListHostGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJoinedOrganizationsWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJoinedOrganizationsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJoinedOrganizations",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/users/joinedOrgs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListJoinedOrganizationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJoinedOrganizations() async throws -> ListJoinedOrganizationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listJoinedOrganizationsWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMergeRequestCommentsWithOptions(_ request: ListMergeRequestCommentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMergeRequestCommentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localId)) {
            query["localId"] = request.localId!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commentType)) {
            body["commentType"] = request.commentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["filePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.patchSetBizIds)) {
            body["patchSetBizIds"] = request.patchSetBizIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resolved)) {
            body["resolved"] = request.resolved!;
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            body["state"] = request.state ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMergeRequestComments",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/merge_requests/comments/list_comments",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMergeRequestCommentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMergeRequestComments(_ request: ListMergeRequestCommentsRequest) async throws -> ListMergeRequestCommentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMergeRequestCommentsWithOptions(request as! ListMergeRequestCommentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMergeRequestFilesReadsWithOptions(_ request: ListMergeRequestFilesReadsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMergeRequestFilesReadsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromPatchSetBizId)) {
            query["fromPatchSetBizId"] = request.fromPatchSetBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localId)) {
            query["localId"] = request.localId!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toPatchSetBizId)) {
            query["toPatchSetBizId"] = request.toPatchSetBizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMergeRequestFilesReads",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/merge_requests/diffs/files_read_infos",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMergeRequestFilesReadsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMergeRequestFilesReads(_ request: ListMergeRequestFilesReadsRequest) async throws -> ListMergeRequestFilesReadsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMergeRequestFilesReadsWithOptions(request as! ListMergeRequestFilesReadsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMergeRequestLabelsWithOptions(_ request: ListMergeRequestLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMergeRequestLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localId)) {
            query["localId"] = request.localId!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMergeRequestLabels",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/merge_requests/labels",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMergeRequestLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMergeRequestLabels(_ request: ListMergeRequestLabelsRequest) async throws -> ListMergeRequestLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMergeRequestLabelsWithOptions(request as! ListMergeRequestLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMergeRequestPatchSetsWithOptions(_ request: ListMergeRequestPatchSetsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMergeRequestPatchSetsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localId)) {
            query["localId"] = request.localId!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMergeRequestPatchSets",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/merge_requests/diffs/list_patchsets",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMergeRequestPatchSetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMergeRequestPatchSets(_ request: ListMergeRequestPatchSetsRequest) async throws -> ListMergeRequestPatchSetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMergeRequestPatchSetsWithOptions(request as! ListMergeRequestPatchSetsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMergeRequestsWithOptions(_ request: ListMergeRequestsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMergeRequestsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorIds)) {
            query["authorIds"] = request.authorIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdAfter)) {
            query["createdAfter"] = request.createdAfter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdBefore)) {
            query["createdBefore"] = request.createdBefore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupIds)) {
            query["groupIds"] = request.groupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelIds)) {
            query["labelIds"] = request.labelIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["orderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectIds)) {
            query["projectIds"] = request.projectIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reviewerIds)) {
            query["reviewerIds"] = request.reviewerIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["state"] = request.state ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMergeRequests",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/merge_requests/advanced_search",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMergeRequestsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMergeRequests(_ request: ListMergeRequestsRequest) async throws -> ListMergeRequestsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMergeRequestsWithOptions(request as! ListMergeRequestsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizationMembersWithOptions(_ organizationId: String, _ request: ListOrganizationMembersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOrganizationMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.containsExternInfo)) {
            query["containsExternInfo"] = request.containsExternInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.externUid)) {
            query["externUid"] = request.externUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinTimeFrom)) {
            query["joinTimeFrom"] = request.joinTimeFrom!;
        }
        if (!TeaUtils.Client.isUnset(request.joinTimeTo)) {
            query["joinTimeTo"] = request.joinTimeTo!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationMemberName)) {
            query["organizationMemberName"] = request.organizationMemberName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.provider)) {
            query["provider"] = request.provider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["state"] = request.state ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOrganizationMembers",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/members",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOrganizationMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizationMembers(_ organizationId: String, _ request: ListOrganizationMembersRequest) async throws -> ListOrganizationMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listOrganizationMembersWithOptions(organizationId as! String, request as! ListOrganizationMembersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizationsWithOptions(_ request: ListOrganizationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOrganizationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessLevel)) {
            query["accessLevel"] = request.accessLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minAccessLevel)) {
            query["minAccessLevel"] = request.minAccessLevel!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOrganizations",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organizations/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOrganizationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizations(_ request: ListOrganizationsRequest) async throws -> ListOrganizationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listOrganizationsWithOptions(request as! ListOrganizationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelineGroupPipelinesWithOptions(_ organizationId: String, _ groupId: String, _ request: ListPipelineGroupPipelinesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPipelineGroupPipelinesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createEndTime)) {
            query["createEndTime"] = request.createEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.createStartTime)) {
            query["createStartTime"] = request.createStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.executeEndTime)) {
            query["executeEndTime"] = request.executeEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.executeStartTime)) {
            query["executeStartTime"] = request.executeStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pipelineName)) {
            query["pipelineName"] = request.pipelineName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultStatusList)) {
            query["resultStatusList"] = request.resultStatusList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPipelineGroupPipelines",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelineGroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)) + "/pipelines",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPipelineGroupPipelinesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelineGroupPipelines(_ organizationId: String, _ groupId: String, _ request: ListPipelineGroupPipelinesRequest) async throws -> ListPipelineGroupPipelinesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPipelineGroupPipelinesWithOptions(organizationId as! String, groupId as! String, request as! ListPipelineGroupPipelinesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelineGroupsWithOptions(_ organizationId: String, _ request: ListPipelineGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPipelineGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPipelineGroups",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelineGroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPipelineGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelineGroups(_ organizationId: String, _ request: ListPipelineGroupsRequest) async throws -> ListPipelineGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPipelineGroupsWithOptions(organizationId as! String, request as! ListPipelineGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelineJobHistorysWithOptions(_ organizationId: String, _ pipelineId: String, _ request: ListPipelineJobHistorysRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPipelineJobHistorysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["identifier"] = request.identifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPipelineJobHistorys",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/job/historys",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPipelineJobHistorysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelineJobHistorys(_ organizationId: String, _ pipelineId: String, _ request: ListPipelineJobHistorysRequest) async throws -> ListPipelineJobHistorysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPipelineJobHistorysWithOptions(organizationId as! String, pipelineId as! String, request as! ListPipelineJobHistorysRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelineJobsWithOptions(_ organizationId: String, _ pipelineId: String, _ request: ListPipelineJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPipelineJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPipelineJobs",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/jobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPipelineJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelineJobs(_ organizationId: String, _ pipelineId: String, _ request: ListPipelineJobsRequest) async throws -> ListPipelineJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPipelineJobsWithOptions(organizationId as! String, pipelineId as! String, request as! ListPipelineJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelineRelationsWithOptions(_ organizationId: String, _ pipelineId: String, _ request: ListPipelineRelationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPipelineRelationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.relObjectType)) {
            query["relObjectType"] = request.relObjectType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPipelineRelations",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/pipelineRelations",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPipelineRelationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelineRelations(_ organizationId: String, _ pipelineId: String, _ request: ListPipelineRelationsRequest) async throws -> ListPipelineRelationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPipelineRelationsWithOptions(organizationId as! String, pipelineId as! String, request as! ListPipelineRelationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelineRunsWithOptions(_ organizationId: String, _ pipelineId: String, _ request: ListPipelineRunsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPipelineRunsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerMode)) {
            query["triggerMode"] = request.triggerMode!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPipelineRuns",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/pipelineRuns",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPipelineRunsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelineRuns(_ organizationId: String, _ pipelineId: String, _ request: ListPipelineRunsRequest) async throws -> ListPipelineRunsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPipelineRunsWithOptions(organizationId as! String, pipelineId as! String, request as! ListPipelineRunsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelinesWithOptions(_ organizationId: String, _ request: ListPipelinesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPipelinesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createEndTime)) {
            query["createEndTime"] = request.createEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.createStartTime)) {
            query["createStartTime"] = request.createStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.creatorAccountIds)) {
            query["creatorAccountIds"] = request.creatorAccountIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executeAccountIds)) {
            query["executeAccountIds"] = request.executeAccountIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executeEndTime)) {
            query["executeEndTime"] = request.executeEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.executeStartTime)) {
            query["executeStartTime"] = request.executeStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pipelineName)) {
            query["pipelineName"] = request.pipelineName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusList)) {
            query["statusList"] = request.statusList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPipelines",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPipelinesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPipelines(_ organizationId: String, _ request: ListPipelinesRequest) async throws -> ListPipelinesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPipelinesWithOptions(organizationId as! String, request as! ListPipelinesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectLabelsWithOptions(_ request: ListProjectLabelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectLabelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["orderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withCounts)) {
            query["withCounts"] = request.withCounts!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjectLabels",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/labels",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectLabels(_ request: ListProjectLabelsRequest) async throws -> ListProjectLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProjectLabelsWithOptions(request as! ListProjectLabelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectMembersWithOptions(_ organizationId: String, _ projectId: String, _ request: ListProjectMembersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            query["targetType"] = request.targetType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjectMembers",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/listMembers",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectMembers(_ organizationId: String, _ projectId: String, _ request: ListProjectMembersRequest) async throws -> ListProjectMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProjectMembersWithOptions(organizationId as! String, projectId as! String, request as! ListProjectMembersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectTemplatesWithOptions(_ organizationId: String, _ request: ListProjectTemplatesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjectTemplates",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/projects/listTemplates",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectTemplates(_ organizationId: String, _ request: ListProjectTemplatesRequest) async throws -> ListProjectTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProjectTemplatesWithOptions(organizationId as! String, request as! ListProjectTemplatesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectWorkitemTypesWithOptions(_ organizationId: String, _ projectId: String, _ request: ListProjectWorkitemTypesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectWorkitemTypesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceType)) {
            query["spaceType"] = request.spaceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjectWorkitemTypes",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/getWorkitemType",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectWorkitemTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectWorkitemTypes(_ organizationId: String, _ projectId: String, _ request: ListProjectWorkitemTypesRequest) async throws -> ListProjectWorkitemTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProjectWorkitemTypesWithOptions(organizationId as! String, projectId as! String, request as! ListProjectWorkitemTypesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectsWithOptions(_ organizationId: String, _ request: ListProjectsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conditions)) {
            query["conditions"] = request.conditions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraConditions)) {
            query["extraConditions"] = request.extraConditions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["scope"] = request.scope ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjects",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/listProjects",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjects(_ organizationId: String, _ request: ListProjectsRequest) async throws -> ListProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProjectsWithOptions(organizationId as! String, request as! ListProjectsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProtectedBranchesWithOptions(_ repositoryId: String, _ request: ListProtectedBranchesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProtectedBranchesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProtectedBranches",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/protect_branches",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProtectedBranchesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProtectedBranches(_ repositoryId: String, _ request: ListProtectedBranchesRequest) async throws -> ListProtectedBranchesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProtectedBranchesWithOptions(repositoryId as! String, request as! ListProtectedBranchesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPushRulesWithOptions(_ repositoryId: String, _ request: ListPushRulesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPushRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPushRules",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/push_rule/push_rules/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPushRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPushRules(_ repositoryId: String, _ request: ListPushRulesRequest) async throws -> ListPushRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPushRulesWithOptions(repositoryId as! String, request as! ListPushRulesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoriesWithOptions(_ request: ListRepositoriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.archived)) {
            query["archived"] = request.archived!;
        }
        if (!TeaUtils.Client.isUnset(request.minAccessLevel)) {
            query["minAccessLevel"] = request.minAccessLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["orderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.perPage)) {
            query["perPage"] = request.perPage!;
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositories",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepositoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositories(_ request: ListRepositoriesRequest) async throws -> ListRepositoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoriesWithOptions(request as! ListRepositoriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryBranchesWithOptions(_ repositoryId: String, _ request: ListRepositoryBranchesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryBranchesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryBranches",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/branches",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepositoryBranchesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryBranches(_ repositoryId: String, _ request: ListRepositoryBranchesRequest) async throws -> ListRepositoryBranchesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryBranchesWithOptions(repositoryId as! String, request as! ListRepositoryBranchesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryCommitDiffWithOptions(_ repositoryId: String, _ sha: String, _ request: ListRepositoryCommitDiffRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryCommitDiffResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contextLine)) {
            query["contextLine"] = request.contextLine!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryCommitDiff",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/commits/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sha)) + "/diff",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepositoryCommitDiffResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryCommitDiff(_ repositoryId: String, _ sha: String, _ request: ListRepositoryCommitDiffRequest) async throws -> ListRepositoryCommitDiffResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryCommitDiffWithOptions(repositoryId as! String, sha as! String, request as! ListRepositoryCommitDiffRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryCommitsWithOptions(_ repositoryId: String, _ request: ListRepositoryCommitsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryCommitsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["end"] = request.end ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            query["path"] = request.path ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refName)) {
            query["refName"] = request.refName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showCommentsCount)) {
            query["showCommentsCount"] = request.showCommentsCount!;
        }
        if (!TeaUtils.Client.isUnset(request.showSignature)) {
            query["showSignature"] = request.showSignature!;
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["start"] = request.start ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryCommits",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/commits",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepositoryCommitsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryCommits(_ repositoryId: String, _ request: ListRepositoryCommitsRequest) async throws -> ListRepositoryCommitsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryCommitsWithOptions(repositoryId as! String, request as! ListRepositoryCommitsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryGroupsWithOptions(_ request: ListRepositoryGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includePersonal)) {
            query["includePersonal"] = request.includePersonal!;
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["orderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            query["parentId"] = request.parentId!;
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryGroups",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/groups/get/all",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepositoryGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryGroups(_ request: ListRepositoryGroupsRequest) async throws -> ListRepositoryGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryGroupsWithOptions(request as! ListRepositoryGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryMemberWithInheritedWithOptions(_ repositoryId: String, _ request: ListRepositoryMemberWithInheritedRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryMemberWithInheritedResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryMemberWithInherited",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/members/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepositoryMemberWithInheritedResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryMemberWithInherited(_ repositoryId: String, _ request: ListRepositoryMemberWithInheritedRequest) async throws -> ListRepositoryMemberWithInheritedResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryMemberWithInheritedWithOptions(repositoryId as! String, request as! ListRepositoryMemberWithInheritedRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryTagsWithOptions(_ repositoryId: String, _ request: ListRepositoryTagsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryTags",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/tag/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepositoryTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryTags(_ repositoryId: String, _ request: ListRepositoryTagsRequest) async throws -> ListRepositoryTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryTagsWithOptions(repositoryId as! String, request as! ListRepositoryTagsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryTreeWithOptions(_ repositoryId: String, _ request: ListRepositoryTreeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryTreeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            query["path"] = request.path ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refName)) {
            query["refName"] = request.refName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryTree",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/files/tree",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepositoryTreeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryTree(_ repositoryId: String, _ request: ListRepositoryTreeRequest) async throws -> ListRepositoryTreeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryTreeWithOptions(repositoryId as! String, request as! ListRepositoryTreeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryWebhookWithOptions(_ repositoryId: String, _ request: ListRepositoryWebhookRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryWebhookResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryWebhook",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/webhooks/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepositoryWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryWebhook(_ repositoryId: String, _ request: ListRepositoryWebhookRequest) async throws -> ListRepositoryWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryWebhookWithOptions(repositoryId as! String, request as! ListRepositoryWebhookRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceMembersWithOptions(_ organizationId: String, _ resourceType: String, _ resourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceMembersResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceMembers",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceType)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceId)) + "/members",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceMembers(_ organizationId: String, _ resourceType: String, _ resourceId: String) async throws -> ListResourceMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourceMembersWithOptions(organizationId as! String, resourceType as! String, resourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSearchCommitWithOptions(_ request: ListSearchCommitRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSearchCommitResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            body["order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repoPath)) {
            body["repoPath"] = request.repoPath!;
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            body["sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSearchCommit",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/search/commit",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSearchCommitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSearchCommit(_ request: ListSearchCommitRequest) async throws -> ListSearchCommitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSearchCommitWithOptions(request as! ListSearchCommitRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSearchRepositoryWithOptions(_ request: ListSearchRepositoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSearchRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunPk)) {
            body["aliyunPk"] = request.aliyunPk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            body["order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repoPath)) {
            body["repoPath"] = request.repoPath!;
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            body["sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibilityLevel)) {
            body["visibilityLevel"] = request.visibilityLevel!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSearchRepository",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/search/repo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSearchRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSearchRepository(_ request: ListSearchRepositoryRequest) async throws -> ListSearchRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSearchRepositoryWithOptions(request as! ListSearchRepositoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSearchSourceCodeWithOptions(_ request: ListSearchSourceCodeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSearchSourceCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["filePath"] = request.filePath!;
        }
        if (!TeaUtils.Client.isUnset(request.isCodeBlock)) {
            body["isCodeBlock"] = request.isCodeBlock!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            body["order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repoPath)) {
            body["repoPath"] = request.repoPath!;
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            body["sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSearchSourceCode",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/search/code",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSearchSourceCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSearchSourceCode(_ request: ListSearchSourceCodeRequest) async throws -> ListSearchSourceCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSearchSourceCodeWithOptions(request as! ListSearchSourceCodeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceAuthsWithOptions(_ organizationId: String, _ request: ListServiceAuthsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceAuthsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceAuthType)) {
            query["serviceAuthType"] = request.serviceAuthType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServiceAuths",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/serviceAuths",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceAuthsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceAuths(_ organizationId: String, _ request: ListServiceAuthsRequest) async throws -> ListServiceAuthsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listServiceAuthsWithOptions(organizationId as! String, request as! ListServiceAuthsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceConnectionsWithOptions(_ organizationId: String, _ request: ListServiceConnectionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceConnectionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sericeConnectionType)) {
            query["sericeConnectionType"] = request.sericeConnectionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServiceConnections",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/serviceConnections",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceConnectionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceConnections(_ organizationId: String, _ request: ListServiceConnectionsRequest) async throws -> ListServiceConnectionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listServiceConnectionsWithOptions(organizationId as! String, request as! ListServiceConnectionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceCredentialsWithOptions(_ organizationId: String, _ request: ListServiceCredentialsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceCredentialsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCredentialType)) {
            query["serviceCredentialType"] = request.serviceCredentialType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServiceCredentials",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/serviceCredentials",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceCredentialsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceCredentials(_ organizationId: String, _ request: ListServiceCredentialsRequest) async throws -> ListServiceCredentialsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listServiceCredentialsWithOptions(organizationId as! String, request as! ListServiceCredentialsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSprintsWithOptions(_ organizationId: String, _ request: ListSprintsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSprintsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceIdentifier)) {
            query["spaceIdentifier"] = request.spaceIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceType)) {
            query["spaceType"] = request.spaceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSprints",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/sprints/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSprintsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSprints(_ organizationId: String, _ request: ListSprintsRequest) async throws -> ListSprintsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSprintsWithOptions(organizationId as! String, request as! ListSprintsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTestCaseFieldsWithOptions(_ organizationId: String, _ request: ListTestCaseFieldsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTestCaseFieldsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.spaceIdentifier)) {
            query["spaceIdentifier"] = request.spaceIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTestCaseFields",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/testhub/testcase/fields",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTestCaseFieldsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTestCaseFields(_ organizationId: String, _ request: ListTestCaseFieldsRequest) async throws -> ListTestCaseFieldsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTestCaseFieldsWithOptions(organizationId as! String, request as! ListTestCaseFieldsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserDrawRecordByPkWithOptions(_ request: ListUserDrawRecordByPkRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserDrawRecordByPkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunPk)) {
            query["aliyunPk"] = request.aliyunPk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drawGroup)) {
            query["drawGroup"] = request.drawGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drawPoolName)) {
            query["drawPoolName"] = request.drawPoolName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserDrawRecordByPk",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/listUserDrawRecords",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserDrawRecordByPkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserDrawRecordByPk(_ request: ListUserDrawRecordByPkRequest) async throws -> ListUserDrawRecordByPkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUserDrawRecordByPkWithOptions(request as! ListUserDrawRecordByPkRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserKeysWithOptions(_ request: ListUserKeysRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["orderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserKeys",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v3/user/keys",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserKeysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserKeys(_ request: ListUserKeysRequest) async throws -> ListUserKeysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUserKeysWithOptions(request as! ListUserKeysRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserResourcesWithOptions(_ request: ListUserResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["userIds"] = request.userIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserResources",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/user/vision/user_resources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserResources(_ request: ListUserResourcesRequest) async throws -> ListUserResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUserResourcesWithOptions(request as! ListUserResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVariableGroupsWithOptions(_ organizationId: String, _ request: ListVariableGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVariableGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageOrder)) {
            query["pageOrder"] = request.pageOrder ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSort)) {
            query["pageSort"] = request.pageSort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVariableGroups",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/variableGroups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVariableGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVariableGroups(_ organizationId: String, _ request: ListVariableGroupsRequest) async throws -> ListVariableGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listVariableGroupsWithOptions(organizationId as! String, request as! ListVariableGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkItemAllFieldsWithOptions(_ organizationId: String, _ request: ListWorkItemAllFieldsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkItemAllFieldsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.spaceIdentifier)) {
            query["spaceIdentifier"] = request.spaceIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceType)) {
            query["spaceType"] = request.spaceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workitemTypeIdentifier)) {
            query["workitemTypeIdentifier"] = request.workitemTypeIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkItemAllFields",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/fields/listAll",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkItemAllFieldsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkItemAllFields(_ organizationId: String, _ request: ListWorkItemAllFieldsRequest) async throws -> ListWorkItemAllFieldsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkItemAllFieldsWithOptions(organizationId as! String, request as! ListWorkItemAllFieldsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkItemWorkFlowStatusWithOptions(_ organizationId: String, _ request: ListWorkItemWorkFlowStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkItemWorkFlowStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.spaceIdentifier)) {
            query["spaceIdentifier"] = request.spaceIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceType)) {
            query["spaceType"] = request.spaceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workitemCategoryIdentifier)) {
            query["workitemCategoryIdentifier"] = request.workitemCategoryIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workitemTypeIdentifier)) {
            query["workitemTypeIdentifier"] = request.workitemTypeIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkItemWorkFlowStatus",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/workflow/listWorkflowStatus",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkItemWorkFlowStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkItemWorkFlowStatus(_ organizationId: String, _ request: ListWorkItemWorkFlowStatusRequest) async throws -> ListWorkItemWorkFlowStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkItemWorkFlowStatusWithOptions(organizationId as! String, request as! ListWorkItemWorkFlowStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkitemAttachmentsWithOptions(_ organizationId: String, _ workitemIdentifier: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkitemAttachmentsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkitemAttachments",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitem/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemIdentifier)) + "/attachments",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkitemAttachmentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkitemAttachments(_ organizationId: String, _ workitemIdentifier: String) async throws -> ListWorkitemAttachmentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkitemAttachmentsWithOptions(organizationId as! String, workitemIdentifier as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkitemEstimateWithOptions(_ organizationId: String, _ workitemId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkitemEstimateResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkitemEstimate",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemId)) + "/estimate/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkitemEstimateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkitemEstimate(_ organizationId: String, _ workitemId: String) async throws -> ListWorkitemEstimateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkitemEstimateWithOptions(organizationId as! String, workitemId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkitemTimeWithOptions(_ organizationId: String, _ workitemId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkitemTimeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkitemTime",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemId)) + "/time/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkitemTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkitemTime(_ organizationId: String, _ workitemId: String) async throws -> ListWorkitemTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkitemTimeWithOptions(organizationId as! String, workitemId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkitemsWithOptions(_ organizationId: String, _ request: ListWorkitemsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkitemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conditions)) {
            query["conditions"] = request.conditions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraConditions)) {
            query["extraConditions"] = request.extraConditions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupCondition)) {
            query["groupCondition"] = request.groupCondition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["orderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchType)) {
            query["searchType"] = request.searchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceIdentifier)) {
            query["spaceIdentifier"] = request.spaceIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spaceType)) {
            query["spaceType"] = request.spaceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkitems",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/listWorkitems",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkitemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkitems(_ organizationId: String, _ request: ListWorkitemsRequest) async throws -> ListWorkitemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listWorkitemsWithOptions(organizationId as! String, request as! ListWorkitemsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func logPipelineJobRunWithOptions(_ organizationId: String, _ pipelineId: String, _ jobId: String, _ pipelineRunId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> LogPipelineJobRunResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LogPipelineJobRun",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipeline/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/pipelineRun/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId)) + "/job/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)) + "/logs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LogPipelineJobRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func logPipelineJobRun(_ organizationId: String, _ pipelineId: String, _ jobId: String, _ pipelineRunId: String) async throws -> LogPipelineJobRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await logPipelineJobRunWithOptions(organizationId as! String, pipelineId as! String, jobId as! String, pipelineRunId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func logVMDeployMachineWithOptions(_ organizationId: String, _ pipelineId: String, _ deployOrderId: String, _ machineSn: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> LogVMDeployMachineResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LogVMDeployMachine",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/deploy/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deployOrderId)) + "/machine/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(machineSn)) + "/log",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LogVMDeployMachineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func logVMDeployMachine(_ organizationId: String, _ pipelineId: String, _ deployOrderId: String, _ machineSn: String) async throws -> LogVMDeployMachineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await logVMDeployMachineWithOptions(organizationId as! String, pipelineId as! String, deployOrderId as! String, machineSn as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mergeMergeRequestWithOptions(_ repositoryId: String, _ localId: String, _ request: MergeMergeRequestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> MergeMergeRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mergeMessage)) {
            body["mergeMessage"] = request.mergeMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mergeType)) {
            body["mergeType"] = request.mergeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.removeSourceBranch)) {
            body["removeSourceBranch"] = request.removeSourceBranch!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MergeMergeRequest",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/merge_requests/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(localId)) + "/merge",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MergeMergeRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mergeMergeRequest(_ repositoryId: String, _ localId: String, _ request: MergeMergeRequestRequest) async throws -> MergeMergeRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await mergeMergeRequestWithOptions(repositoryId as! String, localId as! String, request as! MergeMergeRequestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func passPipelineValidateWithOptions(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ jobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PassPipelineValidateResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PassPipelineValidate",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/pipelineRuns/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)) + "/pass",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PassPipelineValidateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func passPipelineValidate(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ jobId: String) async throws -> PassPipelineValidateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await passPipelineValidateWithOptions(organizationId as! String, pipelineId as! String, pipelineRunId as! String, jobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func passReleaseStagePipelineValidateWithOptions(_ appName: String, _ releaseWorkflowSn: String, _ releaseStageSn: String, _ executionNumber: String, _ request: PassReleaseStagePipelineValidateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PassReleaseStagePipelineValidateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["jobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PassReleaseStagePipelineValidate",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/releaseWorkflows/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseWorkflowSn)) + "/releaseStages/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseStageSn)) + "/executions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(executionNumber)) + "%3ApassPipelineValidate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PassReleaseStagePipelineValidateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func passReleaseStagePipelineValidate(_ appName: String, _ releaseWorkflowSn: String, _ releaseStageSn: String, _ executionNumber: String, _ request: PassReleaseStagePipelineValidateRequest) async throws -> PassReleaseStagePipelineValidateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await passReleaseStagePipelineValidateWithOptions(appName as! String, releaseWorkflowSn as! String, releaseStageSn as! String, executionNumber as! String, request as! PassReleaseStagePipelineValidateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refusePipelineValidateWithOptions(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ jobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RefusePipelineValidateResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefusePipelineValidate",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/pipelineRuns/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)) + "/refuse",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefusePipelineValidateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refusePipelineValidate(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ jobId: String) async throws -> RefusePipelineValidateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await refusePipelineValidateWithOptions(organizationId as! String, pipelineId as! String, pipelineRunId as! String, jobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refuseReleaseStagePipelineValidateWithOptions(_ appName: String, _ releaseWorkflowSn: String, _ releaseStageSn: String, _ executionNumber: String, _ request: RefuseReleaseStagePipelineValidateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RefuseReleaseStagePipelineValidateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["jobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefuseReleaseStagePipelineValidate",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/releaseWorkflows/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseWorkflowSn)) + "/releaseStages/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(releaseStageSn)) + "/executions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(executionNumber)) + "%3ArefusePipelineValidate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefuseReleaseStagePipelineValidateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refuseReleaseStagePipelineValidate(_ appName: String, _ releaseWorkflowSn: String, _ releaseStageSn: String, _ executionNumber: String, _ request: RefuseReleaseStagePipelineValidateRequest) async throws -> RefuseReleaseStagePipelineValidateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await refuseReleaseStagePipelineValidateWithOptions(appName as! String, releaseWorkflowSn as! String, releaseStageSn as! String, executionNumber as! String, request as! RefuseReleaseStagePipelineValidateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reopenMergeRequestWithOptions(_ repositoryId: String, _ localId: String, _ request: ReopenMergeRequestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReopenMergeRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReopenMergeRequest",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/merge_requests/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(localId)) + "/reopen",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReopenMergeRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reopenMergeRequest(_ repositoryId: String, _ localId: String, _ request: ReopenMergeRequestRequest) async throws -> ReopenMergeRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await reopenMergeRequestWithOptions(repositoryId as! String, localId as! String, request as! ReopenMergeRequestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetSshKeyWithOptions(_ organizationId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetSshKeyResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetSshKey",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/sshKey",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetSshKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetSshKey(_ organizationId: String) async throws -> ResetSshKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await resetSshKeyWithOptions(organizationId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeVMDeployOrderWithOptions(_ organizationId: String, _ pipelineId: String, _ deployOrderId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeVMDeployOrderResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumeVMDeployOrder",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/deploy/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deployOrderId)) + "/resume",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeVMDeployOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeVMDeployOrder(_ organizationId: String, _ pipelineId: String, _ deployOrderId: String) async throws -> ResumeVMDeployOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await resumeVMDeployOrderWithOptions(organizationId as! String, pipelineId as! String, deployOrderId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryPipelineJobRunWithOptions(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ jobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RetryPipelineJobRunResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RetryPipelineJobRun",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/pipelineRuns/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RetryPipelineJobRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryPipelineJobRun(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ jobId: String) async throws -> RetryPipelineJobRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await retryPipelineJobRunWithOptions(organizationId as! String, pipelineId as! String, pipelineRunId as! String, jobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryVMDeployMachineWithOptions(_ organizationId: String, _ pipelineId: String, _ deployOrderId: String, _ machineSn: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RetryVMDeployMachineResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RetryVMDeployMachine",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/deploy/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deployOrderId)) + "/machine/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(machineSn)) + "/retry",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RetryVMDeployMachineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryVMDeployMachine(_ organizationId: String, _ pipelineId: String, _ deployOrderId: String, _ machineSn: String) async throws -> RetryVMDeployMachineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await retryVMDeployMachineWithOptions(organizationId as! String, pipelineId as! String, deployOrderId as! String, machineSn as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reviewMergeRequestWithOptions(_ repositoryId: String, _ localId: String, _ request: ReviewMergeRequestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReviewMergeRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.draftCommentIds)) {
            body["draftCommentIds"] = request.draftCommentIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.reviewComment)) {
            body["reviewComment"] = request.reviewComment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reviewOpinion)) {
            body["reviewOpinion"] = request.reviewOpinion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReviewMergeRequest",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/merge_requests/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(localId)) + "/submit_review_opinion",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReviewMergeRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reviewMergeRequest(_ repositoryId: String, _ localId: String, _ request: ReviewMergeRequestRequest) async throws -> ReviewMergeRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await reviewMergeRequestWithOptions(repositoryId as! String, localId as! String, request as! ReviewMergeRequestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func skipPipelineJobRunWithOptions(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ jobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SkipPipelineJobRunResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SkipPipelineJobRun",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/pipelineRuns/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)) + "/skip",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SkipPipelineJobRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func skipPipelineJobRun(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ jobId: String) async throws -> SkipPipelineJobRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await skipPipelineJobRunWithOptions(organizationId as! String, pipelineId as! String, pipelineRunId as! String, jobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func skipVMDeployMachineWithOptions(_ organizationId: String, _ pipelineId: String, _ deployOrderId: String, _ machineSn: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SkipVMDeployMachineResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SkipVMDeployMachine",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/deploy/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deployOrderId)) + "/machine/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(machineSn)) + "/skip",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SkipVMDeployMachineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func skipVMDeployMachine(_ organizationId: String, _ pipelineId: String, _ deployOrderId: String, _ machineSn: String) async throws -> SkipVMDeployMachineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await skipVMDeployMachineWithOptions(organizationId as! String, pipelineId as! String, deployOrderId as! String, machineSn as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startPipelineRunWithOptions(_ organizationId: String, _ pipelineId: String, _ request: StartPipelineRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartPipelineRunResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["params"] = request.params ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartPipelineRun",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organizations/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/run",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartPipelineRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startPipelineRun(_ organizationId: String, _ pipelineId: String, _ request: StartPipelineRunRequest) async throws -> StartPipelineRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startPipelineRunWithOptions(organizationId as! String, pipelineId as! String, request as! StartPipelineRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopPipelineJobRunWithOptions(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ jobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopPipelineJobRunResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopPipelineJobRun",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/pipelineRuns/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)) + "/stop",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopPipelineJobRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopPipelineJobRun(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ jobId: String) async throws -> StopPipelineJobRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopPipelineJobRunWithOptions(organizationId as! String, pipelineId as! String, pipelineRunId as! String, jobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopPipelineRunWithOptions(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopPipelineRunResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopPipelineRun",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/pipelineRuns/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId)) + "/stop",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopPipelineRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopPipelineRun(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String) async throws -> StopPipelineRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopPipelineRunWithOptions(organizationId as! String, pipelineId as! String, pipelineRunId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopVMDeployOrderWithOptions(_ organizationId: String, _ pipelineId: String, _ deployOrderId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopVMDeployOrderResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopVMDeployOrder",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/deploy/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deployOrderId)) + "/stop",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopVMDeployOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopVMDeployOrder(_ organizationId: String, _ pipelineId: String, _ deployOrderId: String) async throws -> StopVMDeployOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopVMDeployOrderWithOptions(organizationId as! String, pipelineId as! String, deployOrderId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferRepositoryWithOptions(_ request: TransferRepositoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TransferRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["groupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryId)) {
            query["repositoryId"] = request.repositoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TransferRepository",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/repository/transfer",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransferRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferRepository(_ request: TransferRepositoryRequest) async throws -> TransferRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await transferRepositoryWithOptions(request as! TransferRepositoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerRepositoryMirrorSyncWithOptions(_ repositoryId: String, _ request: TriggerRepositoryMirrorSyncRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TriggerRepositoryMirrorSyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.account)) {
            query["account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TriggerRepositoryMirrorSync",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/mirror",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TriggerRepositoryMirrorSyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerRepositoryMirrorSync(_ repositoryId: String, _ request: TriggerRepositoryMirrorSyncRequest) async throws -> TriggerRepositoryMirrorSyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await triggerRepositoryMirrorSyncWithOptions(repositoryId as! String, request as! TriggerRepositoryMirrorSyncRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAppMemberWithOptions(_ appName: String, _ request: UpdateAppMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAppMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.player)) {
            body["player"] = request.player!;
        }
        if (!TeaUtils.Client.isUnset(request.roleNames)) {
            body["roleNames"] = request.roleNames ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAppMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)) + "/members",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAppMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAppMember(_ appName: String, _ request: UpdateAppMemberRequest) async throws -> UpdateAppMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAppMemberWithOptions(appName as! String, request as! UpdateAppMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplicationWithOptions(_ appName: String, _ request: UpdateApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerAccountId)) {
            body["ownerAccountId"] = request.ownerAccountId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApplication",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/appstack/apps/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApplication(_ appName: String, _ request: UpdateApplicationRequest) async throws -> UpdateApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateApplicationWithOptions(appName as! String, request as! UpdateApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCheckRunWithOptions(_ request: UpdateCheckRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCheckRunResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkRunId)) {
            query["checkRunId"] = request.checkRunId!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.annotations)) {
            body["annotations"] = request.annotations ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.completedAt)) {
            body["completedAt"] = request.completedAt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conclusion)) {
            body["conclusion"] = request.conclusion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detailsUrl)) {
            body["detailsUrl"] = request.detailsUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalId)) {
            body["externalId"] = request.externalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.output)) {
            body["output"] = request.output!;
        }
        if (!TeaUtils.Client.isUnset(request.startedAt)) {
            body["startedAt"] = request.startedAt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCheckRun",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/check_runs/update_check_run",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCheckRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCheckRun(_ request: UpdateCheckRunRequest) async throws -> UpdateCheckRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateCheckRunWithOptions(request as! UpdateCheckRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFileWithOptions(_ repositoryId: String, _ request: UpdateFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.branchName)) {
            body["branchName"] = request.branchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commitMessage)) {
            body["commitMessage"] = request.commitMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encoding)) {
            body["encoding"] = request.encoding ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newPath)) {
            body["newPath"] = request.newPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oldPath)) {
            body["oldPath"] = request.oldPath ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFile",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/files/update",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFile(_ repositoryId: String, _ request: UpdateFileRequest) async throws -> UpdateFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateFileWithOptions(repositoryId as! String, request as! UpdateFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFlowTagWithOptions(_ organizationId: String, _ id: String, _ request: UpdateFlowTagRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFlowTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.color)) {
            query["color"] = request.color ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowTagGroupId)) {
            query["flowTagGroupId"] = request.flowTagGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFlowTag",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/flow/tags/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(id)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFlowTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFlowTag(_ organizationId: String, _ id: String, _ request: UpdateFlowTagRequest) async throws -> UpdateFlowTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateFlowTagWithOptions(organizationId as! String, id as! String, request as! UpdateFlowTagRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFlowTagGroupWithOptions(_ organizationId: String, _ id: String, _ request: UpdateFlowTagGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFlowTagGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFlowTagGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/flow/tagGroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(id)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFlowTagGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFlowTagGroup(_ organizationId: String, _ id: String, _ request: UpdateFlowTagGroupRequest) async throws -> UpdateFlowTagGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateFlowTagGroupWithOptions(organizationId as! String, id as! String, request as! UpdateFlowTagGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGroupWithOptions(_ request: UpdateGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.avatarUrl)) {
            body["avatarUrl"] = request.avatarUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            body["path"] = request.path ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pathWithNamespace)) {
            body["pathWithNamespace"] = request.pathWithNamespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibilityLevel)) {
            body["visibilityLevel"] = request.visibilityLevel!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/groups/modify",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGroup(_ request: UpdateGroupRequest) async throws -> UpdateGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateGroupWithOptions(request as! UpdateGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGroupMemberWithOptions(_ groupId: String, _ request: UpdateGroupMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGroupMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aliyunPk)) {
            query["aliyunPk"] = request.aliyunPk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessLevel)) {
            body["accessLevel"] = request.accessLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.memberType)) {
            body["memberType"] = request.memberType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGroupMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)) + "/members/update/aliyun_pk",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGroupMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGroupMember(_ groupId: String, _ request: UpdateGroupMemberRequest) async throws -> UpdateGroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateGroupMemberWithOptions(groupId as! String, request as! UpdateGroupMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHostGroupWithOptions(_ organizationId: String, _ id: String, _ request: UpdateHostGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateHostGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunRegion)) {
            body["aliyunRegion"] = request.aliyunRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsLabelKey)) {
            body["ecsLabelKey"] = request.ecsLabelKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsLabelValue)) {
            body["ecsLabelValue"] = request.ecsLabelValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsType)) {
            body["ecsType"] = request.ecsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.envId)) {
            body["envId"] = request.envId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.machineInfos)) {
            body["machineInfos"] = request.machineInfos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceConnectionId)) {
            body["serviceConnectionId"] = request.serviceConnectionId!;
        }
        if (!TeaUtils.Client.isUnset(request.tagIds)) {
            body["tagIds"] = request.tagIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateHostGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/hostGroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(id)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateHostGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHostGroup(_ organizationId: String, _ id: String, _ request: UpdateHostGroupRequest) async throws -> UpdateHostGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateHostGroupWithOptions(organizationId as! String, id as! String, request as! UpdateHostGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMergeRequestWithOptions(_ repositoryId: String, _ localId: String, _ request: UpdateMergeRequestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMergeRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMergeRequest",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/merge_requests/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(localId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMergeRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMergeRequest(_ repositoryId: String, _ localId: String, _ request: UpdateMergeRequestRequest) async throws -> UpdateMergeRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateMergeRequestWithOptions(repositoryId as! String, localId as! String, request as! UpdateMergeRequestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMergeRequestPersonnelWithOptions(_ repositoryId: String, _ localId: String, _ personType: String, _ request: UpdateMergeRequestPersonnelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMergeRequestPersonnelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.newUserIdList)) {
            body["newUserIdList"] = request.newUserIdList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMergeRequestPersonnel",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/merge_requests/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(localId)) + "/person/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(personType)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMergeRequestPersonnelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMergeRequestPersonnel(_ repositoryId: String, _ localId: String, _ personType: String, _ request: UpdateMergeRequestPersonnelRequest) async throws -> UpdateMergeRequestPersonnelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateMergeRequestPersonnelWithOptions(repositoryId as! String, localId as! String, personType as! String, request as! UpdateMergeRequestPersonnelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOrganizationMemberWithOptions(_ organizationId: String, _ accountId: String, _ request: UpdateOrganizationMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateOrganizationMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationMemberName)) {
            query["organizationMemberName"] = request.organizationMemberName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateOrganizationMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/members/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(accountId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateOrganizationMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOrganizationMember(_ organizationId: String, _ accountId: String, _ request: UpdateOrganizationMemberRequest) async throws -> UpdateOrganizationMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateOrganizationMemberWithOptions(organizationId as! String, accountId as! String, request as! UpdateOrganizationMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePipelineWithOptions(_ organizationId: String, _ request: UpdatePipelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePipelineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pipelineId)) {
            body["pipelineId"] = request.pipelineId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePipeline",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePipelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePipeline(_ organizationId: String, _ request: UpdatePipelineRequest) async throws -> UpdatePipelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePipelineWithOptions(organizationId as! String, request as! UpdatePipelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePipelineBaseInfoWithOptions(_ organizationId: String, _ pipelineId: String, _ request: UpdatePipelineBaseInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePipelineBaseInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.envId)) {
            query["envId"] = request.envId!;
        }
        if (!TeaUtils.Client.isUnset(request.pipelineName)) {
            query["pipelineName"] = request.pipelineName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagList)) {
            query["tagList"] = request.tagList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePipelineBaseInfo",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelines/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId)) + "/baseInfo",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePipelineBaseInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePipelineBaseInfo(_ organizationId: String, _ pipelineId: String, _ request: UpdatePipelineBaseInfoRequest) async throws -> UpdatePipelineBaseInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePipelineBaseInfoWithOptions(organizationId as! String, pipelineId as! String, request as! UpdatePipelineBaseInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePipelineGroupWithOptions(_ organizationId: String, _ groupId: String, _ request: UpdatePipelineGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePipelineGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePipelineGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/pipelineGroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePipelineGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePipelineGroup(_ organizationId: String, _ groupId: String, _ request: UpdatePipelineGroupRequest) async throws -> UpdatePipelineGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePipelineGroupWithOptions(organizationId as! String, groupId as! String, request as! UpdatePipelineGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectFieldWithOptions(_ organizationId: String, _ identifier: String, _ request: UpdateProjectFieldRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProjectFieldResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.statusIdentifier)) {
            body["statusIdentifier"] = request.statusIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateBasicFieldRequestList)) {
            body["updateBasicFieldRequestList"] = request.updateBasicFieldRequestList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.updateForOpenApiList)) {
            body["updateForOpenApiList"] = request.updateForOpenApiList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProjectField",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/project/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(identifier)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProjectFieldResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectField(_ organizationId: String, _ identifier: String, _ request: UpdateProjectFieldRequest) async throws -> UpdateProjectFieldResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProjectFieldWithOptions(organizationId as! String, identifier as! String, request as! UpdateProjectFieldRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectLabelWithOptions(_ labelId: String, _ request: UpdateProjectLabelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProjectLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repositoryIdentity)) {
            query["repositoryIdentity"] = request.repositoryIdentity ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.color)) {
            body["color"] = request.color ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProjectLabel",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/labels/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(labelId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProjectLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectLabel(_ labelId: String, _ request: UpdateProjectLabelRequest) async throws -> UpdateProjectLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProjectLabelWithOptions(labelId as! String, request as! UpdateProjectLabelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectMemberWithOptions(_ organizationId: String, _ projectId: String, _ request: UpdateProjectMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProjectMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleIdentifier)) {
            body["roleIdentifier"] = request.roleIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetIdentifier)) {
            body["targetIdentifier"] = request.targetIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            body["targetType"] = request.targetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdentifier)) {
            body["userIdentifier"] = request.userIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userType)) {
            body["userType"] = request.userType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProjectMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId)) + "/updateMember",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProjectMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectMember(_ organizationId: String, _ projectId: String, _ request: UpdateProjectMemberRequest) async throws -> UpdateProjectMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProjectMemberWithOptions(organizationId as! String, projectId as! String, request as! UpdateProjectMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProtectedBranchesWithOptions(_ repositoryId: String, _ id: String, _ request: UpdateProtectedBranchesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProtectedBranchesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowMergeRoles)) {
            body["allowMergeRoles"] = request.allowMergeRoles ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.allowMergeUserIds)) {
            body["allowMergeUserIds"] = request.allowMergeUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.allowPushRoles)) {
            body["allowPushRoles"] = request.allowPushRoles ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.allowPushUserIds)) {
            body["allowPushUserIds"] = request.allowPushUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.branch)) {
            body["branch"] = request.branch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.mergeRequestSetting)) {
            body["mergeRequestSetting"] = request.mergeRequestSetting!;
        }
        if (!TeaUtils.Client.isUnset(request.testSettingDTO)) {
            body["testSettingDTO"] = request.testSettingDTO!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProtectedBranches",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/protect_branches/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(id)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProtectedBranchesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProtectedBranches(_ repositoryId: String, _ id: String, _ request: UpdateProtectedBranchesRequest) async throws -> UpdateProtectedBranchesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProtectedBranchesWithOptions(repositoryId as! String, id as! String, request as! UpdateProtectedBranchesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePushReviewOnOffWithOptions(_ repositoryId: String, _ request: UpdatePushReviewOnOffRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePushReviewOnOffResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trunkMode)) {
            query["trunkMode"] = request.trunkMode!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePushReviewOnOff",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/settings/trunk_mode",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePushReviewOnOffResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePushReviewOnOff(_ repositoryId: String, _ request: UpdatePushReviewOnOffRequest) async throws -> UpdatePushReviewOnOffResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePushReviewOnOffWithOptions(repositoryId as! String, request as! UpdatePushReviewOnOffRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePushRuleWithOptions(_ repositoryId: String, _ pushRuleId: String, _ request: UpdatePushRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePushRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ruleInfos)) {
            body["ruleInfos"] = request.ruleInfos ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePushRule",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/push_rule/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(pushRuleId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePushRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePushRule(_ repositoryId: String, _ pushRuleId: String, _ request: UpdatePushRuleRequest) async throws -> UpdatePushRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePushRuleWithOptions(repositoryId as! String, pushRuleId as! String, request as! UpdatePushRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepositoryWithOptions(_ repositoryId: String, _ request: UpdateRepositoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adminSettingLanguage)) {
            body["adminSettingLanguage"] = request.adminSettingLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.avatar)) {
            body["avatar"] = request.avatar ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buildsEnabled)) {
            body["buildsEnabled"] = request.buildsEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.checkEmail)) {
            body["checkEmail"] = request.checkEmail!;
        }
        if (!TeaUtils.Client.isUnset(request.defaultBranch)) {
            body["defaultBranch"] = request.defaultBranch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.issuesEnabled)) {
            body["issuesEnabled"] = request.issuesEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.mergeRequestsEnabled)) {
            body["mergeRequestsEnabled"] = request.mergeRequestsEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openCloneDownloadControl)) {
            body["openCloneDownloadControl"] = request.openCloneDownloadControl!;
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            body["path"] = request.path ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectCloneDownloadMethodList)) {
            body["projectCloneDownloadMethodList"] = request.projectCloneDownloadMethodList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.projectCloneDownloadRoleList)) {
            body["projectCloneDownloadRoleList"] = request.projectCloneDownloadRoleList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.snippetsEnabled)) {
            body["snippetsEnabled"] = request.snippetsEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.visibilityLevel)) {
            body["visibilityLevel"] = request.visibilityLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.wikiEnabled)) {
            body["wikiEnabled"] = request.wikiEnabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRepository",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepository(_ repositoryId: String, _ request: UpdateRepositoryRequest) async throws -> UpdateRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRepositoryWithOptions(repositoryId as! String, request as! UpdateRepositoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepositoryMemberWithOptions(_ repositoryId: String, _ aliyunPk: String, _ request: UpdateRepositoryMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRepositoryMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["organizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessLevel)) {
            body["accessLevel"] = request.accessLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.expireAt)) {
            body["expireAt"] = request.expireAt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberType)) {
            body["memberType"] = request.memberType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedId)) {
            body["relatedId"] = request.relatedId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedInfos)) {
            body["relatedInfos"] = request.relatedInfos ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRepositoryMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/repository/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId)) + "/members/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(aliyunPk)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRepositoryMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepositoryMember(_ repositoryId: String, _ aliyunPk: String, _ request: UpdateRepositoryMemberRequest) async throws -> UpdateRepositoryMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRepositoryMemberWithOptions(repositoryId as! String, aliyunPk as! String, request as! UpdateRepositoryMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceMemberWithOptions(_ organizationId: String, _ resourceType: String, _ resourceId: String, _ accountId: String, _ request: UpdateResourceMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateResourceMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            body["roleName"] = request.roleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateResourceMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceType)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceId)) + "/members/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(accountId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateResourceMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceMember(_ organizationId: String, _ resourceType: String, _ resourceId: String, _ accountId: String, _ request: UpdateResourceMemberRequest) async throws -> UpdateResourceMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateResourceMemberWithOptions(organizationId as! String, resourceType as! String, resourceId as! String, accountId as! String, request as! UpdateResourceMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTestCaseWithOptions(_ organizationId: String, _ testcaseIdentifier: String, _ request: UpdateTestCaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTestCaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateWorkitemPropertyRequest)) {
            body["updateWorkitemPropertyRequest"] = request.updateWorkitemPropertyRequest ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTestCase",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/testhub/testcase/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(testcaseIdentifier)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTestCaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTestCase(_ organizationId: String, _ testcaseIdentifier: String, _ request: UpdateTestCaseRequest) async throws -> UpdateTestCaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateTestCaseWithOptions(organizationId as! String, testcaseIdentifier as! String, request as! UpdateTestCaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTestResultWithOptions(_ organizationId: String, _ testPlanIdentifier: String, _ testcaseIdentifier: String, _ request: UpdateTestResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTestResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.executor)) {
            body["executor"] = request.executor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTestResult",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/testhub/testplan/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(testPlanIdentifier)) + "/testresult/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(testcaseIdentifier)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTestResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTestResult(_ organizationId: String, _ testPlanIdentifier: String, _ testcaseIdentifier: String, _ request: UpdateTestResultRequest) async throws -> UpdateTestResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateTestResultWithOptions(organizationId as! String, testPlanIdentifier as! String, testcaseIdentifier as! String, request as! UpdateTestResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVariableGroupWithOptions(_ organizationId: String, _ id: String, _ request: UpdateVariableGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateVariableGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.variables)) {
            body["variables"] = request.variables ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateVariableGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/variableGroups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(id)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateVariableGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVariableGroup(_ organizationId: String, _ id: String, _ request: UpdateVariableGroupRequest) async throws -> UpdateVariableGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateVariableGroupWithOptions(organizationId as! String, id as! String, request as! UpdateVariableGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkItemWithOptions(_ organizationId: String, _ request: UpdateWorkItemRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWorkItemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fieldType)) {
            body["fieldType"] = request.fieldType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            body["identifier"] = request.identifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.propertyKey)) {
            body["propertyKey"] = request.propertyKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.propertyValue)) {
            body["propertyValue"] = request.propertyValue ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWorkItem",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWorkItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkItem(_ organizationId: String, _ request: UpdateWorkItemRequest) async throws -> UpdateWorkItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateWorkItemWithOptions(organizationId as! String, request as! UpdateWorkItemRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkitemCommentWithOptions(_ organizationId: String, _ request: UpdateWorkitemCommentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWorkitemCommentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commentId)) {
            body["commentId"] = request.commentId!;
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formatType)) {
            body["formatType"] = request.formatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workitemIdentifier)) {
            body["workitemIdentifier"] = request.workitemIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWorkitemComment",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/commentUpdate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWorkitemCommentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkitemComment(_ organizationId: String, _ request: UpdateWorkitemCommentRequest) async throws -> UpdateWorkitemCommentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateWorkitemCommentWithOptions(organizationId as! String, request as! UpdateWorkitemCommentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkitemFieldWithOptions(_ organizationId: String, _ request: UpdateWorkitemFieldRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWorkitemFieldResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateWorkitemPropertyRequest)) {
            body["updateWorkitemPropertyRequest"] = request.updateWorkitemPropertyRequest ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.workitemIdentifier)) {
            body["workitemIdentifier"] = request.workitemIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWorkitemField",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitems/updateWorkitemField",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWorkitemFieldResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkitemField(_ organizationId: String, _ request: UpdateWorkitemFieldRequest) async throws -> UpdateWorkitemFieldResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateWorkitemFieldWithOptions(organizationId as! String, request as! UpdateWorkitemFieldRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func workitemAttachmentCreateWithOptions(_ organizationId: String, _ workitemIdentifier: String, _ request: WorkitemAttachmentCreateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> WorkitemAttachmentCreateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileKey)) {
            body["fileKey"] = request.fileKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalFilename)) {
            body["originalFilename"] = request.originalFilename ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "WorkitemAttachmentCreate",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId)) + "/workitem/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemIdentifier)) + "/attachment",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(WorkitemAttachmentCreateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func workitemAttachmentCreate(_ organizationId: String, _ workitemIdentifier: String, _ request: WorkitemAttachmentCreateRequest) async throws -> WorkitemAttachmentCreateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await workitemAttachmentCreateWithOptions(organizationId as! String, workitemIdentifier as! String, request as! WorkitemAttachmentCreateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
