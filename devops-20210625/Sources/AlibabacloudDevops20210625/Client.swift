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
            "pathname": "/repository/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId) + "/members/create",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/pipelineRelations",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/members",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/webhooks/create",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/branches",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/keys/create",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/files",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/flow/tags",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/flow/tagGroups",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/hostGroups",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelineGroups",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/projects/createProject",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/protect_branches",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceType) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceId) + "/members",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/sprints/create",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/sshKey",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/tags/create",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/variableGroups",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/create",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/comment",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/estimate",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/record",
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
    public func createWorkspaceWithOptions(_ request: CreateWorkspaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkspaceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.codeUrl)) {
            body["codeUrl"] = request.codeUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeVersion)) {
            body["codeVersion"] = request.codeVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["filePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestFrom)) {
            body["requestFrom"] = request.requestFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdentifier)) {
            body["resourceIdentifier"] = request.resourceIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reuse)) {
            body["reuse"] = request.reuse!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceTemplate)) {
            body["workspaceTemplate"] = request.workspaceTemplate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkspace",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/workspaces",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspace(_ request: CreateWorkspaceRequest) async throws -> CreateWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createWorkspaceWithOptions(request as! CreateWorkspaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/branches/delete",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/files/delete",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/flow/tags/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(id),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/flow/tagGroups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(id),
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
            "pathname": "/repository/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId) + "/members/remove/aliyun_pk",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/hostGroups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(id),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelineGroups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/pipelineRelations",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/projects/delete",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/protect_branches/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(protectedBranchId),
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/remove",
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
            "pathname": "/repository/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId) + "/remove",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/members/delete/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(aliyunPk),
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/hooks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(hookId),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceType) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceId) + "/members/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(accountId),
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/tags/delete",
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
    public func deleteVariableGroupWithOptions(_ organizationId: String, _ id: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVariableGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVariableGroup",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/variableGroups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(id),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/deleteAllComment",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/deleteComent",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/keys/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(keyId) + "/enable",
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
    public func frozenWorkspaceWithOptions(_ workspaceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> FrozenWorkspaceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FrozenWorkspace",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/workspaces/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId) + "/frozen",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FrozenWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func frozenWorkspace(_ workspaceId: String) async throws -> FrozenWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await frozenWorkspaceWithOptions(workspaceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/branches/detail",
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
            "pathname": "/api/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(identity),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/fields/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(fieldId) + "/getCustomOption",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/files/blobs",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/files/lastCommit",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/flow/tagGroups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(id),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/hostGroups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(id),
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
    public func getOrganizationMemberWithOptions(_ organizationId: String, _ accountId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrganizationMemberResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOrganizationMember",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/members/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(accountId),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipeline/getArtifactDownloadUrl",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipeline/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/pipelineRun/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId) + "/emas/artifact/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(emasJobInstanceId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(md5),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelineGroups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/pipelineRuns/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipeline/getPipelineScanReportUrl",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/project/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId),
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/members/get/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(aliyunPk),
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/commits/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sha),
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/tag/info",
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
    public func getSprintInfoWithOptions(_ organizationId: String, _ sprintId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSprintInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSprintInfo",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/sprints/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sprintId) + "/getSprintinfo",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/deploy/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(deployOrderId),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/variableGroups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(id),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemId) + "/getActivity",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemId),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemId) + "/getWorkflowInfo",
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
    public func getWorkitemCommentListWithOptions(_ organizationId: String, _ workitemId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkitemCommentListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkitemCommentList",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemId) + "/commentList",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemId) + "/getRelations",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/type/list",
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
    public func getWorkspaceWithOptions(_ workspaceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkspaceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkspace",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/workspaces/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkspace(_ workspaceId: String) async throws -> GetWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWorkspaceWithOptions(workspaceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelineGroups/join",
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
    public func listFlowTagGroupsWithOptions(_ organizationId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFlowTagGroupsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFlowTagGroups",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/flow/tagGroups",
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
            "pathname": "/repository/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId) + "/list",
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
            "pathname": "/repository/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId) + "/projects",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/hostGroups",
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
    public func listOrganizationMembersWithOptions(_ organizationId: String, _ request: ListOrganizationMembersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOrganizationMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/members",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelineGroups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId) + "/pipelines",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelineGroups",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipeline/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/job/historys",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipeline/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/jobs",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/pipelineRelations",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/pipelineRuns",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId) + "/listMembers",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/projects/listTemplates",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId) + "/getWorkitemType",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/listProjects",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/protect_branches",
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
    public func listRepositoriesWithOptions(_ request: ListRepositoriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["accessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.archived)) {
            query["archived"] = request.archived!;
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/branches",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/commits/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sha) + "/diff",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/commits",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/members/list",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/tag/list",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/files/tree",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/webhooks/list",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceType) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceId) + "/members",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/serviceConnections",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/sprints/list",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/variableGroups",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/fields/listAll",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/workflow/listWorkflowStatus",
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
    public func listWorkitemTimeWithOptions(_ organizationId: String, _ workitemId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkitemTimeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkitemTime",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(workitemId) + "/time/list",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/listWorkitems",
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
    public func listWorkspacesWithOptions(_ tmpReq: ListWorkspacesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkspacesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListWorkspacesShrinkRequest = ListWorkspacesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.statusList)) {
            request.statusListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.statusList, "statusList", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.workspaceTemplateList)) {
            request.workspaceTemplateListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.workspaceTemplateList, "workspaceTemplateList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusListShrink)) {
            query["statusList"] = request.statusListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceTemplateListShrink)) {
            query["workspaceTemplateList"] = request.workspaceTemplateListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkspaces",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/workspaces",
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
    public func logPipelineJobRunWithOptions(_ organizationId: String, _ pipelineId: String, _ jobId: String, _ pipelineRunId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> LogPipelineJobRunResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LogPipelineJobRun",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipeline/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/pipelineRun/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId) + "/job/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId) + "/logs",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/deploy/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(deployOrderId) + "/machine/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(machineSn) + "/log",
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
    public func passPipelineValidateWithOptions(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ jobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PassPipelineValidateResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PassPipelineValidate",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/pipelineRuns/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId) + "/jobs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId) + "/pass",
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
    public func refusePipelineValidateWithOptions(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ jobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RefusePipelineValidateResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefusePipelineValidate",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/pipelineRuns/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId) + "/jobs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId) + "/refuse",
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
    public func releaseWorkspaceWithOptions(_ workspaceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseWorkspaceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseWorkspace",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/api/workspaces/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId) + "/release",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseWorkspace(_ workspaceId: String) async throws -> ReleaseWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await releaseWorkspaceWithOptions(workspaceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/sshKey",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/deploy/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(deployOrderId) + "/resume",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/pipelineRuns/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId) + "/jobs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/deploy/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(deployOrderId) + "/machine/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(machineSn) + "/retry",
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
    public func skipPipelineJobRunWithOptions(_ organizationId: String, _ pipelineId: String, _ pipelineRunId: String, _ jobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SkipPipelineJobRunResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SkipPipelineJobRun",
            "version": "2021-06-25",
            "protocol": "HTTPS",
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/pipelineRuns/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId) + "/jobs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId) + "/skip",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/deploy/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(deployOrderId) + "/machine/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(machineSn) + "/skip",
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
            "pathname": "/organizations/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/run",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/pipelineRuns/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId) + "/jobs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId) + "/stop",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/pipelineRuns/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineRunId) + "/stop",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/deploy/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(deployOrderId) + "/stop",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/mirror",
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/files/update",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/flow/tags/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(id),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/flow/tagGroups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(id),
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
            "pathname": "/repository/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId) + "/members/update/aliyun_pk",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/hostGroups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(id),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelines/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(pipelineId) + "/baseInfo",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/pipelineGroups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectId) + "/updateMember",
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
            "pathname": "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/protect_branches/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(id),
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId),
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
            "pathname": "/repository/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(repositoryId) + "/members/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(aliyunPk),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceType) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceId) + "/members/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(accountId),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/variableGroups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(id),
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/update",
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
            "pathname": "/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationId) + "/workitems/commentUpdate",
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
}
