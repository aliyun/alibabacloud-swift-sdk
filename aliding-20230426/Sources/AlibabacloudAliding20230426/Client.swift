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
        self._endpoint = try getEndpoint("aliding", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addWorkspaceDocMembersWithOptions(_ tmpReq: AddWorkspaceDocMembersRequest, _ tmpHeader: AddWorkspaceDocMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddWorkspaceDocMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddWorkspaceDocMembersShrinkRequest = AddWorkspaceDocMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AddWorkspaceDocMembersShrinkHeaders = AddWorkspaceDocMembersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddWorkspaceDocMembers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/addWorkspaceDocMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddWorkspaceDocMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWorkspaceDocMembers(_ request: AddWorkspaceDocMembersRequest) async throws -> AddWorkspaceDocMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddWorkspaceDocMembersHeaders = AddWorkspaceDocMembersHeaders([:])
        return try await addWorkspaceDocMembersWithOptions(request as! AddWorkspaceDocMembersRequest, headers as! AddWorkspaceDocMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWorkspaceMembersWithOptions(_ tmpReq: AddWorkspaceMembersRequest, _ tmpHeader: AddWorkspaceMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddWorkspaceMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddWorkspaceMembersShrinkRequest = AddWorkspaceMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: AddWorkspaceMembersShrinkHeaders = AddWorkspaceMembersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddWorkspaceMembers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/addWorkspaceMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddWorkspaceMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWorkspaceMembers(_ request: AddWorkspaceMembersRequest) async throws -> AddWorkspaceMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddWorkspaceMembersHeaders = AddWorkspaceMembersHeaders([:])
        return try await addWorkspaceMembersWithOptions(request as! AddWorkspaceMembersRequest, headers as! AddWorkspaceMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSheetWithOptions(_ tmpReq: CreateSheetRequest, _ tmpHeader: CreateSheetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSheetResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSheetShrinkRequest = CreateSheetShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateSheetShrinkHeaders = CreateSheetShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSheet",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/createSheet",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSheetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSheet(_ request: CreateSheetRequest) async throws -> CreateSheetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateSheetHeaders = CreateSheetHeaders([:])
        return try await createSheetWithOptions(request as! CreateSheetRequest, headers as! CreateSheetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTodoTaskWithOptions(_ tmpReq: CreateTodoTaskRequest, _ tmpHeader: CreateTodoTaskHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTodoTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateTodoTaskShrinkRequest = CreateTodoTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateTodoTaskShrinkHeaders = CreateTodoTaskShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.contentFieldList)) {
            request.contentFieldListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contentFieldList, "contentFieldList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.detailUrl)) {
            request.detailUrlShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.detailUrl, "detailUrl", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.executorIds)) {
            request.executorIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.executorIds, "executorIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notifyConfigs)) {
            request.notifyConfigsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notifyConfigs, "notifyConfigs", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.participantIds)) {
            request.participantIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.participantIds, "participantIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operatorId)) {
            query["operatorId"] = request.operatorId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentFieldListShrink)) {
            body["contentFieldList"] = request.contentFieldListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creatorId)) {
            body["creatorId"] = request.creatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detailUrlShrink)) {
            body["detailUrl"] = request.detailUrlShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dueTime)) {
            body["dueTime"] = request.dueTime!;
        }
        if (!TeaUtils.Client.isUnset(request.executorIdsShrink)) {
            body["executorIds"] = request.executorIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isOnlyShowExecutor)) {
            body["isOnlyShowExecutor"] = request.isOnlyShowExecutor!;
        }
        if (!TeaUtils.Client.isUnset(request.notifyConfigsShrink)) {
            body["notifyConfigs"] = request.notifyConfigsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.participantIdsShrink)) {
            body["participantIds"] = request.participantIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            body["subject"] = request.subject ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTodoTask",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/task/createTodoTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTodoTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTodoTask(_ request: CreateTodoTaskRequest) async throws -> CreateTodoTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateTodoTaskHeaders = CreateTodoTaskHeaders([:])
        return try await createTodoTaskWithOptions(request as! CreateTodoTaskRequest, headers as! CreateTodoTaskHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspaceWithOptions(_ tmpReq: CreateWorkspaceRequest, _ tmpHeader: CreateWorkspaceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkspaceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateWorkspaceShrinkRequest = CreateWorkspaceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateWorkspaceShrinkHeaders = CreateWorkspaceShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkspace",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/createWorkspace",
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
        var headers: CreateWorkspaceHeaders = CreateWorkspaceHeaders([:])
        return try await createWorkspaceWithOptions(request as! CreateWorkspaceRequest, headers as! CreateWorkspaceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspaceDocWithOptions(_ tmpReq: CreateWorkspaceDocRequest, _ tmpHeader: CreateWorkspaceDocHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkspaceDocResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateWorkspaceDocShrinkRequest = CreateWorkspaceDocShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateWorkspaceDocShrinkHeaders = CreateWorkspaceDocShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docType)) {
            body["DocType"] = request.docType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentNodeId)) {
            body["ParentNodeId"] = request.parentNodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            body["TemplateType"] = request.templateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkspaceDoc",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/createWorkspaceDoc",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWorkspaceDocResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspaceDoc(_ request: CreateWorkspaceDocRequest) async throws -> CreateWorkspaceDocResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateWorkspaceDocHeaders = CreateWorkspaceDocHeaders([:])
        return try await createWorkspaceDocWithOptions(request as! CreateWorkspaceDocRequest, headers as! CreateWorkspaceDocHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTodoTaskWithOptions(_ tmpReq: DeleteTodoTaskRequest, _ tmpHeader: DeleteTodoTaskHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTodoTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteTodoTaskShrinkRequest = DeleteTodoTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteTodoTaskShrinkHeaders = DeleteTodoTaskShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatorId)) {
            body["operatorId"] = request.operatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTodoTask",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/task/deleteTodoTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTodoTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTodoTask(_ request: DeleteTodoTaskRequest) async throws -> DeleteTodoTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteTodoTaskHeaders = DeleteTodoTaskHeaders([:])
        return try await deleteTodoTaskWithOptions(request as! DeleteTodoTaskRequest, headers as! DeleteTodoTaskHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspaceDocMembersWithOptions(_ tmpReq: DeleteWorkspaceDocMembersRequest, _ tmpHeader: DeleteWorkspaceDocMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWorkspaceDocMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteWorkspaceDocMembersShrinkRequest = DeleteWorkspaceDocMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteWorkspaceDocMembersShrinkHeaders = DeleteWorkspaceDocMembersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWorkspaceDocMembers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/deleteWorkspaceDocMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWorkspaceDocMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspaceDocMembers(_ request: DeleteWorkspaceDocMembersRequest) async throws -> DeleteWorkspaceDocMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteWorkspaceDocMembersHeaders = DeleteWorkspaceDocMembersHeaders([:])
        return try await deleteWorkspaceDocMembersWithOptions(request as! DeleteWorkspaceDocMembersRequest, headers as! DeleteWorkspaceDocMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspaceMembersWithOptions(_ tmpReq: DeleteWorkspaceMembersRequest, _ tmpHeader: DeleteWorkspaceMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWorkspaceMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteWorkspaceMembersShrinkRequest = DeleteWorkspaceMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: DeleteWorkspaceMembersShrinkHeaders = DeleteWorkspaceMembersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWorkspaceMembers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/deleteWorkspaceMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWorkspaceMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkspaceMembers(_ request: DeleteWorkspaceMembersRequest) async throws -> DeleteWorkspaceMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteWorkspaceMembersHeaders = DeleteWorkspaceMembersHeaders([:])
        return try await deleteWorkspaceMembersWithOptions(request as! DeleteWorkspaceMembersRequest, headers as! DeleteWorkspaceMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserWithOptions(_ tmpReq: GetUserRequest, _ tmpHeader: GetUserHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetUserShrinkRequest = GetUserShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: GetUserShrinkHeaders = GetUserShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["language"] = request.language ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUser",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/im/getUser",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUser(_ request: GetUserRequest) async throws -> GetUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUserHeaders = GetUserHeaders([:])
        return try await getUserWithOptions(request as! GetUserRequest, headers as! GetUserHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertRowsBeforeWithOptions(_ tmpReq: InsertRowsBeforeRequest, _ tmpHeader: InsertRowsBeforeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertRowsBeforeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InsertRowsBeforeShrinkRequest = InsertRowsBeforeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: InsertRowsBeforeShrinkHeaders = InsertRowsBeforeShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.row)) {
            body["Row"] = request.row!;
        }
        if (!TeaUtils.Client.isUnset(request.rowCount)) {
            body["RowCount"] = request.rowCount!;
        }
        if (!TeaUtils.Client.isUnset(request.sheetId)) {
            body["SheetId"] = request.sheetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertRowsBefore",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/insertRowsBefore",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertRowsBeforeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertRowsBefore(_ request: InsertRowsBeforeRequest) async throws -> InsertRowsBeforeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsertRowsBeforeHeaders = InsertRowsBeforeHeaders([:])
        return try await insertRowsBeforeWithOptions(request as! InsertRowsBeforeRequest, headers as! InsertRowsBeforeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrgTodoTasksWithOptions(_ tmpReq: QueryOrgTodoTasksRequest, _ tmpHeader: QueryOrgTodoTasksHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrgTodoTasksResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryOrgTodoTasksShrinkRequest = QueryOrgTodoTasksShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: QueryOrgTodoTasksShrinkHeaders = QueryOrgTodoTasksShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isDone)) {
            body["isDone"] = request.isDone!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrgTodoTasks",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/task/queryOrgTodoTasks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrgTodoTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrgTodoTasks(_ request: QueryOrgTodoTasksRequest) async throws -> QueryOrgTodoTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryOrgTodoTasksHeaders = QueryOrgTodoTasksHeaders([:])
        return try await queryOrgTodoTasksWithOptions(request as! QueryOrgTodoTasksRequest, headers as! QueryOrgTodoTasksHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTodoTaskWithOptions(_ tmpReq: UpdateTodoTaskRequest, _ tmpHeader: UpdateTodoTaskHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTodoTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateTodoTaskShrinkRequest = UpdateTodoTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateTodoTaskShrinkHeaders = UpdateTodoTaskShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.executorIds)) {
            request.executorIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.executorIds, "executorIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.participantIds)) {
            request.participantIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.participantIds, "participantIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.done)) {
            body["done"] = request.done!;
        }
        if (!TeaUtils.Client.isUnset(request.dueTime)) {
            body["dueTime"] = request.dueTime!;
        }
        if (!TeaUtils.Client.isUnset(request.executorIdsShrink)) {
            body["executorIds"] = request.executorIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.participantIdsShrink)) {
            body["participantIds"] = request.participantIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            body["subject"] = request.subject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTodoTask",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/task/updateTodoTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTodoTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTodoTask(_ request: UpdateTodoTaskRequest) async throws -> UpdateTodoTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateTodoTaskHeaders = UpdateTodoTaskHeaders([:])
        return try await updateTodoTaskWithOptions(request as! UpdateTodoTaskRequest, headers as! UpdateTodoTaskHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTodoTaskExecutorStatusWithOptions(_ tmpReq: UpdateTodoTaskExecutorStatusRequest, _ tmpHeader: UpdateTodoTaskExecutorStatusHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTodoTaskExecutorStatusResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateTodoTaskExecutorStatusShrinkRequest = UpdateTodoTaskExecutorStatusShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateTodoTaskExecutorStatusShrinkHeaders = UpdateTodoTaskExecutorStatusShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.executorStatusList)) {
            request.executorStatusListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.executorStatusList, "executorStatusList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executorStatusListShrink)) {
            body["executorStatusList"] = request.executorStatusListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatorId)) {
            body["operatorId"] = request.operatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTodoTaskExecutorStatus",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/task/updateTodoTaskExecutorStatus",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTodoTaskExecutorStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTodoTaskExecutorStatus(_ request: UpdateTodoTaskExecutorStatusRequest) async throws -> UpdateTodoTaskExecutorStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateTodoTaskExecutorStatusHeaders = UpdateTodoTaskExecutorStatusHeaders([:])
        return try await updateTodoTaskExecutorStatusWithOptions(request as! UpdateTodoTaskExecutorStatusRequest, headers as! UpdateTodoTaskExecutorStatusHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceDocMembersWithOptions(_ tmpReq: UpdateWorkspaceDocMembersRequest, _ tmpHeader: UpdateWorkspaceDocMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWorkspaceDocMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateWorkspaceDocMembersShrinkRequest = UpdateWorkspaceDocMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateWorkspaceDocMembersShrinkHeaders = UpdateWorkspaceDocMembersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWorkspaceDocMembers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/updateWorkspaceDocMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWorkspaceDocMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceDocMembers(_ request: UpdateWorkspaceDocMembersRequest) async throws -> UpdateWorkspaceDocMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateWorkspaceDocMembersHeaders = UpdateWorkspaceDocMembersHeaders([:])
        return try await updateWorkspaceDocMembersWithOptions(request as! UpdateWorkspaceDocMembersRequest, headers as! UpdateWorkspaceDocMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceMembersWithOptions(_ tmpReq: UpdateWorkspaceMembersRequest, _ tmpHeader: UpdateWorkspaceMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWorkspaceMembersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateWorkspaceMembersShrinkRequest = UpdateWorkspaceMembersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: UpdateWorkspaceMembersShrinkHeaders = UpdateWorkspaceMembersShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.members)) {
            request.membersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.members, "Members", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.membersShrink)) {
            body["Members"] = request.membersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWorkspaceMembers",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/updateWorkspaceMembers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWorkspaceMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceMembers(_ request: UpdateWorkspaceMembersRequest) async throws -> UpdateWorkspaceMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateWorkspaceMembersHeaders = UpdateWorkspaceMembersHeaders([:])
        return try await updateWorkspaceMembersWithOptions(request as! UpdateWorkspaceMembersRequest, headers as! UpdateWorkspaceMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }
}
