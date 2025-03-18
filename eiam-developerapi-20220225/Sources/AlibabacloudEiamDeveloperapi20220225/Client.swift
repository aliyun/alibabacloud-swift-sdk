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
        self._endpoint = try getEndpoint("eiam-developerapi", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addUserToOrganizationalUnitsWithOptions(_ instanceId: String, _ applicationId: String, _ userId: String, _ request: AddUserToOrganizationalUnitsRequest, _ headers: AddUserToOrganizationalUnitsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddUserToOrganizationalUnitsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationalUnitIds)) {
            body["organizationalUnitIds"] = request.organizationalUnitIds ?? [];
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddUserToOrganizationalUnits",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(userId)) + "/actions/addUserToOrganizationalUnits",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(AddUserToOrganizationalUnitsResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(AddUserToOrganizationalUnitsResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserToOrganizationalUnits(_ instanceId: String, _ applicationId: String, _ userId: String, _ request: AddUserToOrganizationalUnitsRequest) async throws -> AddUserToOrganizationalUnitsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddUserToOrganizationalUnitsHeaders = AddUserToOrganizationalUnitsHeaders([:])
        return try await addUserToOrganizationalUnitsWithOptions(instanceId as! String, applicationId as! String, userId as! String, request as! AddUserToOrganizationalUnitsRequest, headers as! AddUserToOrganizationalUnitsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUsersToGroupWithOptions(_ instanceId: String, _ applicationId: String, _ groupId: String, _ request: AddUsersToGroupRequest, _ headers: AddUsersToGroupHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddUsersToGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            body["userIds"] = request.userIds ?? [];
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddUsersToGroup",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)) + "/actions/addUsersToGroup",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(AddUsersToGroupResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(AddUsersToGroupResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUsersToGroup(_ instanceId: String, _ applicationId: String, _ groupId: String, _ request: AddUsersToGroupRequest) async throws -> AddUsersToGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddUsersToGroupHeaders = AddUsersToGroupHeaders([:])
        return try await addUsersToGroupWithOptions(instanceId as! String, applicationId as! String, groupId as! String, request as! AddUsersToGroupRequest, headers as! AddUsersToGroupHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupWithOptions(_ instanceId: String, _ applicationId: String, _ request: CreateGroupRequest, _ headers: CreateGroupHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupExternalId)) {
            body["groupExternalId"] = request.groupExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["groupName"] = request.groupName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGroup",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/groups",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(CreateGroupResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(CreateGroupResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroup(_ instanceId: String, _ applicationId: String, _ request: CreateGroupRequest) async throws -> CreateGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateGroupHeaders = CreateGroupHeaders([:])
        return try await createGroupWithOptions(instanceId as! String, applicationId as! String, request as! CreateGroupRequest, headers as! CreateGroupHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrganizationalUnitWithOptions(_ instanceId: String, _ applicationId: String, _ request: CreateOrganizationalUnitRequest, _ headers: CreateOrganizationalUnitHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOrganizationalUnitResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationalUnitExternalId)) {
            body["organizationalUnitExternalId"] = request.organizationalUnitExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationalUnitName)) {
            body["organizationalUnitName"] = request.organizationalUnitName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            body["parentId"] = request.parentId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOrganizationalUnit",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/organizationalUnits",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(CreateOrganizationalUnitResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(CreateOrganizationalUnitResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrganizationalUnit(_ instanceId: String, _ applicationId: String, _ request: CreateOrganizationalUnitRequest) async throws -> CreateOrganizationalUnitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateOrganizationalUnitHeaders = CreateOrganizationalUnitHeaders([:])
        return try await createOrganizationalUnitWithOptions(instanceId as! String, applicationId as! String, request as! CreateOrganizationalUnitRequest, headers as! CreateOrganizationalUnitHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserWithOptions(_ instanceId: String, _ applicationId: String, _ request: CreateUserRequest, _ headers: CreateUserHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customFields)) {
            body["customFields"] = request.customFields ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            body["email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emailVerified)) {
            body["emailVerified"] = request.emailVerified!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passwordInitializationConfig)) {
            body["passwordInitializationConfig"] = request.passwordInitializationConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            body["phoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumberVerified)) {
            body["phoneNumberVerified"] = request.phoneNumberVerified!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneRegion)) {
            body["phoneRegion"] = request.phoneRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primaryOrganizationalUnitId)) {
            body["primaryOrganizationalUnitId"] = request.primaryOrganizationalUnitId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userExternalId)) {
            body["userExternalId"] = request.userExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            body["username"] = request.username ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUser",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(CreateUserResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(CreateUserResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUser(_ instanceId: String, _ applicationId: String, _ request: CreateUserRequest) async throws -> CreateUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateUserHeaders = CreateUserHeaders([:])
        return try await createUserWithOptions(instanceId as! String, applicationId as! String, request as! CreateUserRequest, headers as! CreateUserHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGroupWithOptions(_ instanceId: String, _ applicationId: String, _ groupId: String, _ headers: DeleteGroupHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGroupResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGroup",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)),
            "method": "DELETE",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(DeleteGroupResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(DeleteGroupResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGroup(_ instanceId: String, _ applicationId: String, _ groupId: String) async throws -> DeleteGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteGroupHeaders = DeleteGroupHeaders([:])
        return try await deleteGroupWithOptions(instanceId as! String, applicationId as! String, groupId as! String, headers as! DeleteGroupHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOrganizationalUnitWithOptions(_ instanceId: String, _ applicationId: String, _ organizationalUnitId: String, _ headers: DeleteOrganizationalUnitHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteOrganizationalUnitResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteOrganizationalUnit",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/organizationalUnits/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationalUnitId)),
            "method": "DELETE",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(DeleteOrganizationalUnitResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(DeleteOrganizationalUnitResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOrganizationalUnit(_ instanceId: String, _ applicationId: String, _ organizationalUnitId: String) async throws -> DeleteOrganizationalUnitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteOrganizationalUnitHeaders = DeleteOrganizationalUnitHeaders([:])
        return try await deleteOrganizationalUnitWithOptions(instanceId as! String, applicationId as! String, organizationalUnitId as! String, headers as! DeleteOrganizationalUnitHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserWithOptions(_ instanceId: String, _ applicationId: String, _ userId: String, _ headers: DeleteUserHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUser",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(userId)),
            "method": "DELETE",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(DeleteUserResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(DeleteUserResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUser(_ instanceId: String, _ applicationId: String, _ userId: String) async throws -> DeleteUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteUserHeaders = DeleteUserHeaders([:])
        return try await deleteUserWithOptions(instanceId as! String, applicationId as! String, userId as! String, headers as! DeleteUserHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableUserWithOptions(_ instanceId: String, _ applicationId: String, _ userId: String, _ headers: DisableUserHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableUserResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableUser",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(userId)) + "/actions/disable",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(DisableUserResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(DisableUserResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableUser(_ instanceId: String, _ applicationId: String, _ userId: String) async throws -> DisableUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DisableUserHeaders = DisableUserHeaders([:])
        return try await disableUserWithOptions(instanceId as! String, applicationId as! String, userId as! String, headers as! DisableUserHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableUserWithOptions(_ instanceId: String, _ applicationId: String, _ userId: String, _ headers: EnableUserHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableUserResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableUser",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(userId)) + "/actions/enable",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(EnableUserResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(EnableUserResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableUser(_ instanceId: String, _ applicationId: String, _ userId: String) async throws -> EnableUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: EnableUserHeaders = EnableUserHeaders([:])
        return try await enableUserWithOptions(instanceId as! String, applicationId as! String, userId as! String, headers as! EnableUserHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateDeviceCodeWithOptions(_ instanceId: String, _ applicationId: String, _ request: GenerateDeviceCodeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateDeviceCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["scope"] = request.scope ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateDeviceCode",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/oauth2/device/code",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GenerateDeviceCodeResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GenerateDeviceCodeResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateDeviceCode(_ instanceId: String, _ applicationId: String, _ request: GenerateDeviceCodeRequest) async throws -> GenerateDeviceCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateDeviceCodeWithOptions(instanceId as! String, applicationId as! String, request as! GenerateDeviceCodeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateTokenWithOptions(_ instanceId: String, _ applicationId: String, _ request: GenerateTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            query["client_id"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSecret)) {
            query["client_secret"] = request.clientSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            query["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeVerifier)) {
            query["code_verifier"] = request.codeVerifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceCode)) {
            query["device_code"] = request.deviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exclusiveTag)) {
            query["exclusive_tag"] = request.exclusiveTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantType)) {
            query["grant_type"] = request.grantType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.redirectUri)) {
            query["redirect_uri"] = request.redirectUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refreshToken)) {
            query["refresh_token"] = request.refreshToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["username"] = request.username ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateToken",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/oauth2/token",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GenerateTokenResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GenerateTokenResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateToken(_ instanceId: String, _ applicationId: String, _ request: GenerateTokenRequest) async throws -> GenerateTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateTokenWithOptions(instanceId as! String, applicationId as! String, request as! GenerateTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApplicationProvisioningScopeWithOptions(_ instanceId: String, _ applicationId: String, _ headers: GetApplicationProvisioningScopeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApplicationProvisioningScopeResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApplicationProvisioningScope",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/provisioningScope",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetApplicationProvisioningScopeResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetApplicationProvisioningScopeResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApplicationProvisioningScope(_ instanceId: String, _ applicationId: String) async throws -> GetApplicationProvisioningScopeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetApplicationProvisioningScopeHeaders = GetApplicationProvisioningScopeHeaders([:])
        return try await getApplicationProvisioningScopeWithOptions(instanceId as! String, applicationId as! String, headers as! GetApplicationProvisioningScopeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGroupWithOptions(_ instanceId: String, _ applicationId: String, _ groupId: String, _ headers: GetGroupHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGroupResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGroup",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)),
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetGroupResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetGroupResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGroup(_ instanceId: String, _ applicationId: String, _ groupId: String) async throws -> GetGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetGroupHeaders = GetGroupHeaders([:])
        return try await getGroupWithOptions(instanceId as! String, applicationId as! String, groupId as! String, headers as! GetGroupHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrganizationalUnitWithOptions(_ instanceId: String, _ applicationId: String, _ organizationalUnitId: String, _ headers: GetOrganizationalUnitHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrganizationalUnitResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOrganizationalUnit",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/organizationalUnits/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationalUnitId)),
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetOrganizationalUnitResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetOrganizationalUnitResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrganizationalUnit(_ instanceId: String, _ applicationId: String, _ organizationalUnitId: String) async throws -> GetOrganizationalUnitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetOrganizationalUnitHeaders = GetOrganizationalUnitHeaders([:])
        return try await getOrganizationalUnitWithOptions(instanceId as! String, applicationId as! String, organizationalUnitId as! String, headers as! GetOrganizationalUnitHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrganizationalUnitIdByExternalIdWithOptions(_ instanceId: String, _ applicationId: String, _ request: GetOrganizationalUnitIdByExternalIdRequest, _ headers: GetOrganizationalUnitIdByExternalIdHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrganizationalUnitIdByExternalIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationalUnitExternalId)) {
            body["organizationalUnitExternalId"] = request.organizationalUnitExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationalUnitSourceId)) {
            body["organizationalUnitSourceId"] = request.organizationalUnitSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationalUnitSourceType)) {
            body["organizationalUnitSourceType"] = request.organizationalUnitSourceType ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOrganizationalUnitIdByExternalId",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/organizationalUnits/_/actions/getOrganizationalUnitIdByExternalId",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetOrganizationalUnitIdByExternalIdResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetOrganizationalUnitIdByExternalIdResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrganizationalUnitIdByExternalId(_ instanceId: String, _ applicationId: String, _ request: GetOrganizationalUnitIdByExternalIdRequest) async throws -> GetOrganizationalUnitIdByExternalIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetOrganizationalUnitIdByExternalIdHeaders = GetOrganizationalUnitIdByExternalIdHeaders([:])
        return try await getOrganizationalUnitIdByExternalIdWithOptions(instanceId as! String, applicationId as! String, request as! GetOrganizationalUnitIdByExternalIdRequest, headers as! GetOrganizationalUnitIdByExternalIdHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserWithOptions(_ instanceId: String, _ applicationId: String, _ userId: String, _ headers: GetUserHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUser",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(userId)),
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetUserResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetUserResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUser(_ instanceId: String, _ applicationId: String, _ userId: String) async throws -> GetUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUserHeaders = GetUserHeaders([:])
        return try await getUserWithOptions(instanceId as! String, applicationId as! String, userId as! String, headers as! GetUserHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserIdByEmailWithOptions(_ instanceId: String, _ applicationId: String, _ request: GetUserIdByEmailRequest, _ headers: GetUserIdByEmailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserIdByEmailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.email)) {
            body["email"] = request.email ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserIdByEmail",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users/_/actions/getUserIdByEmail",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetUserIdByEmailResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetUserIdByEmailResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserIdByEmail(_ instanceId: String, _ applicationId: String, _ request: GetUserIdByEmailRequest) async throws -> GetUserIdByEmailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUserIdByEmailHeaders = GetUserIdByEmailHeaders([:])
        return try await getUserIdByEmailWithOptions(instanceId as! String, applicationId as! String, request as! GetUserIdByEmailRequest, headers as! GetUserIdByEmailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserIdByPhoneNumberWithOptions(_ instanceId: String, _ applicationId: String, _ request: GetUserIdByPhoneNumberRequest, _ headers: GetUserIdByPhoneNumberHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserIdByPhoneNumberResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            body["phoneNumber"] = request.phoneNumber ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserIdByPhoneNumber",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users/_/actions/getUserIdByPhoneNumber",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetUserIdByPhoneNumberResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetUserIdByPhoneNumberResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserIdByPhoneNumber(_ instanceId: String, _ applicationId: String, _ request: GetUserIdByPhoneNumberRequest) async throws -> GetUserIdByPhoneNumberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUserIdByPhoneNumberHeaders = GetUserIdByPhoneNumberHeaders([:])
        return try await getUserIdByPhoneNumberWithOptions(instanceId as! String, applicationId as! String, request as! GetUserIdByPhoneNumberRequest, headers as! GetUserIdByPhoneNumberHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserIdByUserExternalIdWithOptions(_ instanceId: String, _ applicationId: String, _ request: GetUserIdByUserExternalIdRequest, _ headers: GetUserIdByUserExternalIdHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserIdByUserExternalIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userExternalId)) {
            body["userExternalId"] = request.userExternalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userSourceId)) {
            body["userSourceId"] = request.userSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userSourceType)) {
            body["userSourceType"] = request.userSourceType ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserIdByUserExternalId",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users/_/actions/getUserIdByExternalId",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetUserIdByUserExternalIdResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetUserIdByUserExternalIdResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserIdByUserExternalId(_ instanceId: String, _ applicationId: String, _ request: GetUserIdByUserExternalIdRequest) async throws -> GetUserIdByUserExternalIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUserIdByUserExternalIdHeaders = GetUserIdByUserExternalIdHeaders([:])
        return try await getUserIdByUserExternalIdWithOptions(instanceId as! String, applicationId as! String, request as! GetUserIdByUserExternalIdRequest, headers as! GetUserIdByUserExternalIdHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserIdByUsernameWithOptions(_ instanceId: String, _ applicationId: String, _ request: GetUserIdByUsernameRequest, _ headers: GetUserIdByUsernameHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserIdByUsernameResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.username)) {
            body["username"] = request.username ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserIdByUsername",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users/_/actions/getUserIdByUsername",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetUserIdByUsernameResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetUserIdByUsernameResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserIdByUsername(_ instanceId: String, _ applicationId: String, _ request: GetUserIdByUsernameRequest) async throws -> GetUserIdByUsernameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUserIdByUsernameHeaders = GetUserIdByUsernameHeaders([:])
        return try await getUserIdByUsernameWithOptions(instanceId as! String, applicationId as! String, request as! GetUserIdByUsernameRequest, headers as! GetUserIdByUsernameHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserInfoWithOptions(_ instanceId: String, _ applicationId: String, _ headers: GetUserInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserInfoResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserInfo",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/oauth2/userinfo",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetUserInfoResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(GetUserInfoResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserInfo(_ instanceId: String, _ applicationId: String) async throws -> GetUserInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUserInfoHeaders = GetUserInfoHeaders([:])
        return try await getUserInfoWithOptions(instanceId as! String, applicationId as! String, headers as! GetUserInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupsWithOptions(_ instanceId: String, _ applicationId: String, _ request: ListGroupsRequest, _ headers: ListGroupsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupNameStartWith)) {
            query["groupNameStartWith"] = request.groupNameStartWith ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGroups",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/groups",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListGroupsResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListGroupsResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroups(_ instanceId: String, _ applicationId: String, _ request: ListGroupsRequest) async throws -> ListGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListGroupsHeaders = ListGroupsHeaders([:])
        return try await listGroupsWithOptions(instanceId as! String, applicationId as! String, request as! ListGroupsRequest, headers as! ListGroupsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupsForUserWithOptions(_ instanceId: String, _ applicationId: String, _ userId: String, _ request: ListGroupsForUserRequest, _ headers: ListGroupsForUserHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGroupsForUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGroupsForUser",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(userId)) + "/actions/listGroupsForUser",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListGroupsForUserResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListGroupsForUserResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupsForUser(_ instanceId: String, _ applicationId: String, _ userId: String, _ request: ListGroupsForUserRequest) async throws -> ListGroupsForUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListGroupsForUserHeaders = ListGroupsForUserHeaders([:])
        return try await listGroupsForUserWithOptions(instanceId as! String, applicationId as! String, userId as! String, request as! ListGroupsForUserRequest, headers as! ListGroupsForUserHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizationalUnitParentIdsWithOptions(_ instanceId: String, _ applicationId: String, _ organizationalUnitId: String, _ headers: ListOrganizationalUnitParentIdsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOrganizationalUnitParentIdsResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOrganizationalUnitParentIds",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/organizationalUnits/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationalUnitId)) + "/parentIds",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListOrganizationalUnitParentIdsResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListOrganizationalUnitParentIdsResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizationalUnitParentIds(_ instanceId: String, _ applicationId: String, _ organizationalUnitId: String) async throws -> ListOrganizationalUnitParentIdsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListOrganizationalUnitParentIdsHeaders = ListOrganizationalUnitParentIdsHeaders([:])
        return try await listOrganizationalUnitParentIdsWithOptions(instanceId as! String, applicationId as! String, organizationalUnitId as! String, headers as! ListOrganizationalUnitParentIdsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizationalUnitsWithOptions(_ instanceId: String, _ applicationId: String, _ request: ListOrganizationalUnitsRequest, _ headers: ListOrganizationalUnitsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOrganizationalUnitsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            query["parentId"] = request.parentId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOrganizationalUnits",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/organizationalUnits",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListOrganizationalUnitsResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListOrganizationalUnitsResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOrganizationalUnits(_ instanceId: String, _ applicationId: String, _ request: ListOrganizationalUnitsRequest) async throws -> ListOrganizationalUnitsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListOrganizationalUnitsHeaders = ListOrganizationalUnitsHeaders([:])
        return try await listOrganizationalUnitsWithOptions(instanceId as! String, applicationId as! String, request as! ListOrganizationalUnitsRequest, headers as! ListOrganizationalUnitsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersWithOptions(_ instanceId: String, _ applicationId: String, _ request: ListUsersRequest, _ headers: ListUsersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationalUnitId)) {
            query["organizationalUnitId"] = request.organizationalUnitId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUsers",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListUsersResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListUsersResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsers(_ instanceId: String, _ applicationId: String, _ request: ListUsersRequest) async throws -> ListUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListUsersHeaders = ListUsersHeaders([:])
        return try await listUsersWithOptions(instanceId as! String, applicationId as! String, request as! ListUsersRequest, headers as! ListUsersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersForGroupWithOptions(_ instanceId: String, _ applicationId: String, _ groupId: String, _ request: ListUsersForGroupRequest, _ headers: ListUsersForGroupHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUsersForGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUsersForGroup",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)) + "/actions/listUsersForGroup",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListUsersForGroupResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(ListUsersForGroupResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersForGroup(_ instanceId: String, _ applicationId: String, _ groupId: String, _ request: ListUsersForGroupRequest) async throws -> ListUsersForGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListUsersForGroupHeaders = ListUsersForGroupHeaders([:])
        return try await listUsersForGroupWithOptions(instanceId as! String, applicationId as! String, groupId as! String, request as! ListUsersForGroupRequest, headers as! ListUsersForGroupHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func patchGroupWithOptions(_ instanceId: String, _ applicationId: String, _ groupId: String, _ request: PatchGroupRequest, _ headers: PatchGroupHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PatchGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            body["groupName"] = request.groupName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PatchGroup",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)),
            "method": "PATCH",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(PatchGroupResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(PatchGroupResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func patchGroup(_ instanceId: String, _ applicationId: String, _ groupId: String, _ request: PatchGroupRequest) async throws -> PatchGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PatchGroupHeaders = PatchGroupHeaders([:])
        return try await patchGroupWithOptions(instanceId as! String, applicationId as! String, groupId as! String, request as! PatchGroupRequest, headers as! PatchGroupHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func patchOrganizationalUnitWithOptions(_ instanceId: String, _ applicationId: String, _ organizationalUnitId: String, _ request: PatchOrganizationalUnitRequest, _ headers: PatchOrganizationalUnitHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PatchOrganizationalUnitResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organizationalUnitName)) {
            body["organizationalUnitName"] = request.organizationalUnitName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PatchOrganizationalUnit",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/organizationalUnits/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(organizationalUnitId)),
            "method": "PATCH",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(PatchOrganizationalUnitResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(PatchOrganizationalUnitResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func patchOrganizationalUnit(_ instanceId: String, _ applicationId: String, _ organizationalUnitId: String, _ request: PatchOrganizationalUnitRequest) async throws -> PatchOrganizationalUnitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PatchOrganizationalUnitHeaders = PatchOrganizationalUnitHeaders([:])
        return try await patchOrganizationalUnitWithOptions(instanceId as! String, applicationId as! String, organizationalUnitId as! String, request as! PatchOrganizationalUnitRequest, headers as! PatchOrganizationalUnitHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func patchUserWithOptions(_ instanceId: String, _ applicationId: String, _ userId: String, _ request: PatchUserRequest, _ headers: PatchUserHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PatchUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customFields)) {
            body["customFields"] = request.customFields ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            body["email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emailVerified)) {
            body["emailVerified"] = request.emailVerified!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            body["phoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumberVerified)) {
            body["phoneNumberVerified"] = request.phoneNumberVerified!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneRegion)) {
            body["phoneRegion"] = request.phoneRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            body["username"] = request.username ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PatchUser",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(userId)),
            "method": "PATCH",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(PatchUserResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(PatchUserResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func patchUser(_ instanceId: String, _ applicationId: String, _ userId: String, _ request: PatchUserRequest) async throws -> PatchUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PatchUserHeaders = PatchUserHeaders([:])
        return try await patchUserWithOptions(instanceId as! String, applicationId as! String, userId as! String, request as! PatchUserRequest, headers as! PatchUserHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUserFromOrganizationalUnitsWithOptions(_ instanceId: String, _ applicationId: String, _ userId: String, _ request: RemoveUserFromOrganizationalUnitsRequest, _ headers: RemoveUserFromOrganizationalUnitsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveUserFromOrganizationalUnitsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationalUnitIds)) {
            body["organizationalUnitIds"] = request.organizationalUnitIds ?? [];
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveUserFromOrganizationalUnits",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(userId)) + "/actions/removeUserFromOrganizationalUnits",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(RemoveUserFromOrganizationalUnitsResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(RemoveUserFromOrganizationalUnitsResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUserFromOrganizationalUnits(_ instanceId: String, _ applicationId: String, _ userId: String, _ request: RemoveUserFromOrganizationalUnitsRequest) async throws -> RemoveUserFromOrganizationalUnitsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: RemoveUserFromOrganizationalUnitsHeaders = RemoveUserFromOrganizationalUnitsHeaders([:])
        return try await removeUserFromOrganizationalUnitsWithOptions(instanceId as! String, applicationId as! String, userId as! String, request as! RemoveUserFromOrganizationalUnitsRequest, headers as! RemoveUserFromOrganizationalUnitsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUsersFromGroupWithOptions(_ instanceId: String, _ applicationId: String, _ groupId: String, _ request: RemoveUsersFromGroupRequest, _ headers: RemoveUsersFromGroupHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveUsersFromGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            body["userIds"] = request.userIds ?? [];
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveUsersFromGroup",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/groups/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId)) + "/actions/removeUsersFromGroup",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(RemoveUsersFromGroupResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(RemoveUsersFromGroupResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUsersFromGroup(_ instanceId: String, _ applicationId: String, _ groupId: String, _ request: RemoveUsersFromGroupRequest) async throws -> RemoveUsersFromGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: RemoveUsersFromGroupHeaders = RemoveUsersFromGroupHeaders([:])
        return try await removeUsersFromGroupWithOptions(instanceId as! String, applicationId as! String, groupId as! String, request as! RemoveUsersFromGroupRequest, headers as! RemoveUsersFromGroupHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeTokenWithOptions(_ instanceId: String, _ applicationId: String, _ request: RevokeTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            query["client_id"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientSecret)) {
            query["client_secret"] = request.clientSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenTypeHint)) {
            query["token_type_hint"] = request.tokenTypeHint ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeToken",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/oauth2/revoke",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(RevokeTokenResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(RevokeTokenResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeToken(_ instanceId: String, _ applicationId: String, _ request: RevokeTokenRequest) async throws -> RevokeTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await revokeTokenWithOptions(instanceId as! String, applicationId as! String, request as! RevokeTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setUserPrimaryOrganizationalUnitWithOptions(_ instanceId: String, _ applicationId: String, _ userId: String, _ request: SetUserPrimaryOrganizationalUnitRequest, _ headers: SetUserPrimaryOrganizationalUnitHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetUserPrimaryOrganizationalUnitResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.organizationalUnitId)) {
            body["organizationalUnitId"] = request.organizationalUnitId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetUserPrimaryOrganizationalUnit",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(userId)) + "/actions/setUserPrimaryOrganizationalUnit",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(SetUserPrimaryOrganizationalUnitResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(SetUserPrimaryOrganizationalUnitResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setUserPrimaryOrganizationalUnit(_ instanceId: String, _ applicationId: String, _ userId: String, _ request: SetUserPrimaryOrganizationalUnitRequest) async throws -> SetUserPrimaryOrganizationalUnitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SetUserPrimaryOrganizationalUnitHeaders = SetUserPrimaryOrganizationalUnitHeaders([:])
        return try await setUserPrimaryOrganizationalUnitWithOptions(instanceId as! String, applicationId as! String, userId as! String, request as! SetUserPrimaryOrganizationalUnitRequest, headers as! SetUserPrimaryOrganizationalUnitHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserPasswordWithOptions(_ instanceId: String, _ applicationId: String, _ userId: String, _ request: UpdateUserPasswordRequest, _ headers: UpdateUserPasswordHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserPasswordResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.password)) {
            body["password"] = request.password ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.authorization)) {
            realHeaders["Authorization"] = TeaUtils.Client.toJSONString(headers.authorization);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserPassword",
            "version": "2022-02-25",
            "protocol": "HTTPS",
            "pathname": "/v2/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(applicationId)) + "/users/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(userId)) + "/actions/updateUserPassword",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        if (TeaUtils.Client.isUnset(self._signatureVersion) || !TeaUtils.Client.equalString(self._signatureVersion, "v4")) {
            var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(UpdateUserPasswordResponse(), tmp)
        }
        else {
            var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            return Tea.TeaConverter.fromMap(UpdateUserPasswordResponse(), tmp)
        }
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserPassword(_ instanceId: String, _ applicationId: String, _ userId: String, _ request: UpdateUserPasswordRequest) async throws -> UpdateUserPasswordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateUserPasswordHeaders = UpdateUserPasswordHeaders([:])
        return try await updateUserPasswordWithOptions(instanceId as! String, applicationId as! String, userId as! String, request as! UpdateUserPasswordRequest, headers as! UpdateUserPasswordHeaders, runtime as! TeaUtils.RuntimeOptions)
    }
}
