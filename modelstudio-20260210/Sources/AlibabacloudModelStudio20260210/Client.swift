import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = "regional"
        self._endpointMap = [
            "eu-central-1": "modelstudio.eu-central-1.aliyuncs.com",
            "cn-hongkong": "modelstudio.cn-hongkong.aliyuncs.com",
            "cn-beijing": "modelstudio.cn-beijing.aliyuncs.com",
            "ap-southeast-1": "modelstudio.ap-southeast-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("modelstudio", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addOrganizationMemberWithOptions(_ request: AddOrganizationMemberRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddOrganizationMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerUacAccountId)) {
            query["CallerUacAccountId"] = request.callerUacAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            query["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgRoleCode)) {
            query["OrgRoleCode"] = request.orgRoleCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specType)) {
            query["SpecType"] = request.specType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddOrganizationMember",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/tokenplan/organization/member-additions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddOrganizationMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addOrganizationMember(_ request: AddOrganizationMemberRequest) async throws -> AddOrganizationMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addOrganizationMemberWithOptions(request as! AddOrganizationMemberRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchAssignSeatsWithOptions(_ request: BatchAssignSeatsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchAssignSeatsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountIds)) {
            query["AccountIds"] = request.accountIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.accountIdsStr)) {
            query["AccountIdsStr"] = request.accountIdsStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerUacAccountId)) {
            query["CallerUacAccountId"] = request.callerUacAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locale)) {
            query["Locale"] = request.locale ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seatType)) {
            query["SeatType"] = request.seatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchAssignSeats",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/tokenplan/subscription/seat-assignments",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchAssignSeatsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchAssignSeats(_ request: BatchAssignSeatsRequest) async throws -> BatchAssignSeatsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchAssignSeatsWithOptions(request as! BatchAssignSeatsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApiKeyWithOptions(_ request: CreateApiKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApiKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.auth)) {
            body["auth"] = request.auth!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApiKey",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/modelstudio/apikeys",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApiKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApiKey(_ request: CreateApiKeyRequest) async throws -> CreateApiKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createApiKeyWithOptions(request as! CreateApiKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTokenPlanKeyWithOptions(_ request: CreateTokenPlanKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTokenPlanKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerUacAccountId)) {
            query["CallerUacAccountId"] = request.callerUacAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTokenPlanKey",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/tokenplan/api-keys",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTokenPlanKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTokenPlanKey(_ request: CreateTokenPlanKeyRequest) async throws -> CreateTokenPlanKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTokenPlanKeyWithOptions(request as! CreateTokenPlanKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspaceWithOptions(_ request: CreateWorkspaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkspaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceSite)) {
            query["serviceSite"] = request.serviceSite ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceName)) {
            query["workspaceName"] = request.workspaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkspace",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/modelstudio/workspaces",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
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
    public func deleteApiKeyWithOptions(_ apiKeyId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApiKeyResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApiKey",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/modelstudio/apikeys/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(apiKeyId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApiKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApiKey(_ apiKeyId: String) async throws -> DeleteApiKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteApiKeyWithOptions(apiKeyId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspaceWithOptions(_ workspaceId: String, _ request: DeleteWorkspaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWorkspaceResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWorkspace",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/modelstudio/workspaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspace(_ workspaceId: String, _ request: DeleteWorkspaceRequest) async throws -> DeleteWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteWorkspaceWithOptions(workspaceId as! String, request as! DeleteWorkspaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableApiKeyWithOptions(_ apiKeyId: String, _ request: DisableApiKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableApiKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableApiKey",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/modelstudio/apikeys/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(apiKeyId)) + "/disable",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableApiKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableApiKey(_ apiKeyId: String, _ request: DisableApiKeyRequest) async throws -> DisableApiKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableApiKeyWithOptions(apiKeyId as! String, request as! DisableApiKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableApiKeyWithOptions(_ apiKeyId: String, _ request: EnableApiKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableApiKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableApiKey",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/modelstudio/apikeys/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(apiKeyId)) + "/enable",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableApiKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableApiKey(_ apiKeyId: String, _ request: EnableApiKeyRequest) async throws -> EnableApiKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableApiKeyWithOptions(apiKeyId as! String, request as! EnableApiKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApiKeyWithOptions(_ apiKeyId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApiKeyResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApiKey",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/modelstudio/apikeys/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(apiKeyId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApiKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApiKey(_ apiKeyId: String) async throws -> GetApiKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getApiKeyWithOptions(apiKeyId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubscriptionSeatDetailsWithOptions(_ request: GetSubscriptionSeatDetailsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSubscriptionSeatDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callerUacAccountId)) {
            query["CallerUacAccountId"] = request.callerUacAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryAssigned)) {
            query["QueryAssigned"] = request.queryAssigned!;
        }
        if (!TeaUtils.Client.isUnset(request.seatId)) {
            query["SeatId"] = request.seatId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seatType)) {
            query["SeatType"] = request.seatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusList)) {
            query["StatusList"] = request.statusList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.statusListStr)) {
            query["StatusListStr"] = request.statusListStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSubscriptionSeatDetails",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/tokenplan/subscription/seat-detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSubscriptionSeatDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubscriptionSeatDetails(_ request: GetSubscriptionSeatDetailsRequest) async throws -> GetSubscriptionSeatDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSubscriptionSeatDetailsWithOptions(request as! GetSubscriptionSeatDetailsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApiKeysWithOptions(_ request: ListApiKeysRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApiKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiKeyId)) {
            query["apiKeyId"] = request.apiKeyId!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApiKeys",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/modelstudio/apikeys",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApiKeysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApiKeys(_ request: ListApiKeysRequest) async throws -> ListApiKeysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listApiKeysWithOptions(request as! ListApiKeysRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspacesWithOptions(_ request: ListWorkspacesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkspacesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceName)) {
            query["workspaceName"] = request.workspaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkspaces",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/modelstudio/workspaces",
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
    public func resetApiKeyWithOptions(_ apiKeyId: String, _ request: ResetApiKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetApiKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetApiKey",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/modelstudio/apikeys/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(apiKeyId)) + "/reset",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetApiKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetApiKey(_ apiKeyId: String, _ request: ResetApiKeyRequest) async throws -> ResetApiKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await resetApiKeyWithOptions(apiKeyId as! String, request as! ResetApiKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApiKeyWithOptions(_ apiKeyId: String, _ request: UpdateApiKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateApiKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["description"] = request.description_ ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.auth)) {
            body["auth"] = request.auth!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApiKey",
            "version": "2026-02-10",
            "protocol": "HTTPS",
            "pathname": "/modelstudio/apikeys/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(apiKeyId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateApiKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApiKey(_ apiKeyId: String, _ request: UpdateApiKeyRequest) async throws -> UpdateApiKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateApiKeyWithOptions(apiKeyId as! String, request as! UpdateApiKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
