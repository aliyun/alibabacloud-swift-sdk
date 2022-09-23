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
        self._endpointRule = ""
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("codeup", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func acceptMergeRequest(_ ProjectId: String, _ MergeRequestId: String, _ request: AcceptMergeRequestRequest) async throws -> AcceptMergeRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await acceptMergeRequestWithOptions(ProjectId as! String, MergeRequestId as! String, request as! AcceptMergeRequestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func acceptMergeRequestWithOptions(_ ProjectId: String, _ MergeRequestId: String, _ request: AcceptMergeRequestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AcceptMergeRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AcceptMergeRequest",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/merge_request/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(MergeRequestId) + "/accept",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AcceptMergeRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addGroupMember(_ GroupId: String, _ request: AddGroupMemberRequest) async throws -> AddGroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addGroupMemberWithOptions(GroupId as! String, request as! AddGroupMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addGroupMemberWithOptions(_ GroupId: String, _ request: AddGroupMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddGroupMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddGroupMember",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(GroupId) + "/members",
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
    public func addRepositoryMember(_ ProjectId: String, _ request: AddRepositoryMemberRequest) async throws -> AddRepositoryMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addRepositoryMemberWithOptions(ProjectId as! String, request as! AddRepositoryMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addRepositoryMemberWithOptions(_ ProjectId: String, _ request: AddRepositoryMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddRepositoryMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddRepositoryMember",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/members",
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
    public func addWebhook(_ ProjectId: String, _ request: AddWebhookRequest) async throws -> AddWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addWebhookWithOptions(ProjectId as! String, request as! AddWebhookRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWebhookWithOptions(_ ProjectId: String, _ request: AddWebhookRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddWebhookResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddWebhook",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/hooks",
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
    public func createBranch(_ ProjectId: String, _ request: CreateBranchRequest) async throws -> CreateBranchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createBranchWithOptions(ProjectId as! String, request as! CreateBranchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBranchWithOptions(_ ProjectId: String, _ request: CreateBranchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBranchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
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
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/branches",
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
    public func createFile(_ ProjectId: String, _ request: CreateFileRequest) async throws -> CreateFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createFileWithOptions(ProjectId as! String, request as! CreateFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFileWithOptions(_ ProjectId: String, _ request: CreateFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFile",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/files",
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
    public func createMergeRequest(_ ProjectId: String, _ request: CreateMergeRequestRequest) async throws -> CreateMergeRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createMergeRequestWithOptions(ProjectId as! String, request as! CreateMergeRequestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMergeRequestWithOptions(_ ProjectId: String, _ request: CreateMergeRequestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMergeRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMergeRequest",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/merge_requests",
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
    public func createMergeRequestComment(_ ProjectId: String, _ MergeRequestId: String, _ request: CreateMergeRequestCommentRequest) async throws -> CreateMergeRequestCommentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createMergeRequestCommentWithOptions(ProjectId as! String, MergeRequestId as! String, request as! CreateMergeRequestCommentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMergeRequestCommentWithOptions(_ ProjectId: String, _ MergeRequestId: String, _ request: CreateMergeRequestCommentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMergeRequestCommentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMergeRequestComment",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/merge_request/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(MergeRequestId) + "/comments",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMergeRequestCommentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepository(_ request: CreateRepositoryRequest) async throws -> CreateRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRepositoryWithOptions(request as! CreateRepositoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepositoryWithOptions(_ request: CreateRepositoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createParentPath)) {
            query["CreateParentPath"] = request.createParentPath!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sync)) {
            query["Sync"] = request.sync!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepository",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects",
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
    public func createRepositoryDeployKey(_ ProjectId: String, _ request: CreateRepositoryDeployKeyRequest) async throws -> CreateRepositoryDeployKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRepositoryDeployKeyWithOptions(ProjectId as! String, request as! CreateRepositoryDeployKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepositoryDeployKeyWithOptions(_ ProjectId: String, _ request: CreateRepositoryDeployKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepositoryDeployKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepositoryDeployKey",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/keys",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepositoryDeployKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepositoryGroup(_ request: CreateRepositoryGroupRequest) async throws -> CreateRepositoryGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRepositoryGroupWithOptions(request as! CreateRepositoryGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepositoryGroupWithOptions(_ request: CreateRepositoryGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepositoryGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepositoryGroup",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/groups",
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
    public func createRepositoryProtectedBranch(_ ProjectId: String, _ request: CreateRepositoryProtectedBranchRequest) async throws -> CreateRepositoryProtectedBranchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRepositoryProtectedBranchWithOptions(ProjectId as! String, request as! CreateRepositoryProtectedBranchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepositoryProtectedBranchWithOptions(_ ProjectId: String, _ request: CreateRepositoryProtectedBranchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepositoryProtectedBranchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepositoryProtectedBranch",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/protect_branches",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepositoryProtectedBranchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSshKey(_ request: CreateSshKeyRequest) async throws -> CreateSshKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSshKeyWithOptions(request as! CreateSshKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSshKeyWithOptions(_ request: CreateSshKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSshKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSshKey",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/user/keys",
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
    public func createTag(_ ProjectId: String, _ request: CreateTagRequest) async throws -> CreateTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTagWithOptions(ProjectId as! String, request as! CreateTagRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTagWithOptions(_ ProjectId: String, _ request: CreateTagRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTag",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/tags",
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
    public func deleteBranch(_ ProjectId: String, _ request: DeleteBranchRequest) async throws -> DeleteBranchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteBranchWithOptions(ProjectId as! String, request as! DeleteBranchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBranchWithOptions(_ ProjectId: String, _ request: DeleteBranchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBranchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.branchName)) {
            query["BranchName"] = request.branchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBranch",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/branches/delete",
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
    public func deleteFile(_ ProjectId: String, _ request: DeleteFileRequest) async throws -> DeleteFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteFileWithOptions(ProjectId as! String, request as! DeleteFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFileWithOptions(_ ProjectId: String, _ request: DeleteFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.branchName)) {
            query["BranchName"] = request.branchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commitMessage)) {
            query["CommitMessage"] = request.commitMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            query["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFile",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/files",
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
    public func deleteGroupMember(_ GroupId: String, _ UserId: String, _ request: DeleteGroupMemberRequest) async throws -> DeleteGroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteGroupMemberWithOptions(GroupId as! String, UserId as! String, request as! DeleteGroupMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGroupMemberWithOptions(_ GroupId: String, _ UserId: String, _ request: DeleteGroupMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGroupMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGroupMember",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(GroupId) + "/members/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(UserId),
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
    public func deleteRepository(_ ProjectId: String, _ request: DeleteRepositoryRequest) async throws -> DeleteRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepositoryWithOptions(ProjectId as! String, request as! DeleteRepositoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryWithOptions(_ ProjectId: String, _ request: DeleteRepositoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepository",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/remove",
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
    public func deleteRepositoryGroup(_ GroupId: String, _ request: DeleteRepositoryGroupRequest) async throws -> DeleteRepositoryGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepositoryGroupWithOptions(GroupId as! String, request as! DeleteRepositoryGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryGroupWithOptions(_ GroupId: String, _ request: DeleteRepositoryGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepositoryGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepositoryGroup",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(GroupId) + "/remove",
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
    public func deleteRepositoryMember(_ ProjectId: String, _ UserId: String, _ request: DeleteRepositoryMemberRequest) async throws -> DeleteRepositoryMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepositoryMemberWithOptions(ProjectId as! String, UserId as! String, request as! DeleteRepositoryMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryMemberWithOptions(_ ProjectId: String, _ UserId: String, _ request: DeleteRepositoryMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepositoryMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepositoryMember",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/members/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(UserId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepositoryMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryMemberWithExternUid(_ ProjectId: String, _ request: DeleteRepositoryMemberWithExternUidRequest) async throws -> DeleteRepositoryMemberWithExternUidResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepositoryMemberWithExternUidWithOptions(ProjectId as! String, request as! DeleteRepositoryMemberWithExternUidRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryMemberWithExternUidWithOptions(_ ProjectId: String, _ request: DeleteRepositoryMemberWithExternUidRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepositoryMemberWithExternUidResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externUserId)) {
            query["ExternUserId"] = request.externUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepositoryMemberWithExternUid",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/members/remove",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepositoryMemberWithExternUidResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryProtectedBranch(_ ProjectId: String, _ ProtectedBranchId: String, _ request: DeleteRepositoryProtectedBranchRequest) async throws -> DeleteRepositoryProtectedBranchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepositoryProtectedBranchWithOptions(ProjectId as! String, ProtectedBranchId as! String, request as! DeleteRepositoryProtectedBranchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryProtectedBranchWithOptions(_ ProjectId: String, _ ProtectedBranchId: String, _ request: DeleteRepositoryProtectedBranchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepositoryProtectedBranchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepositoryProtectedBranch",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/protect_branches/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProtectedBranchId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepositoryProtectedBranchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryTag(_ ProjectId: String, _ TagName: String, _ request: DeleteRepositoryTagRequest) async throws -> DeleteRepositoryTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepositoryTagWithOptions(ProjectId as! String, TagName as! String, request as! DeleteRepositoryTagRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryTagWithOptions(_ ProjectId: String, _ TagName: String, _ request: DeleteRepositoryTagRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepositoryTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepositoryTag",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/tags/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(TagName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepositoryTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryTagV2(_ ProjectId: String, _ request: DeleteRepositoryTagV2Request) async throws -> DeleteRepositoryTagV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepositoryTagV2WithOptions(ProjectId as! String, request as! DeleteRepositoryTagV2Request, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryTagV2WithOptions(_ ProjectId: String, _ request: DeleteRepositoryTagV2Request, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepositoryTagV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagName)) {
            query["TagName"] = request.tagName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepositoryTagV2",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/tag/delete",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepositoryTagV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryWebhook(_ ProjectId: String, _ WebhookId: String, _ request: DeleteRepositoryWebhookRequest) async throws -> DeleteRepositoryWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepositoryWebhookWithOptions(ProjectId as! String, WebhookId as! String, request as! DeleteRepositoryWebhookRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryWebhookWithOptions(_ ProjectId: String, _ WebhookId: String, _ request: DeleteRepositoryWebhookRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepositoryWebhookResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepositoryWebhook",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/hooks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(WebhookId),
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
    public func enableRepositoryDeployKey(_ ProjectId: String, _ KeyId: String, _ request: EnableRepositoryDeployKeyRequest) async throws -> EnableRepositoryDeployKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableRepositoryDeployKeyWithOptions(ProjectId as! String, KeyId as! String, request as! EnableRepositoryDeployKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableRepositoryDeployKeyWithOptions(_ ProjectId: String, _ KeyId: String, _ request: EnableRepositoryDeployKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableRepositoryDeployKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableRepositoryDeployKey",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/keys/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(KeyId) + "/enable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableRepositoryDeployKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBranchInfo(_ ProjectId: String, _ request: GetBranchInfoRequest) async throws -> GetBranchInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getBranchInfoWithOptions(ProjectId as! String, request as! GetBranchInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBranchInfoWithOptions(_ ProjectId: String, _ request: GetBranchInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBranchInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.branchName)) {
            query["BranchName"] = request.branchName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBranchInfo",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/branches/detail",
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
    public func getCodeCompletion(_ ServiceName: String, _ request: GetCodeCompletionRequest) async throws -> GetCodeCompletionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCodeCompletionWithOptions(ServiceName as! String, request as! GetCodeCompletionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCodeCompletionWithOptions(_ ServiceName: String, _ request: GetCodeCompletionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCodeCompletionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fetchKeys)) {
            query["FetchKeys"] = request.fetchKeys ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isEncrypted)) {
            query["IsEncrypted"] = request.isEncrypted!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCodeCompletion",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v2/service/invoke/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName),
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCodeCompletionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCodeupOrganization(_ OrganizationIdentity: String, _ request: GetCodeupOrganizationRequest) async throws -> GetCodeupOrganizationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCodeupOrganizationWithOptions(OrganizationIdentity as! String, request as! GetCodeupOrganizationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCodeupOrganizationWithOptions(_ OrganizationIdentity: String, _ request: GetCodeupOrganizationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCodeupOrganizationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCodeupOrganization",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/organization/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(OrganizationIdentity),
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
    public func getFileBlobs(_ ProjectId: String, _ request: GetFileBlobsRequest) async throws -> GetFileBlobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFileBlobsWithOptions(ProjectId as! String, request as! GetFileBlobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileBlobsWithOptions(_ ProjectId: String, _ request: GetFileBlobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFileBlobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            query["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["From"] = request.from!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ref)) {
            query["Ref"] = request.ref ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            query["To"] = request.to!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFileBlobs",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/blobs",
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
    public func getFileLastCommit(_ ProjectId: String, _ request: GetFileLastCommitRequest) async throws -> GetFileLastCommitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFileLastCommitWithOptions(ProjectId as! String, request as! GetFileLastCommitRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileLastCommitWithOptions(_ ProjectId: String, _ request: GetFileLastCommitRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFileLastCommitResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            query["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sha)) {
            query["Sha"] = request.sha ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFileLastCommit",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/files/last_commit",
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
    public func getGroupDetail(_ request: GetGroupDetailRequest) async throws -> GetGroupDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGroupDetailWithOptions(request as! GetGroupDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGroupDetailWithOptions(_ request: GetGroupDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGroupDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGroupDetail",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/groups/detail",
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
    public func getMergeRequestApproveStatus(_ ProjectId: String, _ MergeRequestId: String, _ request: GetMergeRequestApproveStatusRequest) async throws -> GetMergeRequestApproveStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMergeRequestApproveStatusWithOptions(ProjectId as! String, MergeRequestId as! String, request as! GetMergeRequestApproveStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMergeRequestApproveStatusWithOptions(_ ProjectId: String, _ MergeRequestId: String, _ request: GetMergeRequestApproveStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMergeRequestApproveStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMergeRequestApproveStatus",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/merge_request/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(MergeRequestId) + "/approve_status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMergeRequestApproveStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMergeRequestDetail(_ ProjectId: String, _ MergeRequestId: String, _ request: GetMergeRequestDetailRequest) async throws -> GetMergeRequestDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMergeRequestDetailWithOptions(ProjectId as! String, MergeRequestId as! String, request as! GetMergeRequestDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMergeRequestDetailWithOptions(_ ProjectId: String, _ MergeRequestId: String, _ request: GetMergeRequestDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMergeRequestDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMergeRequestDetail",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/merge_request/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(MergeRequestId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMergeRequestDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMergeRequestSetting(_ ProjectId: String, _ request: GetMergeRequestSettingRequest) async throws -> GetMergeRequestSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMergeRequestSettingWithOptions(ProjectId as! String, request as! GetMergeRequestSettingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMergeRequestSettingWithOptions(_ ProjectId: String, _ request: GetMergeRequestSettingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMergeRequestSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMergeRequestSetting",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/settings/merge_requests",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMergeRequestSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrganizationRepositorySetting(_ request: GetOrganizationRepositorySettingRequest) async throws -> GetOrganizationRepositorySettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getOrganizationRepositorySettingWithOptions(request as! GetOrganizationRepositorySettingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrganizationRepositorySettingWithOptions(_ request: GetOrganizationRepositorySettingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrganizationRepositorySettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOrganizationRepositorySetting",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/organization/settings/repo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOrganizationRepositorySettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrganizationSecurityCenterStatus(_ request: GetOrganizationSecurityCenterStatusRequest) async throws -> GetOrganizationSecurityCenterStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getOrganizationSecurityCenterStatusWithOptions(request as! GetOrganizationSecurityCenterStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrganizationSecurityCenterStatusWithOptions(_ request: GetOrganizationSecurityCenterStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrganizationSecurityCenterStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOrganizationSecurityCenterStatus",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/organization/security/status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOrganizationSecurityCenterStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectMember(_ ProjectId: String, _ UserId: String, _ request: GetProjectMemberRequest) async throws -> GetProjectMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProjectMemberWithOptions(ProjectId as! String, UserId as! String, request as! GetProjectMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectMemberWithOptions(_ ProjectId: String, _ UserId: String, _ request: GetProjectMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProjectMember",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/members/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(UserId),
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
    public func getRepositoryCommit(_ ProjectId: String, _ Sha: String, _ request: GetRepositoryCommitRequest) async throws -> GetRepositoryCommitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepositoryCommitWithOptions(ProjectId as! String, Sha as! String, request as! GetRepositoryCommitRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepositoryCommitWithOptions(_ ProjectId: String, _ Sha: String, _ request: GetRepositoryCommitRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepositoryCommitResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepositoryCommit",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/commits/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(Sha),
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
    public func getRepositoryInfo(_ request: GetRepositoryInfoRequest) async throws -> GetRepositoryInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepositoryInfoWithOptions(request as! GetRepositoryInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepositoryInfoWithOptions(_ request: GetRepositoryInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepositoryInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identity)) {
            query["Identity"] = request.identity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepositoryInfo",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/info",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepositoryInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepositoryTag(_ ProjectId: String, _ TagName: String, _ request: GetRepositoryTagRequest) async throws -> GetRepositoryTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepositoryTagWithOptions(ProjectId as! String, TagName as! String, request as! GetRepositoryTagRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepositoryTagWithOptions(_ ProjectId: String, _ TagName: String, _ request: GetRepositoryTagRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepositoryTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepositoryTag",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/tags/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(TagName),
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
    public func getRepositoryTagV2(_ ProjectId: String, _ request: GetRepositoryTagV2Request) async throws -> GetRepositoryTagV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepositoryTagV2WithOptions(ProjectId as! String, request as! GetRepositoryTagV2Request, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepositoryTagV2WithOptions(_ ProjectId: String, _ request: GetRepositoryTagV2Request, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepositoryTagV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagName)) {
            query["TagName"] = request.tagName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepositoryTagV2",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/tag/info",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepositoryTagV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserInfo(_ request: GetUserInfoRequest) async throws -> GetUserInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUserInfoWithOptions(request as! GetUserInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserInfoWithOptions(_ request: GetUserInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserInfo",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/user/current",
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
    public func isSlsUserAuthrizedCodeup(_ request: IsSlsUserAuthrizedCodeupRequest) async throws -> IsSlsUserAuthrizedCodeupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await isSlsUserAuthrizedCodeupWithOptions(request as! IsSlsUserAuthrizedCodeupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isSlsUserAuthrizedCodeupWithOptions(_ request: IsSlsUserAuthrizedCodeupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> IsSlsUserAuthrizedCodeupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunSubUserId)) {
            body["aliyunSubUserId"] = request.aliyunSubUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aliyunUserId)) {
            body["aliyunUserId"] = request.aliyunUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeupProjectId)) {
            body["codeupProjectId"] = request.codeupProjectId!;
        }
        if (!TeaUtils.Client.isUnset(request.slsLogStore)) {
            body["slsLogStore"] = request.slsLogStore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsProject)) {
            body["slsProject"] = request.slsProject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IsSlsUserAuthrizedCodeup",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/repository/is_codeup_authrized",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IsSlsUserAuthrizedCodeupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupMember(_ GroupId: String, _ request: ListGroupMemberRequest) async throws -> ListGroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGroupMemberWithOptions(GroupId as! String, request as! ListGroupMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupMemberWithOptions(_ GroupId: String, _ request: ListGroupMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGroupMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGroupMember",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(GroupId) + "/members",
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
    public func listGroupRepositories(_ Identity: String, _ request: ListGroupRepositoriesRequest) async throws -> ListGroupRepositoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGroupRepositoriesWithOptions(Identity as! String, request as! ListGroupRepositoriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupRepositoriesWithOptions(_ Identity: String, _ request: ListGroupRepositoriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGroupRepositoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isMember)) {
            query["IsMember"] = request.isMember!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["Search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGroupRepositories",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(Identity) + "/projects",
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
    public func listGroups(_ request: ListGroupsRequest) async throws -> ListGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGroupsWithOptions(request as! ListGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupsWithOptions(_ request: ListGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includePersonal)) {
            query["IncludePersonal"] = request.includePersonal!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["Search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGroups",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/groups/all",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMergeRequestComments(_ ProjectId: String, _ MergeRequestId: String, _ request: ListMergeRequestCommentsRequest) async throws -> ListMergeRequestCommentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMergeRequestCommentsWithOptions(ProjectId as! String, MergeRequestId as! String, request as! ListMergeRequestCommentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMergeRequestCommentsWithOptions(_ ProjectId: String, _ MergeRequestId: String, _ request: ListMergeRequestCommentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMergeRequestCommentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromCommit)) {
            query["FromCommit"] = request.fromCommit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toCommit)) {
            query["ToCommit"] = request.toCommit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMergeRequestComments",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/merge_request/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(MergeRequestId) + "/comments",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMergeRequestCommentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMergeRequests(_ request: ListMergeRequestsRequest) async throws -> ListMergeRequestsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMergeRequestsWithOptions(request as! ListMergeRequestsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMergeRequestsWithOptions(_ request: ListMergeRequestsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMergeRequestsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.afterDate)) {
            query["AfterDate"] = request.afterDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assigneeCodeupIdList)) {
            query["AssigneeCodeupIdList"] = request.assigneeCodeupIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assigneeIdList)) {
            query["AssigneeIdList"] = request.assigneeIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorCodeupIdList)) {
            query["AuthorCodeupIdList"] = request.authorCodeupIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorIdList)) {
            query["AuthorIdList"] = request.authorIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.beforeDate)) {
            query["BeforeDate"] = request.beforeDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupIdList)) {
            query["GroupIdList"] = request.groupIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectIdList)) {
            query["ProjectIdList"] = request.projectIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["Search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriberCodeupIdList)) {
            query["SubscriberCodeupIdList"] = request.subscriberCodeupIdList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMergeRequests",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/merge_requests/advanced_search",
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
    public func listOrganizationSecurityScores(_ request: ListOrganizationSecurityScoresRequest) async throws -> ListOrganizationSecurityScoresResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listOrganizationSecurityScoresWithOptions(request as! ListOrganizationSecurityScoresRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizationSecurityScoresWithOptions(_ request: ListOrganizationSecurityScoresRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOrganizationSecurityScoresResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOrganizationSecurityScores",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/organization/security/scores",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOrganizationSecurityScoresResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizations(_ request: ListOrganizationsRequest) async throws -> ListOrganizationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listOrganizationsWithOptions(request as! ListOrganizationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizationsWithOptions(_ request: ListOrganizationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOrganizationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessLevel)) {
            query["AccessLevel"] = request.accessLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minAccessLevel)) {
            query["MinAccessLevel"] = request.minAccessLevel!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOrganizations",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/organization",
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
    public func listRepositories(_ request: ListRepositoriesRequest) async throws -> ListRepositoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoriesWithOptions(request as! ListRepositoriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoriesWithOptions(_ request: ListRepositoriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.archive)) {
            query["Archive"] = request.archive!;
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["Search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositories",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/all",
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
    public func listRepositoryBranches(_ ProjectId: String, _ request: ListRepositoryBranchesRequest) async throws -> ListRepositoryBranchesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryBranchesWithOptions(ProjectId as! String, request as! ListRepositoryBranchesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryBranchesWithOptions(_ ProjectId: String, _ request: ListRepositoryBranchesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryBranchesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["Search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryBranches",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/branches",
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
    public func listRepositoryCode(_ request: ListRepositoryCodeRequest) async throws -> ListRepositoryCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryCodeWithOptions(request as! ListRepositoryCodeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryCodeWithOptions(_ request: ListRepositoryCodeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["FilePath"] = request.filePath!;
        }
        if (!TeaUtils.Client.isUnset(request.isCodeBlock)) {
            body["IsCodeBlock"] = request.isCodeBlock!;
        }
        if (!TeaUtils.Client.isUnset(request.keyWord)) {
            body["KeyWord"] = request.keyWord ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            body["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repositoryPath)) {
            body["RepositoryPath"] = request.repositoryPath!;
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["Scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            body["Sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryCode",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/search/v3/code",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepositoryCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryCommitDiff(_ ProjectId: String, _ Sha: String, _ request: ListRepositoryCommitDiffRequest) async throws -> ListRepositoryCommitDiffResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryCommitDiffWithOptions(ProjectId as! String, Sha as! String, request as! ListRepositoryCommitDiffRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryCommitDiffWithOptions(_ ProjectId: String, _ Sha: String, _ request: ListRepositoryCommitDiffRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryCommitDiffResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contextLine)) {
            query["ContextLine"] = request.contextLine!;
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryCommitDiff",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/commits/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(Sha) + "/diff",
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
    public func listRepositoryCommits(_ ProjectId: String, _ request: ListRepositoryCommitsRequest) async throws -> ListRepositoryCommitsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryCommitsWithOptions(ProjectId as! String, request as! ListRepositoryCommitsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryCommitsWithOptions(_ ProjectId: String, _ request: ListRepositoryCommitsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryCommitsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            query["Path"] = request.path ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refName)) {
            query["RefName"] = request.refName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["Search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showSignature)) {
            query["ShowSignature"] = request.showSignature!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryCommits",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/commits",
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
    public func listRepositoryMember(_ ProjectId: String, _ request: ListRepositoryMemberRequest) async throws -> ListRepositoryMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryMemberWithOptions(ProjectId as! String, request as! ListRepositoryMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryMemberWithOptions(_ ProjectId: String, _ request: ListRepositoryMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryMember",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/members",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepositoryMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryMemberWithInherited(_ ProjectId: String, _ request: ListRepositoryMemberWithInheritedRequest) async throws -> ListRepositoryMemberWithInheritedResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryMemberWithInheritedWithOptions(ProjectId as! String, request as! ListRepositoryMemberWithInheritedRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryMemberWithInheritedWithOptions(_ ProjectId: String, _ request: ListRepositoryMemberWithInheritedRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryMemberWithInheritedResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryMemberWithInherited",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/all_members",
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
    public func listRepositoryProtectedBranch(_ ProjectId: String, _ request: ListRepositoryProtectedBranchRequest) async throws -> ListRepositoryProtectedBranchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryProtectedBranchWithOptions(ProjectId as! String, request as! ListRepositoryProtectedBranchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryProtectedBranchWithOptions(_ ProjectId: String, _ request: ListRepositoryProtectedBranchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryProtectedBranchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryProtectedBranch",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/protect_branches",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepositoryProtectedBranchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryTags(_ ProjectId: String, _ request: ListRepositoryTagsRequest) async throws -> ListRepositoryTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryTagsWithOptions(ProjectId as! String, request as! ListRepositoryTagsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryTagsWithOptions(_ ProjectId: String, _ request: ListRepositoryTagsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["Search"] = request.search ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showSignature)) {
            query["ShowSignature"] = request.showSignature!;
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryTags",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/tags",
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
    public func listRepositoryTree(_ ProjectId: String, _ request: ListRepositoryTreeRequest) async throws -> ListRepositoryTreeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryTreeWithOptions(ProjectId as! String, request as! ListRepositoryTreeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryTreeWithOptions(_ ProjectId: String, _ request: ListRepositoryTreeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryTreeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            query["Path"] = request.path ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refName)) {
            query["RefName"] = request.refName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryTree",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/tree",
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
    public func listRepositoryWebhook(_ ProjectId: String, _ request: ListRepositoryWebhookRequest) async throws -> ListRepositoryWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRepositoryWebhookWithOptions(ProjectId as! String, request as! ListRepositoryWebhookRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryWebhookWithOptions(_ ProjectId: String, _ request: ListRepositoryWebhookRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryWebhookResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepositoryWebhook",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/hooks",
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
    public func mergeMergeRequest(_ ProjectId: String, _ MergeRequestId: String, _ request: MergeMergeRequestRequest) async throws -> MergeMergeRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await mergeMergeRequestWithOptions(ProjectId as! String, MergeRequestId as! String, request as! MergeMergeRequestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mergeMergeRequestWithOptions(_ ProjectId: String, _ MergeRequestId: String, _ request: MergeMergeRequestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> MergeMergeRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MergeMergeRequest",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/merge_request/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(MergeRequestId) + "/merge",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MergeMergeRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySlsRelation(_ request: QuerySlsRelationRequest) async throws -> QuerySlsRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await querySlsRelationWithOptions(request as! QuerySlsRelationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySlsRelationWithOptions(_ request: QuerySlsRelationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySlsRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunUserId)) {
            body["aliyunUserId"] = request.aliyunUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeupProjectId)) {
            body["codeupProjectId"] = request.codeupProjectId!;
        }
        if (!TeaUtils.Client.isUnset(request.slsLogStore)) {
            body["slsLogStore"] = request.slsLogStore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsProject)) {
            body["slsProject"] = request.slsProject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySlsRelation",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/repository/query_sls_relation",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySlsRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func relatedSlsLogStore(_ request: RelatedSlsLogStoreRequest) async throws -> RelatedSlsLogStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await relatedSlsLogStoreWithOptions(request as! RelatedSlsLogStoreRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func relatedSlsLogStoreWithOptions(_ request: RelatedSlsLogStoreRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RelatedSlsLogStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunUserId)) {
            body["aliyunUserId"] = request.aliyunUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeupProjectId)) {
            body["codeupProjectId"] = request.codeupProjectId!;
        }
        if (!TeaUtils.Client.isUnset(request.defaultViewer)) {
            body["defaultViewer"] = request.defaultViewer!;
        }
        if (!TeaUtils.Client.isUnset(request.slsLogStore)) {
            body["slsLogStore"] = request.slsLogStore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsProject)) {
            body["slsProject"] = request.slsProject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RelatedSlsLogStore",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/repository/related_to_sls_log_store",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RelatedSlsLogStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerRepositoryMirrorSync(_ ProjectId: String, _ request: TriggerRepositoryMirrorSyncRequest) async throws -> TriggerRepositoryMirrorSyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await triggerRepositoryMirrorSyncWithOptions(ProjectId as! String, request as! TriggerRepositoryMirrorSyncRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerRepositoryMirrorSyncWithOptions(_ ProjectId: String, _ request: TriggerRepositoryMirrorSyncRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TriggerRepositoryMirrorSyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.account)) {
            query["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TriggerRepositoryMirrorSync",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/mirror",
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
    public func unRelatedSlsLogStore(_ request: UnRelatedSlsLogStoreRequest) async throws -> UnRelatedSlsLogStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await unRelatedSlsLogStoreWithOptions(request as! UnRelatedSlsLogStoreRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unRelatedSlsLogStoreWithOptions(_ request: UnRelatedSlsLogStoreRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UnRelatedSlsLogStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunUserId)) {
            body["aliyunUserId"] = request.aliyunUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeupProjectId)) {
            body["codeupProjectId"] = request.codeupProjectId!;
        }
        if (!TeaUtils.Client.isUnset(request.slsLogStore)) {
            body["slsLogStore"] = request.slsLogStore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsProject)) {
            body["slsProject"] = request.slsProject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnRelatedSlsLogStore",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/repository/unrelated_to_sls_log_store",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnRelatedSlsLogStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFile(_ ProjectId: String, _ request: UpdateFileRequest) async throws -> UpdateFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateFileWithOptions(ProjectId as! String, request as! UpdateFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFileWithOptions(_ ProjectId: String, _ request: UpdateFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFile",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/repository/files",
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
    public func updateGroupMember(_ GroupId: String, _ UserId: String, _ request: UpdateGroupMemberRequest) async throws -> UpdateGroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateGroupMemberWithOptions(GroupId as! String, UserId as! String, request as! UpdateGroupMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGroupMemberWithOptions(_ GroupId: String, _ UserId: String, _ request: UpdateGroupMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGroupMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGroupMember",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(GroupId) + "/members/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(UserId),
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
    public func updateMergeRequest(_ ProjectId: String, _ MergeRequestId: String, _ request: UpdateMergeRequestRequest) async throws -> UpdateMergeRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateMergeRequestWithOptions(ProjectId as! String, MergeRequestId as! String, request as! UpdateMergeRequestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMergeRequestWithOptions(_ ProjectId: String, _ MergeRequestId: String, _ request: UpdateMergeRequestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMergeRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMergeRequest",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/merge_request/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(MergeRequestId),
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
    public func updateMergeRequestComment(_ ProjectId: String, _ MergeRequestId: String, _ NoteId: String, _ request: UpdateMergeRequestCommentRequest) async throws -> UpdateMergeRequestCommentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateMergeRequestCommentWithOptions(ProjectId as! String, MergeRequestId as! String, NoteId as! String, request as! UpdateMergeRequestCommentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMergeRequestCommentWithOptions(_ ProjectId: String, _ MergeRequestId: String, _ NoteId: String, _ request: UpdateMergeRequestCommentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMergeRequestCommentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMergeRequestComment",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/merge_requests/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(MergeRequestId) + "/notes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(NoteId),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMergeRequestCommentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMergeRequestSetting(_ ProjectId: String, _ request: UpdateMergeRequestSettingRequest) async throws -> UpdateMergeRequestSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateMergeRequestSettingWithOptions(ProjectId as! String, request as! UpdateMergeRequestSettingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMergeRequestSettingWithOptions(_ ProjectId: String, _ request: UpdateMergeRequestSettingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMergeRequestSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMergeRequestSetting",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v4/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/settings/merge_requests",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMergeRequestSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepository(_ ProjectId: String, _ request: UpdateRepositoryRequest) async throws -> UpdateRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRepositoryWithOptions(ProjectId as! String, request as! UpdateRepositoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepositoryWithOptions(_ ProjectId: String, _ request: UpdateRepositoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRepository",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId),
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
    public func updateRepositoryMember(_ ProjectId: String, _ UserId: String, _ request: UpdateRepositoryMemberRequest) async throws -> UpdateRepositoryMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRepositoryMemberWithOptions(ProjectId as! String, UserId as! String, request as! UpdateRepositoryMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepositoryMemberWithOptions(_ ProjectId: String, _ UserId: String, _ request: UpdateRepositoryMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRepositoryMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationId)) {
            query["OrganizationId"] = request.organizationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRepositoryMember",
            "version": "2020-04-14",
            "protocol": "HTTPS",
            "pathname": "/api/v3/projects/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ProjectId) + "/members/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(UserId),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRepositoryMemberResponse(), tmp)
    }
}
