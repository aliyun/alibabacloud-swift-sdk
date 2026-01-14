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
        self._endpoint = try getEndpoint("quickbi-public", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addDataLevelPermissionRuleUsersWithOptions(_ request: AddDataLevelPermissionRuleUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDataLevelPermissionRuleUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addUserModel)) {
            query["AddUserModel"] = request.addUserModel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDataLevelPermissionRuleUsers",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDataLevelPermissionRuleUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDataLevelPermissionRuleUsers(_ request: AddDataLevelPermissionRuleUsersRequest) async throws -> AddDataLevelPermissionRuleUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDataLevelPermissionRuleUsersWithOptions(request as! AddDataLevelPermissionRuleUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDataLevelPermissionWhiteListWithOptions(_ request: AddDataLevelPermissionWhiteListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDataLevelPermissionWhiteListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetIds)) {
            query["TargetIds"] = request.targetIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            query["TargetType"] = request.targetType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDataLevelPermissionWhiteList",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDataLevelPermissionWhiteListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDataLevelPermissionWhiteList(_ request: AddDataLevelPermissionWhiteListRequest) async throws -> AddDataLevelPermissionWhiteListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDataLevelPermissionWhiteListWithOptions(request as! AddDataLevelPermissionWhiteListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDataSourceWithOptions(_ request: AddDataSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDataSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addModel)) {
            query["AddModel"] = request.addModel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDataSource",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDataSource(_ request: AddDataSourceRequest) async throws -> AddDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDataSourceWithOptions(request as! AddDataSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addShareReportWithOptions(_ request: AddShareReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddShareReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authPoint)) {
            query["AuthPoint"] = request.authPoint!;
        }
        if (!TeaUtils.Client.isUnset(request.expireDate)) {
            query["ExpireDate"] = request.expireDate!;
        }
        if (!TeaUtils.Client.isUnset(request.shareToId)) {
            query["ShareToId"] = request.shareToId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shareToType)) {
            query["ShareToType"] = request.shareToType!;
        }
        if (!TeaUtils.Client.isUnset(request.worksId)) {
            query["WorksId"] = request.worksId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddShareReport",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddShareReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addShareReport(_ request: AddShareReportRequest) async throws -> AddShareReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addShareReportWithOptions(request as! AddShareReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserWithOptions(_ request: AddUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.adminUser)) {
            query["AdminUser"] = request.adminUser!;
        }
        if (!TeaUtils.Client.isUnset(request.authAdminUser)) {
            query["AuthAdminUser"] = request.authAdminUser!;
        }
        if (!TeaUtils.Client.isUnset(request.nickName)) {
            query["NickName"] = request.nickName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userType)) {
            query["UserType"] = request.userType!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleIds)) {
            body["RoleIds"] = request.roleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddUser",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUser(_ request: AddUserRequest) async throws -> AddUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addUserWithOptions(request as! AddUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserGroupMemberWithOptions(_ request: AddUserGroupMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddUserGroupMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdList)) {
            query["UserIdList"] = request.userIdList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddUserGroupMember",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddUserGroupMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserGroupMember(_ request: AddUserGroupMemberRequest) async throws -> AddUserGroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addUserGroupMemberWithOptions(request as! AddUserGroupMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserGroupMembersWithOptions(_ request: AddUserGroupMembersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddUserGroupMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userGroupIds)) {
            query["UserGroupIds"] = request.userGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddUserGroupMembers",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddUserGroupMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserGroupMembers(_ request: AddUserGroupMembersRequest) async throws -> AddUserGroupMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addUserGroupMembersWithOptions(request as! AddUserGroupMembersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserTagMetaWithOptions(_ request: AddUserTagMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddUserTagMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagDescription)) {
            query["TagDescription"] = request.tagDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagName)) {
            query["TagName"] = request.tagName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddUserTagMeta",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddUserTagMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserTagMeta(_ request: AddUserTagMetaRequest) async throws -> AddUserTagMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addUserTagMetaWithOptions(request as! AddUserTagMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserToWorkspaceWithOptions(_ request: AddUserToWorkspaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddUserToWorkspaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            query["RoleId"] = request.roleId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddUserToWorkspace",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddUserToWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserToWorkspace(_ request: AddUserToWorkspaceRequest) async throws -> AddUserToWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addUserToWorkspaceWithOptions(request as! AddUserToWorkspaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWorkspaceUsersWithOptions(_ request: AddWorkspaceUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddWorkspaceUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            query["RoleId"] = request.roleId!;
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddWorkspaceUsers",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddWorkspaceUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addWorkspaceUsers(_ request: AddWorkspaceUsersRequest) async throws -> AddWorkspaceUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addWorkspaceUsersWithOptions(request as! AddWorkspaceUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allotDatasetAccelerationTaskWithOptions(_ request: AllotDatasetAccelerationTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AllotDatasetAccelerationTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AllotDatasetAccelerationTask",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AllotDatasetAccelerationTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allotDatasetAccelerationTask(_ request: AllotDatasetAccelerationTaskRequest) async throws -> AllotDatasetAccelerationTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await allotDatasetAccelerationTaskWithOptions(request as! AllotDatasetAccelerationTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeMenuWithOptions(_ request: AuthorizeMenuRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthorizeMenuResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authPointsValue)) {
            query["AuthPointsValue"] = request.authPointsValue!;
        }
        if (!TeaUtils.Client.isUnset(request.dataPortalId)) {
            query["DataPortalId"] = request.dataPortalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.menuIds)) {
            query["MenuIds"] = request.menuIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupIds)) {
            query["UserGroupIds"] = request.userGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeMenu",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthorizeMenuResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeMenu(_ request: AuthorizeMenuRequest) async throws -> AuthorizeMenuResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await authorizeMenuWithOptions(request as! AuthorizeMenuRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchAddFeishuUsersWithOptions(_ request: BatchAddFeishuUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchAddFeishuUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.feishuUsers)) {
            query["FeishuUsers"] = request.feishuUsers ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAdmin)) {
            query["IsAdmin"] = request.isAdmin!;
        }
        if (!TeaUtils.Client.isUnset(request.isAuthAdmin)) {
            query["IsAuthAdmin"] = request.isAuthAdmin!;
        }
        if (!TeaUtils.Client.isUnset(request.userGroupIds)) {
            query["UserGroupIds"] = request.userGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userType)) {
            query["UserType"] = request.userType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchAddFeishuUsers",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchAddFeishuUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchAddFeishuUsers(_ request: BatchAddFeishuUsersRequest) async throws -> BatchAddFeishuUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchAddFeishuUsersWithOptions(request as! BatchAddFeishuUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelAuthorizationMenuWithOptions(_ request: CancelAuthorizationMenuRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelAuthorizationMenuResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataPortalId)) {
            query["DataPortalId"] = request.dataPortalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.menuIds)) {
            query["MenuIds"] = request.menuIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupIds)) {
            query["UserGroupIds"] = request.userGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelAuthorizationMenu",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelAuthorizationMenuResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelAuthorizationMenu(_ request: CancelAuthorizationMenuRequest) async throws -> CancelAuthorizationMenuResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelAuthorizationMenuWithOptions(request as! CancelAuthorizationMenuRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelCollectionWithOptions(_ request: CancelCollectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelCollectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.worksId)) {
            query["WorksId"] = request.worksId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelCollection",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelCollectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelCollection(_ request: CancelCollectionRequest) async throws -> CancelCollectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelCollectionWithOptions(request as! CancelCollectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelReportShareWithOptions(_ request: CancelReportShareRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelReportShareResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reportId)) {
            query["ReportId"] = request.reportId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shareToIds)) {
            query["ShareToIds"] = request.shareToIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shareToType)) {
            query["ShareToType"] = request.shareToType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelReportShare",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelReportShareResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelReportShare(_ request: CancelReportShareRequest) async throws -> CancelReportShareResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelReportShareWithOptions(request as! CancelReportShareRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeVisibilityModelWithOptions(_ request: ChangeVisibilityModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeVisibilityModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataPortalId)) {
            query["DataPortalId"] = request.dataPortalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.menuIds)) {
            query["MenuIds"] = request.menuIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showOnlyWithAccess)) {
            query["ShowOnlyWithAccess"] = request.showOnlyWithAccess!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeVisibilityModel",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeVisibilityModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeVisibilityModel(_ request: ChangeVisibilityModelRequest) async throws -> ChangeVisibilityModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeVisibilityModelWithOptions(request as! ChangeVisibilityModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDatasetExistedWithOptions(_ request: CheckDatasetExistedRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckDatasetExistedResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckDatasetExisted",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckDatasetExistedResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDatasetExisted(_ request: CheckDatasetExistedRequest) async throws -> CheckDatasetExistedResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkDatasetExistedWithOptions(request as! CheckDatasetExistedRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkOrganizationMemberWithOptions(_ request: CheckOrganizationMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckOrganizationMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckOrganizationMember",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckOrganizationMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkOrganizationMember(_ request: CheckOrganizationMemberRequest) async throws -> CheckOrganizationMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkOrganizationMemberWithOptions(request as! CheckOrganizationMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkReadableWithOptions(_ request: CheckReadableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckReadableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.worksId)) {
            query["WorksId"] = request.worksId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckReadable",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckReadableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkReadable(_ request: CheckReadableRequest) async throws -> CheckReadableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkReadableWithOptions(request as! CheckReadableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCubeBySqlWithOptions(_ request: CreateCubeBySqlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCubeBySqlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caption)) {
            query["Caption"] = request.caption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customSql)) {
            query["CustomSql"] = request.customSql ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dsId)) {
            query["DsId"] = request.dsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCubeBySql",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCubeBySqlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCubeBySql(_ request: CreateCubeBySqlRequest) async throws -> CreateCubeBySqlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCubeBySqlWithOptions(request as! CreateCubeBySqlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetWithOptions(_ request: CreateDatasetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dsId)) {
            query["DsId"] = request.dsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetDirectoryId)) {
            query["TargetDirectoryId"] = request.targetDirectoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userDefineCubeName)) {
            query["UserDefineCubeName"] = request.userDefineCubeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataset",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataset(_ request: CreateDatasetRequest) async throws -> CreateDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDatasetWithOptions(request as! CreateDatasetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTicketWithOptions(_ request: CreateTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType!;
        }
        if (!TeaUtils.Client.isUnset(request.cmptId)) {
            query["CmptId"] = request.cmptId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireTime)) {
            query["ExpireTime"] = request.expireTime!;
        }
        if (!TeaUtils.Client.isUnset(request.globalParam)) {
            query["GlobalParam"] = request.globalParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ticketNum)) {
            query["TicketNum"] = request.ticketNum!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkParam)) {
            query["WatermarkParam"] = request.watermarkParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.worksId)) {
            query["WorksId"] = request.worksId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTicket",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTicket(_ request: CreateTicketRequest) async throws -> CreateTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTicketWithOptions(request as! CreateTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTicket4CopilotWithOptions(_ request: CreateTicket4CopilotRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTicket4CopilotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType!;
        }
        if (!TeaUtils.Client.isUnset(request.copilotId)) {
            query["CopilotId"] = request.copilotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireTime)) {
            query["ExpireTime"] = request.expireTime!;
        }
        if (!TeaUtils.Client.isUnset(request.ticketNum)) {
            query["TicketNum"] = request.ticketNum!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTicket4Copilot",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTicket4CopilotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTicket4Copilot(_ request: CreateTicket4CopilotRequest) async throws -> CreateTicket4CopilotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTicket4CopilotWithOptions(request as! CreateTicket4CopilotRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserGroupWithOptions(_ request: CreateUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.parentUserGroupId)) {
            query["ParentUserGroupId"] = request.parentUserGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupDescription)) {
            query["UserGroupDescription"] = request.userGroupDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupName)) {
            query["UserGroupName"] = request.userGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUserGroup",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserGroup(_ request: CreateUserGroupRequest) async throws -> CreateUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createUserGroupWithOptions(request as! CreateUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspaceWithOptions(_ request: CreateWorkspaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkspaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowPublish)) {
            query["AllowPublish"] = request.allowPublish!;
        }
        if (!TeaUtils.Client.isUnset(request.allowShare)) {
            query["AllowShare"] = request.allowShare!;
        }
        if (!TeaUtils.Client.isUnset(request.allowViewAll)) {
            query["AllowViewAll"] = request.allowViewAll!;
        }
        if (!TeaUtils.Client.isUnset(request.defaultShareToAll)) {
            query["DefaultShareToAll"] = request.defaultShareToAll!;
        }
        if (!TeaUtils.Client.isUnset(request.onlyAdminCreateDatasource)) {
            query["OnlyAdminCreateDatasource"] = request.onlyAdminCreateDatasource!;
        }
        if (!TeaUtils.Client.isUnset(request.useComment)) {
            query["UseComment"] = request.useComment!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceDescription)) {
            query["WorkspaceDescription"] = request.workspaceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceName)) {
            query["WorkspaceName"] = request.workspaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkspace",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkspace(_ request: CreateWorkspaceRequest) async throws -> CreateWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createWorkspaceWithOptions(request as! CreateWorkspaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dataInterpretationWithOptions(_ request: DataInterpretationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DataInterpretationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelCode)) {
            query["ModelCode"] = request.modelCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptForceOverride)) {
            query["PromptForceOverride"] = request.promptForceOverride!;
        }
        if (!TeaUtils.Client.isUnset(request.userPrompt)) {
            query["UserPrompt"] = request.userPrompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userQuestion)) {
            query["UserQuestion"] = request.userQuestion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DataInterpretation",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DataInterpretationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dataInterpretation(_ request: DataInterpretationRequest) async throws -> DataInterpretationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await dataInterpretationWithOptions(request as! DataInterpretationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dataSetBloodWithOptions(_ request: DataSetBloodRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DataSetBloodResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSetIds)) {
            query["DataSetIds"] = request.dataSetIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.worksType)) {
            query["WorksType"] = request.worksType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DataSetBlood",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DataSetBloodResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dataSetBlood(_ request: DataSetBloodRequest) async throws -> DataSetBloodResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await dataSetBloodWithOptions(request as! DataSetBloodRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dataSourceBloodWithOptions(_ request: DataSourceBloodRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DataSourceBloodResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["DataSourceId"] = request.dataSourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DataSourceBlood",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DataSourceBloodResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dataSourceBlood(_ request: DataSourceBloodRequest) async throws -> DataSourceBloodResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await dataSourceBloodWithOptions(request as! DataSourceBloodRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func delayTicketExpireTimeWithOptions(_ request: DelayTicketExpireTimeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DelayTicketExpireTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expireTime)) {
            query["ExpireTime"] = request.expireTime!;
        }
        if (!TeaUtils.Client.isUnset(request.ticket)) {
            query["Ticket"] = request.ticket ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DelayTicketExpireTime",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DelayTicketExpireTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func delayTicketExpireTime(_ request: DelayTicketExpireTimeRequest) async throws -> DelayTicketExpireTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await delayTicketExpireTimeWithOptions(request as! DelayTicketExpireTimeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataLevelPermissionRuleUsersWithOptions(_ request: DeleteDataLevelPermissionRuleUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDataLevelPermissionRuleUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteUserModel)) {
            query["DeleteUserModel"] = request.deleteUserModel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataLevelPermissionRuleUsers",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDataLevelPermissionRuleUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataLevelPermissionRuleUsers(_ request: DeleteDataLevelPermissionRuleUsersRequest) async throws -> DeleteDataLevelPermissionRuleUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDataLevelPermissionRuleUsersWithOptions(request as! DeleteDataLevelPermissionRuleUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataLevelRuleConfigWithOptions(_ request: DeleteDataLevelRuleConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDataLevelRuleConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataLevelRuleConfig",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDataLevelRuleConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataLevelRuleConfig(_ request: DeleteDataLevelRuleConfigRequest) async throws -> DeleteDataLevelRuleConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDataLevelRuleConfigWithOptions(request as! DeleteDataLevelRuleConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTicketWithOptions(_ request: DeleteTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ticket)) {
            query["Ticket"] = request.ticket ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTicket",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTicket(_ request: DeleteTicketRequest) async throws -> DeleteTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTicketWithOptions(request as! DeleteTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserWithOptions(_ request: DeleteUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.transferUserId)) {
            query["TransferUserId"] = request.transferUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUser",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUser(_ request: DeleteUserRequest) async throws -> DeleteUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUserWithOptions(request as! DeleteUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserFromWorkspaceWithOptions(_ request: DeleteUserFromWorkspaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserFromWorkspaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserFromWorkspace",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserFromWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserFromWorkspace(_ request: DeleteUserFromWorkspaceRequest) async throws -> DeleteUserFromWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUserFromWorkspaceWithOptions(request as! DeleteUserFromWorkspaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserGroupWithOptions(_ request: DeleteUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserGroup",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserGroup(_ request: DeleteUserGroupRequest) async throws -> DeleteUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUserGroupWithOptions(request as! DeleteUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserGroupMemberWithOptions(_ request: DeleteUserGroupMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserGroupMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserGroupMember",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserGroupMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserGroupMember(_ request: DeleteUserGroupMemberRequest) async throws -> DeleteUserGroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUserGroupMemberWithOptions(request as! DeleteUserGroupMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserGroupMembersWithOptions(_ request: DeleteUserGroupMembersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserGroupMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userGroupIds)) {
            query["UserGroupIds"] = request.userGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserGroupMembers",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserGroupMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserGroupMembers(_ request: DeleteUserGroupMembersRequest) async throws -> DeleteUserGroupMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUserGroupMembersWithOptions(request as! DeleteUserGroupMembersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserTagMetaWithOptions(_ request: DeleteUserTagMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserTagMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagId)) {
            query["TagId"] = request.tagId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserTagMeta",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserTagMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserTagMeta(_ request: DeleteUserTagMetaRequest) async throws -> DeleteUserTagMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUserTagMetaWithOptions(request as! DeleteUserTagMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataSourceConnectionInfoWithOptions(_ request: GetDataSourceConnectionInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataSourceConnectionInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dsId)) {
            query["DsId"] = request.dsId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataSourceConnectionInfo",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataSourceConnectionInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataSourceConnectionInfo(_ request: GetDataSourceConnectionInfoRequest) async throws -> GetDataSourceConnectionInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataSourceConnectionInfoWithOptions(request as! GetDataSourceConnectionInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMailTaskListWithOptions(_ request: GetMailTaskListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMailTaskListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.paused)) {
            query["Paused"] = request.paused!;
        }
        if (!TeaUtils.Client.isUnset(request.userNick)) {
            query["UserNick"] = request.userNick ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMailTaskList",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMailTaskListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMailTaskList(_ request: GetMailTaskListRequest) async throws -> GetMailTaskListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMailTaskListWithOptions(request as! GetMailTaskListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMailTaskStatusWithOptions(_ request: GetMailTaskStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMailTaskStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mailId)) {
            query["MailId"] = request.mailId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMailTaskStatus",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMailTaskStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMailTaskStatus(_ request: GetMailTaskStatusRequest) async throws -> GetMailTaskStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMailTaskStatusWithOptions(request as! GetMailTaskStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserGroupInfoWithOptions(_ request: GetUserGroupInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserGroupInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserGroupInfo",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserGroupInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserGroupInfo(_ request: GetUserGroupInfoRequest) async throws -> GetUserGroupInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserGroupInfoWithOptions(request as! GetUserGroupInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorksEmbedListWithOptions(_ request: GetWorksEmbedListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorksEmbedListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.worksType)) {
            query["WorksType"] = request.worksType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wsId)) {
            query["WsId"] = request.wsId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorksEmbedList",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorksEmbedListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorksEmbedList(_ request: GetWorksEmbedListRequest) async throws -> GetWorksEmbedListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWorksEmbedListWithOptions(request as! GetWorksEmbedListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAccelerationOfWorkspaceWithOptions(_ request: ListAccelerationOfWorkspaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAccelerationOfWorkspaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.creatorId)) {
            query["CreatorId"] = request.creatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cubeName)) {
            query["CubeName"] = request.cubeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAccelerationOfWorkspace",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAccelerationOfWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAccelerationOfWorkspace(_ request: ListAccelerationOfWorkspaceRequest) async throws -> ListAccelerationOfWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAccelerationOfWorkspaceWithOptions(request as! ListAccelerationOfWorkspaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApiDatasourceWithOptions(_ request: ListApiDatasourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApiDatasourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyWord)) {
            query["KeyWord"] = request.keyWord ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApiDatasource",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApiDatasourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApiDatasource(_ request: ListApiDatasourceRequest) async throws -> ListApiDatasourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listApiDatasourceWithOptions(request as! ListApiDatasourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listByUserGroupIdWithOptions(_ request: ListByUserGroupIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListByUserGroupIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userGroupIds)) {
            query["UserGroupIds"] = request.userGroupIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListByUserGroupId",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListByUserGroupIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listByUserGroupId(_ request: ListByUserGroupIdRequest) async throws -> ListByUserGroupIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listByUserGroupIdWithOptions(request as! ListByUserGroupIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCollectionsWithOptions(_ request: ListCollectionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCollectionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCollections",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCollectionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCollections(_ request: ListCollectionsRequest) async throws -> ListCollectionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCollectionsWithOptions(request as! ListCollectionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCubeDataLevelPermissionConfigWithOptions(_ request: ListCubeDataLevelPermissionConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCubeDataLevelPermissionConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCubeDataLevelPermissionConfig",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCubeDataLevelPermissionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCubeDataLevelPermissionConfig(_ request: ListCubeDataLevelPermissionConfigRequest) async throws -> ListCubeDataLevelPermissionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCubeDataLevelPermissionConfigWithOptions(request as! ListCubeDataLevelPermissionConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataLevelPermissionWhiteListWithOptions(_ request: ListDataLevelPermissionWhiteListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataLevelPermissionWhiteListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataLevelPermissionWhiteList",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataLevelPermissionWhiteListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataLevelPermissionWhiteList(_ request: ListDataLevelPermissionWhiteListRequest) async throws -> ListDataLevelPermissionWhiteListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataLevelPermissionWhiteListWithOptions(request as! ListDataLevelPermissionWhiteListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSourceWithOptions(_ request: ListDataSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dsType)) {
            query["DsType"] = request.dsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataSource",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSource(_ request: ListDataSourceRequest) async throws -> ListDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataSourceWithOptions(request as! ListDataSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFavoriteReportsWithOptions(_ request: ListFavoriteReportsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFavoriteReportsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.treeType)) {
            query["TreeType"] = request.treeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFavoriteReports",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFavoriteReportsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFavoriteReports(_ request: ListFavoriteReportsRequest) async throws -> ListFavoriteReportsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFavoriteReportsWithOptions(request as! ListFavoriteReportsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizationRoleUsersWithOptions(_ request: ListOrganizationRoleUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOrganizationRoleUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            query["RoleId"] = request.roleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOrganizationRoleUsers",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOrganizationRoleUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizationRoleUsers(_ request: ListOrganizationRoleUsersRequest) async throws -> ListOrganizationRoleUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOrganizationRoleUsersWithOptions(request as! ListOrganizationRoleUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizationRolesWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListOrganizationRolesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOrganizationRoles",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOrganizationRolesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizationRoles() async throws -> ListOrganizationRolesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOrganizationRolesWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPortalMenuAuthorizationWithOptions(_ request: ListPortalMenuAuthorizationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPortalMenuAuthorizationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataPortalId)) {
            query["DataPortalId"] = request.dataPortalId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPortalMenuAuthorization",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPortalMenuAuthorizationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPortalMenuAuthorization(_ request: ListPortalMenuAuthorizationRequest) async throws -> ListPortalMenuAuthorizationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPortalMenuAuthorizationWithOptions(request as! ListPortalMenuAuthorizationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPortalMenusWithOptions(_ request: ListPortalMenusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPortalMenusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataPortalId)) {
            query["DataPortalId"] = request.dataPortalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPortalMenus",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPortalMenusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPortalMenus(_ request: ListPortalMenusRequest) async throws -> ListPortalMenusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPortalMenusWithOptions(request as! ListPortalMenusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecentViewReportsWithOptions(_ request: ListRecentViewReportsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRecentViewReportsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offsetDay)) {
            query["OffsetDay"] = request.offsetDay!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryMode)) {
            query["QueryMode"] = request.queryMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.treeType)) {
            query["TreeType"] = request.treeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRecentViewReports",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRecentViewReportsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecentViewReports(_ request: ListRecentViewReportsRequest) async throws -> ListRecentViewReportsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRecentViewReportsWithOptions(request as! ListRecentViewReportsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSharedReportsWithOptions(_ request: ListSharedReportsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSharedReportsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.treeType)) {
            query["TreeType"] = request.treeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSharedReports",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSharedReportsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSharedReports(_ request: ListSharedReportsRequest) async throws -> ListSharedReportsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSharedReportsWithOptions(request as! ListSharedReportsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGroupsByUserIdWithOptions(_ request: ListUserGroupsByUserIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserGroupsByUserIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserGroupsByUserId",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserGroupsByUserIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGroupsByUserId(_ request: ListUserGroupsByUserIdRequest) async throws -> ListUserGroupsByUserIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserGroupsByUserIdWithOptions(request as! ListUserGroupsByUserIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWhitePortalMenuWithOptions(_ request: ListWhitePortalMenuRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWhitePortalMenuResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataportalId)) {
            query["DataportalId"] = request.dataportalId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWhitePortalMenu",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWhitePortalMenuResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWhitePortalMenu(_ request: ListWhitePortalMenuRequest) async throws -> ListWhitePortalMenuResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listWhitePortalMenuWithOptions(request as! ListWhitePortalMenuRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspaceRoleUsersWithOptions(_ request: ListWorkspaceRoleUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkspaceRoleUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            query["RoleId"] = request.roleId!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkspaceRoleUsers",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkspaceRoleUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspaceRoleUsers(_ request: ListWorkspaceRoleUsersRequest) async throws -> ListWorkspaceRoleUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listWorkspaceRoleUsersWithOptions(request as! ListWorkspaceRoleUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspaceRolesWithOptions(_ request: ListWorkspaceRolesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkspaceRolesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkspaceRoles",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkspaceRolesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspaceRoles(_ request: ListWorkspaceRolesRequest) async throws -> ListWorkspaceRolesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listWorkspaceRolesWithOptions(request as! ListWorkspaceRolesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspaceUserRolesByUserIdWithOptions(_ request: ListWorkspaceUserRolesByUserIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkspaceUserRolesByUserIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkspaceUserRolesByUserId",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkspaceUserRolesByUserIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkspaceUserRolesByUserId(_ request: ListWorkspaceUserRolesByUserIdRequest) async throws -> ListWorkspaceUserRolesByUserIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listWorkspaceUserRolesByUserIdWithOptions(request as! ListWorkspaceUserRolesByUserIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func manualRunMailTaskWithOptions(_ request: ManualRunMailTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ManualRunMailTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mailId)) {
            query["MailId"] = request.mailId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ManualRunMailTask",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ManualRunMailTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func manualRunMailTask(_ request: ManualRunMailTaskRequest) async throws -> ManualRunMailTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await manualRunMailTaskWithOptions(request as! ManualRunMailTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiDatasourceParametersWithOptions(_ request: ModifyApiDatasourceParametersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApiDatasourceParametersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApiDatasourceParameters",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApiDatasourceParametersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApiDatasourceParameters(_ request: ModifyApiDatasourceParametersRequest) async throws -> ModifyApiDatasourceParametersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApiDatasourceParametersWithOptions(request as! ModifyApiDatasourceParametersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCopilotEmbedConfigWithOptions(_ request: ModifyCopilotEmbedConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCopilotEmbedConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentName)) {
            query["AgentName"] = request.agentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.copilotId)) {
            query["CopilotId"] = request.copilotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataRange)) {
            query["DataRange"] = request.dataRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["ModuleName"] = request.moduleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCopilotEmbedConfig",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCopilotEmbedConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCopilotEmbedConfig(_ request: ModifyCopilotEmbedConfigRequest) async throws -> ModifyCopilotEmbedConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyCopilotEmbedConfigWithOptions(request as! ModifyCopilotEmbedConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDashboardNl2sqlStatusWithOptions(_ request: ModifyDashboardNl2sqlStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDashboardNl2sqlStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dashboardIds)) {
            query["DashboardIds"] = request.dashboardIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDashboardNl2sqlStatus",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDashboardNl2sqlStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDashboardNl2sqlStatus(_ request: ModifyDashboardNl2sqlStatusRequest) async throws -> ModifyDashboardNl2sqlStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDashboardNl2sqlStatusWithOptions(request as! ModifyDashboardNl2sqlStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccelerationLogByCubeIdWithOptions(_ request: QueryAccelerationLogByCubeIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccelerationLogByCubeIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccelerationLogByCubeId",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccelerationLogByCubeIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccelerationLogByCubeId(_ request: QueryAccelerationLogByCubeIdRequest) async throws -> QueryAccelerationLogByCubeIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccelerationLogByCubeIdWithOptions(request as! QueryAccelerationLogByCubeIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryApprovalInfoWithOptions(_ request: QueryApprovalInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryApprovalInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryApprovalInfo",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryApprovalInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryApprovalInfo(_ request: QueryApprovalInfoRequest) async throws -> QueryApprovalInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryApprovalInfoWithOptions(request as! QueryApprovalInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAuditLogWithOptions(_ request: QueryAuditLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAuditLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessSourceFlag)) {
            query["AccessSourceFlag"] = request.accessSourceFlag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logType)) {
            query["LogType"] = request.logType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatorId)) {
            query["OperatorId"] = request.operatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatorTypes)) {
            query["OperatorTypes"] = request.operatorTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userAccessDevice)) {
            query["UserAccessDevice"] = request.userAccessDevice ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAuditLog",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAuditLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAuditLog(_ request: QueryAuditLogRequest) async throws -> QueryAuditLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAuditLogWithOptions(request as! QueryAuditLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryComponentPerformanceWithOptions(_ request: QueryComponentPerformanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryComponentPerformanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.costTimeAvgMin)) {
            query["CostTimeAvgMin"] = request.costTimeAvgMin!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryType)) {
            query["QueryType"] = request.queryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reportId)) {
            query["ReportId"] = request.reportId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryComponentPerformance",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryComponentPerformanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryComponentPerformance(_ request: QueryComponentPerformanceRequest) async throws -> QueryComponentPerformanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryComponentPerformanceWithOptions(request as! QueryComponentPerformanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCopilotEmbedConfigWithOptions(_ request: QueryCopilotEmbedConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCopilotEmbedConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCopilotEmbedConfig",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCopilotEmbedConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCopilotEmbedConfig(_ request: QueryCopilotEmbedConfigRequest) async throws -> QueryCopilotEmbedConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCopilotEmbedConfigWithOptions(request as! QueryCopilotEmbedConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCubeOptimizationWithOptions(_ request: QueryCubeOptimizationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCubeOptimizationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCubeOptimization",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCubeOptimizationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCubeOptimization(_ request: QueryCubeOptimizationRequest) async throws -> QueryCubeOptimizationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCubeOptimizationWithOptions(request as! QueryCubeOptimizationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCubePerformanceWithOptions(_ request: QueryCubePerformanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCubePerformanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.costTimeAvgMin)) {
            query["CostTimeAvgMin"] = request.costTimeAvgMin!;
        }
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryType)) {
            query["QueryType"] = request.queryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCubePerformance",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCubePerformanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCubePerformance(_ request: QueryCubePerformanceRequest) async throws -> QueryCubePerformanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCubePerformanceWithOptions(request as! QueryCubePerformanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDashboardNl2sqlWithOptions(_ request: QueryDashboardNl2sqlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDashboardNl2sqlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDashboardNl2sql",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDashboardNl2sqlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDashboardNl2sql(_ request: QueryDashboardNl2sqlRequest) async throws -> QueryDashboardNl2sqlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDashboardNl2sqlWithOptions(request as! QueryDashboardNl2sqlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDataWithOptions(_ request: QueryDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conditions)) {
            query["Conditions"] = request.conditions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnFields)) {
            query["ReturnFields"] = request.returnFields ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryData",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryData(_ request: QueryDataRequest) async throws -> QueryDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDataWithOptions(request as! QueryDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDataRangeWithOptions(_ request: QueryDataRangeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDataRangeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDataRange",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDataRangeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDataRange(_ request: QueryDataRangeRequest) async throws -> QueryDataRangeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDataRangeWithOptions(request as! QueryDataRangeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDataServiceWithOptions(_ request: QueryDataServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDataServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conditions)) {
            query["Conditions"] = request.conditions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnFields)) {
            query["ReturnFields"] = request.returnFields ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDataService",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDataServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDataService(_ request: QueryDataServiceRequest) async throws -> QueryDataServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDataServiceWithOptions(request as! QueryDataServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDataServiceListWithOptions(_ request: QueryDataServiceListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDataServiceListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDataServiceList",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDataServiceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDataServiceList(_ request: QueryDataServiceListRequest) async throws -> QueryDataServiceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDataServiceListWithOptions(request as! QueryDataServiceListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDatasetDetailInfoWithOptions(_ request: QueryDatasetDetailInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDatasetDetailInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDatasetDetailInfo",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDatasetDetailInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDatasetDetailInfo(_ request: QueryDatasetDetailInfoRequest) async throws -> QueryDatasetDetailInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDatasetDetailInfoWithOptions(request as! QueryDatasetDetailInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDatasetInfoWithOptions(_ request: QueryDatasetInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDatasetInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDatasetInfo",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDatasetInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDatasetInfo(_ request: QueryDatasetInfoRequest) async throws -> QueryDatasetInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDatasetInfoWithOptions(request as! QueryDatasetInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDatasetListWithOptions(_ request: QueryDatasetListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDatasetListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["DirectoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.withChildren)) {
            query["WithChildren"] = request.withChildren!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDatasetList",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDatasetListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDatasetList(_ request: QueryDatasetListRequest) async throws -> QueryDatasetListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDatasetListWithOptions(request as! QueryDatasetListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDatasetSmartqStatusWithOptions(_ request: QueryDatasetSmartqStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDatasetSmartqStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDatasetSmartqStatus",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDatasetSmartqStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDatasetSmartqStatus(_ request: QueryDatasetSmartqStatusRequest) async throws -> QueryDatasetSmartqStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDatasetSmartqStatusWithOptions(request as! QueryDatasetSmartqStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDatasetSwitchInfoWithOptions(_ request: QueryDatasetSwitchInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDatasetSwitchInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDatasetSwitchInfo",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDatasetSwitchInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDatasetSwitchInfo(_ request: QueryDatasetSwitchInfoRequest) async throws -> QueryDatasetSwitchInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDatasetSwitchInfoWithOptions(request as! QueryDatasetSwitchInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEmbeddedInfoWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEmbeddedInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEmbeddedInfo",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEmbeddedInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEmbeddedInfo() async throws -> QueryEmbeddedInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryEmbeddedInfoWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEmbeddedStatusWithOptions(_ request: QueryEmbeddedStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEmbeddedStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.worksId)) {
            query["WorksId"] = request.worksId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEmbeddedStatus",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEmbeddedStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEmbeddedStatus(_ request: QueryEmbeddedStatusRequest) async throws -> QueryEmbeddedStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryEmbeddedStatusWithOptions(request as! QueryEmbeddedStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLastAccelerationEngineJobWithOptions(_ request: QueryLastAccelerationEngineJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryLastAccelerationEngineJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryLastAccelerationEngineJob",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryLastAccelerationEngineJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLastAccelerationEngineJob(_ request: QueryLastAccelerationEngineJobRequest) async throws -> QueryLastAccelerationEngineJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryLastAccelerationEngineJobWithOptions(request as! QueryLastAccelerationEngineJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLlmCubeWithThemeListByUserIdWithOptions(_ request: QueryLlmCubeWithThemeListByUserIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryLlmCubeWithThemeListByUserIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryLlmCubeWithThemeListByUserId",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryLlmCubeWithThemeListByUserIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLlmCubeWithThemeListByUserId(_ request: QueryLlmCubeWithThemeListByUserIdRequest) async throws -> QueryLlmCubeWithThemeListByUserIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryLlmCubeWithThemeListByUserIdWithOptions(request as! QueryLlmCubeWithThemeListByUserIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrganizationRoleConfigWithOptions(_ request: QueryOrganizationRoleConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrganizationRoleConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            query["RoleId"] = request.roleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrganizationRoleConfig",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrganizationRoleConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrganizationRoleConfig(_ request: QueryOrganizationRoleConfigRequest) async throws -> QueryOrganizationRoleConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrganizationRoleConfigWithOptions(request as! QueryOrganizationRoleConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrganizationWorkspaceListWithOptions(_ request: QueryOrganizationWorkspaceListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrganizationWorkspaceListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrganizationWorkspaceList",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrganizationWorkspaceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrganizationWorkspaceList(_ request: QueryOrganizationWorkspaceListRequest) async throws -> QueryOrganizationWorkspaceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrganizationWorkspaceListWithOptions(request as! QueryOrganizationWorkspaceListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryReadableResourcesListByUserIdWithOptions(_ request: QueryReadableResourcesListByUserIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryReadableResourcesListByUserIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryReadableResourcesListByUserId",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryReadableResourcesListByUserIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryReadableResourcesListByUserId(_ request: QueryReadableResourcesListByUserIdRequest) async throws -> QueryReadableResourcesListByUserIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryReadableResourcesListByUserIdWithOptions(request as! QueryReadableResourcesListByUserIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryReadableResourcesListByUserIdV2WithOptions(_ request: QueryReadableResourcesListByUserIdV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryReadableResourcesListByUserIdV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workType)) {
            query["WorkType"] = request.workType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryReadableResourcesListByUserIdV2",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryReadableResourcesListByUserIdV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryReadableResourcesListByUserIdV2(_ request: QueryReadableResourcesListByUserIdV2Request) async throws -> QueryReadableResourcesListByUserIdV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryReadableResourcesListByUserIdV2WithOptions(request as! QueryReadableResourcesListByUserIdV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryReportPerformanceWithOptions(_ request: QueryReportPerformanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryReportPerformanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.costTimeAvgMin)) {
            query["CostTimeAvgMin"] = request.costTimeAvgMin!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryType)) {
            query["QueryType"] = request.queryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reportId)) {
            query["ReportId"] = request.reportId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryReportPerformance",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryReportPerformanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryReportPerformance(_ request: QueryReportPerformanceRequest) async throws -> QueryReportPerformanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryReportPerformanceWithOptions(request as! QueryReportPerformanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryShareListWithOptions(_ request: QueryShareListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryShareListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reportId)) {
            query["ReportId"] = request.reportId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryShareList",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryShareListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryShareList(_ request: QueryShareListRequest) async throws -> QueryShareListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryShareListWithOptions(request as! QueryShareListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySharesToUserListWithOptions(_ request: QuerySharesToUserListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySharesToUserListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySharesToUserList",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySharesToUserListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySharesToUserList(_ request: QuerySharesToUserListRequest) async throws -> QuerySharesToUserListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySharesToUserListWithOptions(request as! QuerySharesToUserListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySmartqPermissionByCubeIdWithOptions(_ request: QuerySmartqPermissionByCubeIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySmartqPermissionByCubeIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySmartqPermissionByCubeId",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySmartqPermissionByCubeIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySmartqPermissionByCubeId(_ request: QuerySmartqPermissionByCubeIdRequest) async throws -> QuerySmartqPermissionByCubeIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySmartqPermissionByCubeIdWithOptions(request as! QuerySmartqPermissionByCubeIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTicketInfoWithOptions(_ request: QueryTicketInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTicketInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ticket)) {
            query["Ticket"] = request.ticket ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTicketInfo",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTicketInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTicketInfo(_ request: QueryTicketInfoRequest) async throws -> QueryTicketInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTicketInfoWithOptions(request as! QueryTicketInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserByMobileAccountWithOptions(_ request: QueryUserByMobileAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUserByMobileAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobileType)) {
            query["MobileType"] = request.mobileType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileUserId)) {
            query["MobileUserId"] = request.mobileUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUserByMobileAccount",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUserByMobileAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserByMobileAccount(_ request: QueryUserByMobileAccountRequest) async throws -> QueryUserByMobileAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUserByMobileAccountWithOptions(request as! QueryUserByMobileAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserGroupListByParentIdWithOptions(_ request: QueryUserGroupListByParentIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUserGroupListByParentIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.parentUserGroupId)) {
            query["ParentUserGroupId"] = request.parentUserGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUserGroupListByParentId",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUserGroupListByParentIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserGroupListByParentId(_ request: QueryUserGroupListByParentIdRequest) async throws -> QueryUserGroupListByParentIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUserGroupListByParentIdWithOptions(request as! QueryUserGroupListByParentIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserGroupMemberWithOptions(_ request: QueryUserGroupMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUserGroupMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUserGroupMember",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUserGroupMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserGroupMember(_ request: QueryUserGroupMemberRequest) async throws -> QueryUserGroupMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUserGroupMemberWithOptions(request as! QueryUserGroupMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserInfoByAccountWithOptions(_ request: QueryUserInfoByAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUserInfoByAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.account)) {
            query["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentAccountName)) {
            query["ParentAccountName"] = request.parentAccountName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUserInfoByAccount",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUserInfoByAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserInfoByAccount(_ request: QueryUserInfoByAccountRequest) async throws -> QueryUserInfoByAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUserInfoByAccountWithOptions(request as! QueryUserInfoByAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserInfoByUserIdWithOptions(_ request: QueryUserInfoByUserIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUserInfoByUserIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUserInfoByUserId",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUserInfoByUserIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserInfoByUserId(_ request: QueryUserInfoByUserIdRequest) async throws -> QueryUserInfoByUserIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUserInfoByUserIdWithOptions(request as! QueryUserInfoByUserIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserListWithOptions(_ request: QueryUserListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUserListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUserList",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUserListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserList(_ request: QueryUserListRequest) async throws -> QueryUserListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUserListWithOptions(request as! QueryUserListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserRoleInfoInWorkspaceWithOptions(_ request: QueryUserRoleInfoInWorkspaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUserRoleInfoInWorkspaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUserRoleInfoInWorkspace",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUserRoleInfoInWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserRoleInfoInWorkspace(_ request: QueryUserRoleInfoInWorkspaceRequest) async throws -> QueryUserRoleInfoInWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUserRoleInfoInWorkspaceWithOptions(request as! QueryUserRoleInfoInWorkspaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserTagMetaListWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUserTagMetaListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUserTagMetaList",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUserTagMetaListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserTagMetaList() async throws -> QueryUserTagMetaListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUserTagMetaListWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserTagValueListWithOptions(_ request: QueryUserTagValueListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUserTagValueListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUserTagValueList",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUserTagValueListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserTagValueList(_ request: QueryUserTagValueListRequest) async throws -> QueryUserTagValueListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUserTagValueListWithOptions(request as! QueryUserTagValueListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWorksWithOptions(_ request: QueryWorksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryWorksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.worksId)) {
            query["WorksId"] = request.worksId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryWorks",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryWorksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWorks(_ request: QueryWorksRequest) async throws -> QueryWorksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryWorksWithOptions(request as! QueryWorksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWorksBloodRelationshipWithOptions(_ request: QueryWorksBloodRelationshipRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryWorksBloodRelationshipResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.worksId)) {
            query["WorksId"] = request.worksId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryWorksBloodRelationship",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryWorksBloodRelationshipResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWorksBloodRelationship(_ request: QueryWorksBloodRelationshipRequest) async throws -> QueryWorksBloodRelationshipResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryWorksBloodRelationshipWithOptions(request as! QueryWorksBloodRelationshipRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWorksByOrganizationWithOptions(_ request: QueryWorksByOrganizationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryWorksByOrganizationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartAuthFlag)) {
            query["ThirdPartAuthFlag"] = request.thirdPartAuthFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.worksType)) {
            query["WorksType"] = request.worksType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryWorksByOrganization",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryWorksByOrganizationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWorksByOrganization(_ request: QueryWorksByOrganizationRequest) async throws -> QueryWorksByOrganizationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryWorksByOrganizationWithOptions(request as! QueryWorksByOrganizationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWorksByWorkspaceWithOptions(_ request: QueryWorksByWorkspaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryWorksByWorkspaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartAuthFlag)) {
            query["ThirdPartAuthFlag"] = request.thirdPartAuthFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.worksType)) {
            query["WorksType"] = request.worksType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryWorksByWorkspace",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryWorksByWorkspaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWorksByWorkspace(_ request: QueryWorksByWorkspaceRequest) async throws -> QueryWorksByWorkspaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryWorksByWorkspaceWithOptions(request as! QueryWorksByWorkspaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWorkspaceRoleConfigWithOptions(_ request: QueryWorkspaceRoleConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryWorkspaceRoleConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            query["RoleId"] = request.roleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryWorkspaceRoleConfig",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryWorkspaceRoleConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWorkspaceRoleConfig(_ request: QueryWorkspaceRoleConfigRequest) async throws -> QueryWorkspaceRoleConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryWorkspaceRoleConfigWithOptions(request as! QueryWorkspaceRoleConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWorkspaceUserListWithOptions(_ request: QueryWorkspaceUserListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryWorkspaceUserListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryWorkspaceUserList",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryWorkspaceUserListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWorkspaceUserList(_ request: QueryWorkspaceUserListRequest) async throws -> QueryWorkspaceUserListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryWorkspaceUserListWithOptions(request as! QueryWorkspaceUserListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resultCallbackWithOptions(_ request: ResultCallbackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResultCallbackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationId)) {
            query["ApplicationId"] = request.applicationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.handleReason)) {
            query["HandleReason"] = request.handleReason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResultCallback",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResultCallbackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resultCallback(_ request: ResultCallbackRequest) async throws -> ResultCallbackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resultCallbackWithOptions(request as! ResultCallbackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveFavoritesWithOptions(_ request: SaveFavoritesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveFavoritesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.worksId)) {
            query["WorksId"] = request.worksId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveFavorites",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveFavoritesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveFavorites(_ request: SaveFavoritesRequest) async throws -> SaveFavoritesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveFavoritesWithOptions(request as! SaveFavoritesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDataLevelPermissionExtraConfigWithOptions(_ request: SetDataLevelPermissionExtraConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDataLevelPermissionExtraConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.missHitPolicy)) {
            query["MissHitPolicy"] = request.missHitPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDataLevelPermissionExtraConfig",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDataLevelPermissionExtraConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDataLevelPermissionExtraConfig(_ request: SetDataLevelPermissionExtraConfigRequest) async throws -> SetDataLevelPermissionExtraConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDataLevelPermissionExtraConfigWithOptions(request as! SetDataLevelPermissionExtraConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDataLevelPermissionRuleConfigWithOptions(_ request: SetDataLevelPermissionRuleConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDataLevelPermissionRuleConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ruleModel)) {
            query["RuleModel"] = request.ruleModel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDataLevelPermissionRuleConfig",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDataLevelPermissionRuleConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDataLevelPermissionRuleConfig(_ request: SetDataLevelPermissionRuleConfigRequest) async throws -> SetDataLevelPermissionRuleConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDataLevelPermissionRuleConfigWithOptions(request as! SetDataLevelPermissionRuleConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDataLevelPermissionWhiteListWithOptions(_ request: SetDataLevelPermissionWhiteListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDataLevelPermissionWhiteListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.whiteListModel)) {
            query["WhiteListModel"] = request.whiteListModel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDataLevelPermissionWhiteList",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDataLevelPermissionWhiteListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDataLevelPermissionWhiteList(_ request: SetDataLevelPermissionWhiteListRequest) async throws -> SetDataLevelPermissionWhiteListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDataLevelPermissionWhiteListWithOptions(request as! SetDataLevelPermissionWhiteListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func smartqAuthTransferWithOptions(_ request: SmartqAuthTransferRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SmartqAuthTransferResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.originUserId)) {
            query["OriginUserId"] = request.originUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetUserIds)) {
            query["TargetUserIds"] = request.targetUserIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SmartqAuthTransfer",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SmartqAuthTransferResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func smartqAuthTransfer(_ request: SmartqAuthTransferRequest) async throws -> SmartqAuthTransferResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await smartqAuthTransferWithOptions(request as! SmartqAuthTransferRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func smartqAuthorizeWithOptions(_ request: SmartqAuthorizeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SmartqAuthorizeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeIds)) {
            query["CubeIds"] = request.cubeIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireDay)) {
            query["ExpireDay"] = request.expireDay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.llmCubeThemes)) {
            query["LlmCubeThemes"] = request.llmCubeThemes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.llmCubes)) {
            query["LlmCubes"] = request.llmCubes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationType)) {
            query["OperationType"] = request.operationType!;
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SmartqAuthorize",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SmartqAuthorizeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func smartqAuthorize(_ request: SmartqAuthorizeRequest) async throws -> SmartqAuthorizeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await smartqAuthorizeWithOptions(request as! SmartqAuthorizeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func smartqQueryAbilityWithOptions(_ request: SmartqQueryAbilityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SmartqQueryAbilityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.multipleCubeIds)) {
            query["MultipleCubeIds"] = request.multipleCubeIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userQuestion)) {
            query["UserQuestion"] = request.userQuestion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SmartqQueryAbility",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SmartqQueryAbilityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func smartqQueryAbility(_ request: SmartqQueryAbilityRequest) async throws -> SmartqQueryAbilityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await smartqQueryAbilityWithOptions(request as! SmartqQueryAbilityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCubeBySqlWithOptions(_ request: UpdateCubeBySqlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCubeBySqlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customSql)) {
            query["CustomSql"] = request.customSql ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dsId)) {
            query["DsId"] = request.dsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCubeBySql",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCubeBySqlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCubeBySql(_ request: UpdateCubeBySqlRequest) async throws -> UpdateCubeBySqlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateCubeBySqlWithOptions(request as! UpdateCubeBySqlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataLevelPermissionStatusWithOptions(_ request: UpdateDataLevelPermissionStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataLevelPermissionStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cubeId)) {
            query["CubeId"] = request.cubeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isOpen)) {
            query["IsOpen"] = request.isOpen!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataLevelPermissionStatus",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataLevelPermissionStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataLevelPermissionStatus(_ request: UpdateDataLevelPermissionStatusRequest) async throws -> UpdateDataLevelPermissionStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataLevelPermissionStatusWithOptions(request as! UpdateDataLevelPermissionStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSourceWithOptions(_ request: UpdateDataSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.updateModel)) {
            query["UpdateModel"] = request.updateModel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataSource",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSource(_ request: UpdateDataSourceRequest) async throws -> UpdateDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataSourceWithOptions(request as! UpdateDataSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEmbeddedStatusWithOptions(_ request: UpdateEmbeddedStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEmbeddedStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.thirdPartAuthFlag)) {
            query["ThirdPartAuthFlag"] = request.thirdPartAuthFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.worksId)) {
            query["WorksId"] = request.worksId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEmbeddedStatus",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEmbeddedStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEmbeddedStatus(_ request: UpdateEmbeddedStatusRequest) async throws -> UpdateEmbeddedStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateEmbeddedStatusWithOptions(request as! UpdateEmbeddedStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTicketNumWithOptions(_ request: UpdateTicketNumRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTicketNumResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ticket)) {
            query["Ticket"] = request.ticket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ticketNum)) {
            query["TicketNum"] = request.ticketNum!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTicketNum",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTicketNumResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTicketNum(_ request: UpdateTicketNumRequest) async throws -> UpdateTicketNumResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTicketNumWithOptions(request as! UpdateTicketNumRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserWithOptions(_ request: UpdateUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adminUser)) {
            query["AdminUser"] = request.adminUser!;
        }
        if (!TeaUtils.Client.isUnset(request.authAdminUser)) {
            query["AuthAdminUser"] = request.authAdminUser!;
        }
        if (!TeaUtils.Client.isUnset(request.isDeleted)) {
            query["IsDeleted"] = request.isDeleted!;
        }
        if (!TeaUtils.Client.isUnset(request.nickName)) {
            query["NickName"] = request.nickName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleIds)) {
            query["RoleIds"] = request.roleIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userType)) {
            query["UserType"] = request.userType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUser",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUser(_ request: UpdateUserRequest) async throws -> UpdateUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateUserWithOptions(request as! UpdateUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserGroupWithOptions(_ request: UpdateUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userGroupDescription)) {
            query["UserGroupDescription"] = request.userGroupDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupName)) {
            query["UserGroupName"] = request.userGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserGroup",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserGroup(_ request: UpdateUserGroupRequest) async throws -> UpdateUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateUserGroupWithOptions(request as! UpdateUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserTagMetaWithOptions(_ request: UpdateUserTagMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserTagMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagDescription)) {
            query["TagDescription"] = request.tagDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagId)) {
            query["TagId"] = request.tagId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagName)) {
            query["TagName"] = request.tagName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserTagMeta",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserTagMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserTagMeta(_ request: UpdateUserTagMetaRequest) async throws -> UpdateUserTagMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateUserTagMetaWithOptions(request as! UpdateUserTagMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserTagValueWithOptions(_ request: UpdateUserTagValueRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserTagValueResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagId)) {
            query["TagId"] = request.tagId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagValue)) {
            query["TagValue"] = request.tagValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserTagValue",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserTagValueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserTagValue(_ request: UpdateUserTagValueRequest) async throws -> UpdateUserTagValueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateUserTagValueWithOptions(request as! UpdateUserTagValueRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceUserRoleWithOptions(_ request: UpdateWorkspaceUserRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWorkspaceUserRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            query["RoleId"] = request.roleId!;
        }
        if (!TeaUtils.Client.isUnset(request.roleIds)) {
            query["RoleIds"] = request.roleIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWorkspaceUserRole",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWorkspaceUserRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceUserRole(_ request: UpdateWorkspaceUserRoleRequest) async throws -> UpdateWorkspaceUserRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateWorkspaceUserRoleWithOptions(request as! UpdateWorkspaceUserRoleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceUsersRoleWithOptions(_ request: UpdateWorkspaceUsersRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWorkspaceUsersRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            query["RoleId"] = request.roleId!;
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWorkspaceUsersRole",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWorkspaceUsersRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkspaceUsersRole(_ request: UpdateWorkspaceUsersRoleRequest) async throws -> UpdateWorkspaceUsersRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateWorkspaceUsersRoleWithOptions(request as! UpdateWorkspaceUsersRoleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func withdrawAllUserGroupsWithOptions(_ request: WithdrawAllUserGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> WithdrawAllUserGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "WithdrawAllUserGroups",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(WithdrawAllUserGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func withdrawAllUserGroups(_ request: WithdrawAllUserGroupsRequest) async throws -> WithdrawAllUserGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await withdrawAllUserGroupsWithOptions(request as! WithdrawAllUserGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
