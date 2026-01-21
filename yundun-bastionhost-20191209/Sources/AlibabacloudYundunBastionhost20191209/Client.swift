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
        self._endpoint = try getEndpoint("yundun-bastionhost", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func acceptApproveCommandWithOptions(_ request: AcceptApproveCommandRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AcceptApproveCommandResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commandId)) {
            query["CommandId"] = request.commandId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AcceptApproveCommand",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AcceptApproveCommandResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func acceptApproveCommand(_ request: AcceptApproveCommandRequest) async throws -> AcceptApproveCommandResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await acceptApproveCommandWithOptions(request as! AcceptApproveCommandRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func acceptOperationTicketWithOptions(_ request: AcceptOperationTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AcceptOperationTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectCount)) {
            query["EffectCount"] = request.effectCount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectEndTime)) {
            query["EffectEndTime"] = request.effectEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectStartTime)) {
            query["EffectStartTime"] = request.effectStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationTicketId)) {
            query["OperationTicketId"] = request.operationTicketId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AcceptOperationTicket",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AcceptOperationTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func acceptOperationTicket(_ request: AcceptOperationTicketRequest) async throws -> AcceptOperationTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await acceptOperationTicketWithOptions(request as! AcceptOperationTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDatabasesToGroupWithOptions(_ request: AddDatabasesToGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDatabasesToGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseIds)) {
            query["DatabaseIds"] = request.databaseIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hostGroupId)) {
            query["HostGroupId"] = request.hostGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDatabasesToGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDatabasesToGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDatabasesToGroup(_ request: AddDatabasesToGroupRequest) async throws -> AddDatabasesToGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDatabasesToGroupWithOptions(request as! AddDatabasesToGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addHostsToGroupWithOptions(_ request: AddHostsToGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddHostsToGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostGroupId)) {
            query["HostGroupId"] = request.hostGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostIds)) {
            query["HostIds"] = request.hostIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddHostsToGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddHostsToGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addHostsToGroup(_ request: AddHostsToGroupRequest) async throws -> AddHostsToGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addHostsToGroupWithOptions(request as! AddHostsToGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addInstanceRdMemberWithOptions(_ request: AddInstanceRdMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddInstanceRdMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberId)) {
            query["MemberId"] = request.memberId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddInstanceRdMember",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddInstanceRdMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addInstanceRdMember(_ request: AddInstanceRdMemberRequest) async throws -> AddInstanceRdMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addInstanceRdMemberWithOptions(request as! AddInstanceRdMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUsersToGroupWithOptions(_ request: AddUsersToGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddUsersToGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddUsersToGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddUsersToGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUsersToGroup(_ request: AddUsersToGroupRequest) async throws -> AddUsersToGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addUsersToGroupWithOptions(request as! AddUsersToGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachDatabaseAccountsToUserWithOptions(_ request: AttachDatabaseAccountsToUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachDatabaseAccountsToUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databases)) {
            query["Databases"] = request.databases ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachDatabaseAccountsToUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachDatabaseAccountsToUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachDatabaseAccountsToUser(_ request: AttachDatabaseAccountsToUserRequest) async throws -> AttachDatabaseAccountsToUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachDatabaseAccountsToUserWithOptions(request as! AttachDatabaseAccountsToUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachDatabaseAccountsToUserGroupWithOptions(_ request: AttachDatabaseAccountsToUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachDatabaseAccountsToUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databases)) {
            query["Databases"] = request.databases ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachDatabaseAccountsToUserGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachDatabaseAccountsToUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachDatabaseAccountsToUserGroup(_ request: AttachDatabaseAccountsToUserGroupRequest) async throws -> AttachDatabaseAccountsToUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachDatabaseAccountsToUserGroupWithOptions(request as! AttachDatabaseAccountsToUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachHostAccountsToHostShareKeyWithOptions(_ request: AttachHostAccountsToHostShareKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachHostAccountsToHostShareKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAccountIds)) {
            query["HostAccountIds"] = request.hostAccountIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostShareKeyId)) {
            query["HostShareKeyId"] = request.hostShareKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachHostAccountsToHostShareKey",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachHostAccountsToHostShareKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachHostAccountsToHostShareKey(_ request: AttachHostAccountsToHostShareKeyRequest) async throws -> AttachHostAccountsToHostShareKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachHostAccountsToHostShareKeyWithOptions(request as! AttachHostAccountsToHostShareKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachHostAccountsToUserWithOptions(_ request: AttachHostAccountsToUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachHostAccountsToUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hosts)) {
            query["Hosts"] = request.hosts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachHostAccountsToUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachHostAccountsToUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachHostAccountsToUser(_ request: AttachHostAccountsToUserRequest) async throws -> AttachHostAccountsToUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachHostAccountsToUserWithOptions(request as! AttachHostAccountsToUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachHostAccountsToUserGroupWithOptions(_ request: AttachHostAccountsToUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachHostAccountsToUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hosts)) {
            query["Hosts"] = request.hosts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachHostAccountsToUserGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachHostAccountsToUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachHostAccountsToUserGroup(_ request: AttachHostAccountsToUserGroupRequest) async throws -> AttachHostAccountsToUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachHostAccountsToUserGroupWithOptions(request as! AttachHostAccountsToUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachHostGroupAccountsToUserWithOptions(_ request: AttachHostGroupAccountsToUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachHostGroupAccountsToUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostGroups)) {
            query["HostGroups"] = request.hostGroups ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachHostGroupAccountsToUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachHostGroupAccountsToUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachHostGroupAccountsToUser(_ request: AttachHostGroupAccountsToUserRequest) async throws -> AttachHostGroupAccountsToUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachHostGroupAccountsToUserWithOptions(request as! AttachHostGroupAccountsToUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachHostGroupAccountsToUserGroupWithOptions(_ request: AttachHostGroupAccountsToUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachHostGroupAccountsToUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostGroups)) {
            query["HostGroups"] = request.hostGroups ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachHostGroupAccountsToUserGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachHostGroupAccountsToUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachHostGroupAccountsToUserGroup(_ request: AttachHostGroupAccountsToUserGroupRequest) async throws -> AttachHostGroupAccountsToUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachHostGroupAccountsToUserGroupWithOptions(request as! AttachHostGroupAccountsToUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configInstanceSecurityGroupsWithOptions(_ request: ConfigInstanceSecurityGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigInstanceSecurityGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizedSecurityGroups)) {
            query["AuthorizedSecurityGroups"] = request.authorizedSecurityGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigInstanceSecurityGroups",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigInstanceSecurityGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configInstanceSecurityGroups(_ request: ConfigInstanceSecurityGroupsRequest) async throws -> ConfigInstanceSecurityGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configInstanceSecurityGroupsWithOptions(request as! ConfigInstanceSecurityGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configInstanceWhiteListWithOptions(_ request: ConfigInstanceWhiteListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigInstanceWhiteListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whiteList)) {
            query["WhiteList"] = request.whiteList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.whiteListPolicies)) {
            query["WhiteListPolicies"] = request.whiteListPolicies ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigInstanceWhiteList",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigInstanceWhiteListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configInstanceWhiteList(_ request: ConfigInstanceWhiteListRequest) async throws -> ConfigInstanceWhiteListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configInstanceWhiteListWithOptions(request as! ConfigInstanceWhiteListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatabaseWithOptions(_ request: CreateDatabaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activeAddressType)) {
            query["ActiveAddressType"] = request.activeAddressType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databasePort)) {
            query["DatabasePort"] = request.databasePort!;
        }
        if (!TeaUtils.Client.isUnset(request.databasePrivateAddress)) {
            query["DatabasePrivateAddress"] = request.databasePrivateAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databasePublicAddress)) {
            query["DatabasePublicAddress"] = request.databasePublicAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseType)) {
            query["DatabaseType"] = request.databaseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceMemberId)) {
            query["InstanceMemberId"] = request.instanceMemberId!;
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainId)) {
            query["NetworkDomainId"] = request.networkDomainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.polarDBEndpointType)) {
            query["PolarDBEndpointType"] = request.polarDBEndpointType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceInstanceId)) {
            query["SourceInstanceId"] = request.sourceInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceInstanceRegionId)) {
            query["SourceInstanceRegionId"] = request.sourceInstanceRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDatabase",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatabase(_ request: CreateDatabaseRequest) async throws -> CreateDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDatabaseWithOptions(request as! CreateDatabaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatabaseAccountWithOptions(_ request: CreateDatabaseAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatabaseAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseAccountName)) {
            query["DatabaseAccountName"] = request.databaseAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseId)) {
            query["DatabaseId"] = request.databaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseSchema)) {
            query["DatabaseSchema"] = request.databaseSchema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginAttribute)) {
            query["LoginAttribute"] = request.loginAttribute ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDatabaseAccount",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatabaseAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatabaseAccount(_ request: CreateDatabaseAccountRequest) async throws -> CreateDatabaseAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDatabaseAccountWithOptions(request as! CreateDatabaseAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExportConfigJobWithOptions(_ request: CreateExportConfigJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateExportConfigJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateExportConfigJob",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateExportConfigJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExportConfigJob(_ request: CreateExportConfigJobRequest) async throws -> CreateExportConfigJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createExportConfigJobWithOptions(request as! CreateExportConfigJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHostWithOptions(_ request: CreateHostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHostResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activeAddressType)) {
            query["ActiveAddressType"] = request.activeAddressType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostPrivateAddress)) {
            query["HostPrivateAddress"] = request.hostPrivateAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostPublicAddress)) {
            query["HostPublicAddress"] = request.hostPublicAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceMemberId)) {
            query["InstanceMemberId"] = request.instanceMemberId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceRegionId)) {
            query["InstanceRegionId"] = request.instanceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainId)) {
            query["NetworkDomainId"] = request.networkDomainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSType)) {
            query["OSType"] = request.OSType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceInstanceId)) {
            query["SourceInstanceId"] = request.sourceInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHost",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHost(_ request: CreateHostRequest) async throws -> CreateHostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createHostWithOptions(request as! CreateHostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHostAccountWithOptions(_ request: CreateHostAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHostAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAccountName)) {
            query["HostAccountName"] = request.hostAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostId)) {
            query["HostId"] = request.hostId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostShareKeyId)) {
            query["HostShareKeyId"] = request.hostShareKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passPhrase)) {
            query["PassPhrase"] = request.passPhrase ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateKey)) {
            query["PrivateKey"] = request.privateKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privilegeType)) {
            query["PrivilegeType"] = request.privilegeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocolName)) {
            query["ProtocolName"] = request.protocolName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rotationMode)) {
            query["RotationMode"] = request.rotationMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHostAccount",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHostAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHostAccount(_ request: CreateHostAccountRequest) async throws -> CreateHostAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createHostAccountWithOptions(request as! CreateHostAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHostGroupWithOptions(_ request: CreateHostGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHostGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostGroupName)) {
            query["HostGroupName"] = request.hostGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHostGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHostGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHostGroup(_ request: CreateHostGroupRequest) async throws -> CreateHostGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createHostGroupWithOptions(request as! CreateHostGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHostShareKeyWithOptions(_ request: CreateHostShareKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHostShareKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostShareKeyName)) {
            query["HostShareKeyName"] = request.hostShareKeyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passPhrase)) {
            query["PassPhrase"] = request.passPhrase ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateKey)) {
            query["PrivateKey"] = request.privateKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHostShareKey",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHostShareKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHostShareKey(_ request: CreateHostShareKeyRequest) async throws -> CreateHostShareKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createHostShareKeyWithOptions(request as! CreateHostShareKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNetworkDomainWithOptions(_ request: CreateNetworkDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNetworkDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainName)) {
            query["NetworkDomainName"] = request.networkDomainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainType)) {
            query["NetworkDomainType"] = request.networkDomainType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxies)) {
            query["Proxies"] = request.proxies ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNetworkDomain",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNetworkDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNetworkDomain(_ request: CreateNetworkDomainRequest) async throws -> CreateNetworkDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNetworkDomainWithOptions(request as! CreateNetworkDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOperationTicketWithOptions(_ request: CreateOperationTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOperationTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.approveComment)) {
            query["ApproveComment"] = request.approveComment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assetAccountName)) {
            query["AssetAccountName"] = request.assetAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assetId)) {
            query["AssetId"] = request.assetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectEndTime)) {
            query["EffectEndTime"] = request.effectEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.effectStartTime)) {
            query["EffectStartTime"] = request.effectStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isOneTimeEffect)) {
            query["IsOneTimeEffect"] = request.isOneTimeEffect!;
        }
        if (!TeaUtils.Client.isUnset(request.protocolName)) {
            query["ProtocolName"] = request.protocolName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOperationTicket",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOperationTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOperationTicket(_ request: CreateOperationTicketRequest) async throws -> CreateOperationTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOperationTicketWithOptions(request as! CreateOperationTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicyWithOptions(_ request: CreatePolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            query["PolicyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            query["Priority"] = request.priority ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePolicy",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicy(_ request: CreatePolicyRequest) async throws -> CreatePolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPolicyWithOptions(request as! CreatePolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRuleWithOptions(_ request: CreateRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databases)) {
            query["Databases"] = request.databases ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.effectiveEndTime)) {
            query["EffectiveEndTime"] = request.effectiveEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.effectiveStartTime)) {
            query["EffectiveStartTime"] = request.effectiveStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.hostGroups)) {
            query["HostGroups"] = request.hostGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hosts)) {
            query["Hosts"] = request.hosts ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupIds)) {
            query["UserGroupIds"] = request.userGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRule",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRule(_ request: CreateRuleRequest) async throws -> CreateRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRuleWithOptions(request as! CreateRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserWithOptions(_ request: CreateUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            query["DisplayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectiveEndTime)) {
            query["EffectiveEndTime"] = request.effectiveEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.effectiveStartTime)) {
            query["EffectiveStartTime"] = request.effectiveStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.languageStatus)) {
            query["LanguageStatus"] = request.languageStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileCountryCode)) {
            query["MobileCountryCode"] = request.mobileCountryCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needResetPassword)) {
            query["NeedResetPassword"] = request.needResetPassword!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceUserId)) {
            query["SourceUserId"] = request.sourceUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.twoFactorMethods)) {
            query["TwoFactorMethods"] = request.twoFactorMethods ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.twoFactorStatus)) {
            query["TwoFactorStatus"] = request.twoFactorStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUser(_ request: CreateUserRequest) async throws -> CreateUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createUserWithOptions(request as! CreateUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserGroupWithOptions(_ request: CreateUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupName)) {
            query["UserGroupName"] = request.userGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUserGroup",
            "version": "2019-12-09",
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
    public func createUserPublicKeyWithOptions(_ request: CreateUserPublicKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserPublicKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicKey)) {
            query["PublicKey"] = request.publicKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicKeyName)) {
            query["PublicKeyName"] = request.publicKeyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUserPublicKey",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserPublicKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserPublicKey(_ request: CreateUserPublicKeyRequest) async throws -> CreateUserPublicKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createUserPublicKeyWithOptions(request as! CreateUserPublicKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatabaseWithOptions(_ request: DeleteDatabaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseId)) {
            query["DatabaseId"] = request.databaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDatabase",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatabase(_ request: DeleteDatabaseRequest) async throws -> DeleteDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDatabaseWithOptions(request as! DeleteDatabaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatabaseAccountWithOptions(_ request: DeleteDatabaseAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatabaseAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseAccountId)) {
            query["DatabaseAccountId"] = request.databaseAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDatabaseAccount",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatabaseAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatabaseAccount(_ request: DeleteDatabaseAccountRequest) async throws -> DeleteDatabaseAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDatabaseAccountWithOptions(request as! DeleteDatabaseAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHostWithOptions(_ request: DeleteHostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHostResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostId)) {
            query["HostId"] = request.hostId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHost",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHost(_ request: DeleteHostRequest) async throws -> DeleteHostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteHostWithOptions(request as! DeleteHostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHostAccountWithOptions(_ request: DeleteHostAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHostAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAccountId)) {
            query["HostAccountId"] = request.hostAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHostAccount",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHostAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHostAccount(_ request: DeleteHostAccountRequest) async throws -> DeleteHostAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteHostAccountWithOptions(request as! DeleteHostAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHostGroupWithOptions(_ request: DeleteHostGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHostGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostGroupId)) {
            query["HostGroupId"] = request.hostGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHostGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHostGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHostGroup(_ request: DeleteHostGroupRequest) async throws -> DeleteHostGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteHostGroupWithOptions(request as! DeleteHostGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHostShareKeyWithOptions(_ request: DeleteHostShareKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHostShareKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostShareKeyId)) {
            query["HostShareKeyId"] = request.hostShareKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHostShareKey",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHostShareKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHostShareKey(_ request: DeleteHostShareKeyRequest) async throws -> DeleteHostShareKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteHostShareKeyWithOptions(request as! DeleteHostShareKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNetworkDomainWithOptions(_ request: DeleteNetworkDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNetworkDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainId)) {
            query["NetworkDomainId"] = request.networkDomainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNetworkDomain",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNetworkDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNetworkDomain(_ request: DeleteNetworkDomainRequest) async throws -> DeleteNetworkDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNetworkDomainWithOptions(request as! DeleteNetworkDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyWithOptions(_ request: DeletePolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePolicy",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicy(_ request: DeletePolicyRequest) async throws -> DeletePolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePolicyWithOptions(request as! DeletePolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRuleWithOptions(_ request: DeleteRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRule",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRule(_ request: DeleteRuleRequest) async throws -> DeleteRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRuleWithOptions(request as! DeleteRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserWithOptions(_ request: DeleteUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUser",
            "version": "2019-12-09",
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
    public func deleteUserGroupWithOptions(_ request: DeleteUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserGroup",
            "version": "2019-12-09",
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
    public func deleteUserPublicKeyWithOptions(_ request: DeleteUserPublicKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserPublicKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicKeyId)) {
            query["PublicKeyId"] = request.publicKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserPublicKey",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserPublicKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserPublicKey(_ request: DeleteUserPublicKeyRequest) async throws -> DeleteUserPublicKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUserPublicKeyWithOptions(request as! DeleteUserPublicKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceAttributeWithOptions(_ request: DescribeInstanceAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceAttribute",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceAttribute(_ request: DescribeInstanceAttributeRequest) async throws -> DescribeInstanceAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceAttributeWithOptions(request as! DescribeInstanceAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstancesWithOptions(_ request: DescribeInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceStatus)) {
            query["InstanceStatus"] = request.instanceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstances",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstances(_ request: DescribeInstancesRequest) async throws -> DescribeInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstancesWithOptions(request as! DescribeInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegions(_ request: DescribeRegionsRequest) async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRegionsWithOptions(request as! DescribeRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachDatabaseAccountsFromUserWithOptions(_ request: DetachDatabaseAccountsFromUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachDatabaseAccountsFromUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databases)) {
            query["Databases"] = request.databases ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachDatabaseAccountsFromUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachDatabaseAccountsFromUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachDatabaseAccountsFromUser(_ request: DetachDatabaseAccountsFromUserRequest) async throws -> DetachDatabaseAccountsFromUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachDatabaseAccountsFromUserWithOptions(request as! DetachDatabaseAccountsFromUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachDatabaseAccountsFromUserGroupWithOptions(_ request: DetachDatabaseAccountsFromUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachDatabaseAccountsFromUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databases)) {
            query["Databases"] = request.databases ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachDatabaseAccountsFromUserGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachDatabaseAccountsFromUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachDatabaseAccountsFromUserGroup(_ request: DetachDatabaseAccountsFromUserGroupRequest) async throws -> DetachDatabaseAccountsFromUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachDatabaseAccountsFromUserGroupWithOptions(request as! DetachDatabaseAccountsFromUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachHostAccountsFromHostShareKeyWithOptions(_ request: DetachHostAccountsFromHostShareKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachHostAccountsFromHostShareKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAccountIds)) {
            query["HostAccountIds"] = request.hostAccountIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostShareKeyId)) {
            query["HostShareKeyId"] = request.hostShareKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachHostAccountsFromHostShareKey",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachHostAccountsFromHostShareKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachHostAccountsFromHostShareKey(_ request: DetachHostAccountsFromHostShareKeyRequest) async throws -> DetachHostAccountsFromHostShareKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachHostAccountsFromHostShareKeyWithOptions(request as! DetachHostAccountsFromHostShareKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachHostAccountsFromUserWithOptions(_ request: DetachHostAccountsFromUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachHostAccountsFromUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hosts)) {
            query["Hosts"] = request.hosts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachHostAccountsFromUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachHostAccountsFromUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachHostAccountsFromUser(_ request: DetachHostAccountsFromUserRequest) async throws -> DetachHostAccountsFromUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachHostAccountsFromUserWithOptions(request as! DetachHostAccountsFromUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachHostAccountsFromUserGroupWithOptions(_ request: DetachHostAccountsFromUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachHostAccountsFromUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hosts)) {
            query["Hosts"] = request.hosts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachHostAccountsFromUserGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachHostAccountsFromUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachHostAccountsFromUserGroup(_ request: DetachHostAccountsFromUserGroupRequest) async throws -> DetachHostAccountsFromUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachHostAccountsFromUserGroupWithOptions(request as! DetachHostAccountsFromUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachHostGroupAccountsFromUserWithOptions(_ request: DetachHostGroupAccountsFromUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachHostGroupAccountsFromUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostGroups)) {
            query["HostGroups"] = request.hostGroups ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachHostGroupAccountsFromUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachHostGroupAccountsFromUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachHostGroupAccountsFromUser(_ request: DetachHostGroupAccountsFromUserRequest) async throws -> DetachHostGroupAccountsFromUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachHostGroupAccountsFromUserWithOptions(request as! DetachHostGroupAccountsFromUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachHostGroupAccountsFromUserGroupWithOptions(_ request: DetachHostGroupAccountsFromUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachHostGroupAccountsFromUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostGroups)) {
            query["HostGroups"] = request.hostGroups ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachHostGroupAccountsFromUserGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachHostGroupAccountsFromUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachHostGroupAccountsFromUserGroup(_ request: DetachHostGroupAccountsFromUserGroupRequest) async throws -> DetachHostGroupAccountsFromUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachHostGroupAccountsFromUserGroupWithOptions(request as! DetachHostGroupAccountsFromUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableInstancePublicAccessWithOptions(_ request: DisableInstancePublicAccessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableInstancePublicAccessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableInstancePublicAccess",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableInstancePublicAccessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableInstancePublicAccess(_ request: DisableInstancePublicAccessRequest) async throws -> DisableInstancePublicAccessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableInstancePublicAccessWithOptions(request as! DisableInstancePublicAccessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableRuleWithOptions(_ request: DisableRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableRule",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableRule(_ request: DisableRuleRequest) async throws -> DisableRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableRuleWithOptions(request as! DisableRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableInstancePublicAccessWithOptions(_ request: EnableInstancePublicAccessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableInstancePublicAccessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableInstancePublicAccess",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableInstancePublicAccessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableInstancePublicAccess(_ request: EnableInstancePublicAccessRequest) async throws -> EnableInstancePublicAccessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableInstancePublicAccessWithOptions(request as! EnableInstancePublicAccessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableRuleWithOptions(_ request: EnableRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableRule",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableRule(_ request: EnableRuleRequest) async throws -> EnableRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableRuleWithOptions(request as! EnableRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateAssetOperationTokenWithOptions(_ request: GenerateAssetOperationTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateAssetOperationTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assetAccountId)) {
            query["AssetAccountId"] = request.assetAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assetAccountName)) {
            query["AssetAccountName"] = request.assetAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assetAccountPassword)) {
            query["AssetAccountPassword"] = request.assetAccountPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assetAccountProtocolName)) {
            query["AssetAccountProtocolName"] = request.assetAccountProtocolName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assetId)) {
            query["AssetId"] = request.assetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assetType)) {
            query["AssetType"] = request.assetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseSchema)) {
            query["DatabaseSchema"] = request.databaseSchema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginAttribute)) {
            query["LoginAttribute"] = request.loginAttribute ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationMode)) {
            query["OperationMode"] = request.operationMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationNote)) {
            query["OperationNote"] = request.operationNote ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ssoClient)) {
            query["SsoClient"] = request.ssoClient ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateAssetOperationToken",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateAssetOperationTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateAssetOperationToken(_ request: GenerateAssetOperationTokenRequest) async throws -> GenerateAssetOperationTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateAssetOperationTokenWithOptions(request as! GenerateAssetOperationTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabaseWithOptions(_ request: GetDatabaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseId)) {
            query["DatabaseId"] = request.databaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDatabase",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabase(_ request: GetDatabaseRequest) async throws -> GetDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDatabaseWithOptions(request as! GetDatabaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabaseAccountWithOptions(_ request: GetDatabaseAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatabaseAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseAccountId)) {
            query["DatabaseAccountId"] = request.databaseAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDatabaseAccount",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatabaseAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabaseAccount(_ request: GetDatabaseAccountRequest) async throws -> GetDatabaseAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDatabaseAccountWithOptions(request as! GetDatabaseAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExportConfigJobWithOptions(_ request: GetExportConfigJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetExportConfigJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetExportConfigJob",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetExportConfigJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExportConfigJob(_ request: GetExportConfigJobRequest) async throws -> GetExportConfigJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getExportConfigJobWithOptions(request as! GetExportConfigJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHostWithOptions(_ request: GetHostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHostResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostId)) {
            query["HostId"] = request.hostId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHost",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHost(_ request: GetHostRequest) async throws -> GetHostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getHostWithOptions(request as! GetHostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHostAccountWithOptions(_ request: GetHostAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHostAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAccountId)) {
            query["HostAccountId"] = request.hostAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHostAccount",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHostAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHostAccount(_ request: GetHostAccountRequest) async throws -> GetHostAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getHostAccountWithOptions(request as! GetHostAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHostGroupWithOptions(_ request: GetHostGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHostGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostGroupId)) {
            query["HostGroupId"] = request.hostGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHostGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHostGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHostGroup(_ request: GetHostGroupRequest) async throws -> GetHostGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getHostGroupWithOptions(request as! GetHostGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHostShareKeyWithOptions(_ request: GetHostShareKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHostShareKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostShareKeyId)) {
            query["HostShareKeyId"] = request.hostShareKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHostShareKey",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHostShareKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHostShareKey(_ request: GetHostShareKeyRequest) async throws -> GetHostShareKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getHostShareKeyWithOptions(request as! GetHostShareKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceADAuthServerWithOptions(_ request: GetInstanceADAuthServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceADAuthServerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceADAuthServer",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceADAuthServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceADAuthServer(_ request: GetInstanceADAuthServerRequest) async throws -> GetInstanceADAuthServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInstanceADAuthServerWithOptions(request as! GetInstanceADAuthServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceLDAPAuthServerWithOptions(_ request: GetInstanceLDAPAuthServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceLDAPAuthServerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceLDAPAuthServer",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceLDAPAuthServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceLDAPAuthServer(_ request: GetInstanceLDAPAuthServerRequest) async throws -> GetInstanceLDAPAuthServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInstanceLDAPAuthServerWithOptions(request as! GetInstanceLDAPAuthServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceStoreInfoWithOptions(_ request: GetInstanceStoreInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceStoreInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceStoreInfo",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceStoreInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceStoreInfo(_ request: GetInstanceStoreInfoRequest) async throws -> GetInstanceStoreInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInstanceStoreInfoWithOptions(request as! GetInstanceStoreInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceTwoFactorWithOptions(_ request: GetInstanceTwoFactorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceTwoFactorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceTwoFactor",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceTwoFactorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceTwoFactor(_ request: GetInstanceTwoFactorRequest) async throws -> GetInstanceTwoFactorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInstanceTwoFactorWithOptions(request as! GetInstanceTwoFactorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNetworkDomainWithOptions(_ request: GetNetworkDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNetworkDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkProxyState)) {
            query["CheckProxyState"] = request.checkProxyState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainId)) {
            query["NetworkDomainId"] = request.networkDomainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNetworkDomain",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNetworkDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNetworkDomain(_ request: GetNetworkDomainRequest) async throws -> GetNetworkDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNetworkDomainWithOptions(request as! GetNetworkDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPolicyWithOptions(_ request: GetPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPolicy",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPolicy(_ request: GetPolicyRequest) async throws -> GetPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPolicyWithOptions(request as! GetPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPolicyAssetScopeWithOptions(_ request: GetPolicyAssetScopeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPolicyAssetScopeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPolicyAssetScope",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPolicyAssetScopeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPolicyAssetScope(_ request: GetPolicyAssetScopeRequest) async throws -> GetPolicyAssetScopeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPolicyAssetScopeWithOptions(request as! GetPolicyAssetScopeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPolicyUserScopeWithOptions(_ request: GetPolicyUserScopeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPolicyUserScopeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPolicyUserScope",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPolicyUserScopeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPolicyUserScope(_ request: GetPolicyUserScopeRequest) async throws -> GetPolicyUserScopeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPolicyUserScopeWithOptions(request as! GetPolicyUserScopeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuleWithOptions(_ request: GetRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRule",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRule(_ request: GetRuleRequest) async throws -> GetRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRuleWithOptions(request as! GetRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserWithOptions(_ request: GetUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUser(_ request: GetUserRequest) async throws -> GetUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserWithOptions(request as! GetUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserGroupWithOptions(_ request: GetUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserGroup(_ request: GetUserGroupRequest) async throws -> GetUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserGroupWithOptions(request as! GetUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApproveCommandsWithOptions(_ request: ListApproveCommandsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApproveCommandsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApproveCommands",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApproveCommandsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApproveCommands(_ request: ListApproveCommandsRequest) async throws -> ListApproveCommandsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listApproveCommandsWithOptions(request as! ListApproveCommandsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabaseAccountsWithOptions(_ request: ListDatabaseAccountsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatabaseAccountsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseAccountName)) {
            query["DatabaseAccountName"] = request.databaseAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseId)) {
            query["DatabaseId"] = request.databaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatabaseAccounts",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatabaseAccountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabaseAccounts(_ request: ListDatabaseAccountsRequest) async throws -> ListDatabaseAccountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDatabaseAccountsWithOptions(request as! ListDatabaseAccountsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabaseAccountsForUserWithOptions(_ request: ListDatabaseAccountsForUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatabaseAccountsForUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseAccountName)) {
            query["DatabaseAccountName"] = request.databaseAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseId)) {
            query["DatabaseId"] = request.databaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatabaseAccountsForUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatabaseAccountsForUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabaseAccountsForUser(_ request: ListDatabaseAccountsForUserRequest) async throws -> ListDatabaseAccountsForUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDatabaseAccountsForUserWithOptions(request as! ListDatabaseAccountsForUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabaseAccountsForUserGroupWithOptions(_ request: ListDatabaseAccountsForUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatabaseAccountsForUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseAccountName)) {
            query["DatabaseAccountName"] = request.databaseAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseId)) {
            query["DatabaseId"] = request.databaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatabaseAccountsForUserGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatabaseAccountsForUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabaseAccountsForUserGroup(_ request: ListDatabaseAccountsForUserGroupRequest) async throws -> ListDatabaseAccountsForUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDatabaseAccountsForUserGroupWithOptions(request as! ListDatabaseAccountsForUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabasesWithOptions(_ request: ListDatabasesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatabasesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseType)) {
            query["DatabaseType"] = request.databaseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostGroupId)) {
            query["HostGroupId"] = request.hostGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainId)) {
            query["NetworkDomainId"] = request.networkDomainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatabases",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatabasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabases(_ request: ListDatabasesRequest) async throws -> ListDatabasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDatabasesWithOptions(request as! ListDatabasesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabasesForUserWithOptions(_ request: ListDatabasesForUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatabasesForUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseAddress)) {
            query["DatabaseAddress"] = request.databaseAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseType)) {
            query["DatabaseType"] = request.databaseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainId)) {
            query["NetworkDomainId"] = request.networkDomainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatabasesForUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatabasesForUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabasesForUser(_ request: ListDatabasesForUserRequest) async throws -> ListDatabasesForUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDatabasesForUserWithOptions(request as! ListDatabasesForUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabasesForUserGroupWithOptions(_ request: ListDatabasesForUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatabasesForUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseAddress)) {
            query["DatabaseAddress"] = request.databaseAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseType)) {
            query["DatabaseType"] = request.databaseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainId)) {
            query["NetworkDomainId"] = request.networkDomainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatabasesForUserGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatabasesForUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabasesForUserGroup(_ request: ListDatabasesForUserGroupRequest) async throws -> ListDatabasesForUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDatabasesForUserGroupWithOptions(request as! ListDatabasesForUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostAccountsWithOptions(_ request: ListHostAccountsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHostAccountsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAccountName)) {
            query["HostAccountName"] = request.hostAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostId)) {
            query["HostId"] = request.hostId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostIds)) {
            query["HostIds"] = request.hostIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocolName)) {
            query["ProtocolName"] = request.protocolName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHostAccounts",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHostAccountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostAccounts(_ request: ListHostAccountsRequest) async throws -> ListHostAccountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHostAccountsWithOptions(request as! ListHostAccountsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostAccountsForHostShareKeyWithOptions(_ request: ListHostAccountsForHostShareKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHostAccountsForHostShareKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostShareKeyId)) {
            query["HostShareKeyId"] = request.hostShareKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHostAccountsForHostShareKey",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHostAccountsForHostShareKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostAccountsForHostShareKey(_ request: ListHostAccountsForHostShareKeyRequest) async throws -> ListHostAccountsForHostShareKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHostAccountsForHostShareKeyWithOptions(request as! ListHostAccountsForHostShareKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostAccountsForUserWithOptions(_ request: ListHostAccountsForUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHostAccountsForUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAccountName)) {
            query["HostAccountName"] = request.hostAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostId)) {
            query["HostId"] = request.hostId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHostAccountsForUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHostAccountsForUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostAccountsForUser(_ request: ListHostAccountsForUserRequest) async throws -> ListHostAccountsForUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHostAccountsForUserWithOptions(request as! ListHostAccountsForUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostAccountsForUserGroupWithOptions(_ request: ListHostAccountsForUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHostAccountsForUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAccountName)) {
            query["HostAccountName"] = request.hostAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostId)) {
            query["HostId"] = request.hostId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHostAccountsForUserGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHostAccountsForUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostAccountsForUserGroup(_ request: ListHostAccountsForUserGroupRequest) async throws -> ListHostAccountsForUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHostAccountsForUserGroupWithOptions(request as! ListHostAccountsForUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostGroupAccountNamesForUserWithOptions(_ request: ListHostGroupAccountNamesForUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHostGroupAccountNamesForUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostGroupId)) {
            query["HostGroupId"] = request.hostGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHostGroupAccountNamesForUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHostGroupAccountNamesForUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostGroupAccountNamesForUser(_ request: ListHostGroupAccountNamesForUserRequest) async throws -> ListHostGroupAccountNamesForUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHostGroupAccountNamesForUserWithOptions(request as! ListHostGroupAccountNamesForUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostGroupAccountNamesForUserGroupWithOptions(_ request: ListHostGroupAccountNamesForUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHostGroupAccountNamesForUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostGroupId)) {
            query["HostGroupId"] = request.hostGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHostGroupAccountNamesForUserGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHostGroupAccountNamesForUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostGroupAccountNamesForUserGroup(_ request: ListHostGroupAccountNamesForUserGroupRequest) async throws -> ListHostGroupAccountNamesForUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHostGroupAccountNamesForUserGroupWithOptions(request as! ListHostGroupAccountNamesForUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostGroupsWithOptions(_ request: ListHostGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHostGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostGroupName)) {
            query["HostGroupName"] = request.hostGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHostGroups",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHostGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostGroups(_ request: ListHostGroupsRequest) async throws -> ListHostGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHostGroupsWithOptions(request as! ListHostGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostGroupsForUserWithOptions(_ request: ListHostGroupsForUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHostGroupsForUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostGroupName)) {
            query["HostGroupName"] = request.hostGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHostGroupsForUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHostGroupsForUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostGroupsForUser(_ request: ListHostGroupsForUserRequest) async throws -> ListHostGroupsForUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHostGroupsForUserWithOptions(request as! ListHostGroupsForUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostGroupsForUserGroupWithOptions(_ request: ListHostGroupsForUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHostGroupsForUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostGroupName)) {
            query["HostGroupName"] = request.hostGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHostGroupsForUserGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHostGroupsForUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostGroupsForUserGroup(_ request: ListHostGroupsForUserGroupRequest) async throws -> ListHostGroupsForUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHostGroupsForUserGroupWithOptions(request as! ListHostGroupsForUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostShareKeysWithOptions(_ request: ListHostShareKeysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHostShareKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHostShareKeys",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHostShareKeysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostShareKeys(_ request: ListHostShareKeysRequest) async throws -> ListHostShareKeysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHostShareKeysWithOptions(request as! ListHostShareKeysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostsWithOptions(_ request: ListHostsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHostsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAddress)) {
            query["HostAddress"] = request.hostAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostGroupId)) {
            query["HostGroupId"] = request.hostGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSType)) {
            query["OSType"] = request.OSType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceInstanceId)) {
            query["SourceInstanceId"] = request.sourceInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceInstanceState)) {
            query["SourceInstanceState"] = request.sourceInstanceState ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHosts",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHostsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHosts(_ request: ListHostsRequest) async throws -> ListHostsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHostsWithOptions(request as! ListHostsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostsForUserWithOptions(_ request: ListHostsForUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHostsForUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAddress)) {
            query["HostAddress"] = request.hostAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSType)) {
            query["OSType"] = request.OSType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHostsForUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHostsForUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostsForUser(_ request: ListHostsForUserRequest) async throws -> ListHostsForUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHostsForUserWithOptions(request as! ListHostsForUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostsForUserGroupWithOptions(_ request: ListHostsForUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHostsForUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAddress)) {
            query["HostAddress"] = request.hostAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSType)) {
            query["OSType"] = request.OSType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHostsForUserGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHostsForUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHostsForUserGroup(_ request: ListHostsForUserGroupRequest) async throws -> ListHostsForUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHostsForUserGroupWithOptions(request as! ListHostsForUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceRdMembersWithOptions(_ request: ListInstanceRdMembersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstanceRdMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstanceRdMembers",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstanceRdMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceRdMembers(_ request: ListInstanceRdMembersRequest) async throws -> ListInstanceRdMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInstanceRdMembersWithOptions(request as! ListInstanceRdMembersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNetworkDomainsWithOptions(_ request: ListNetworkDomainsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNetworkDomainsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainName)) {
            query["NetworkDomainName"] = request.networkDomainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainType)) {
            query["NetworkDomainType"] = request.networkDomainType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNetworkDomains",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNetworkDomainsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNetworkDomains(_ request: ListNetworkDomainsRequest) async throws -> ListNetworkDomainsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNetworkDomainsWithOptions(request as! ListNetworkDomainsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationDatabaseAccountsWithOptions(_ request: ListOperationDatabaseAccountsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOperationDatabaseAccountsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseAccountName)) {
            query["DatabaseAccountName"] = request.databaseAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseId)) {
            query["DatabaseId"] = request.databaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOperationDatabaseAccounts",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOperationDatabaseAccountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationDatabaseAccounts(_ request: ListOperationDatabaseAccountsRequest) async throws -> ListOperationDatabaseAccountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOperationDatabaseAccountsWithOptions(request as! ListOperationDatabaseAccountsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationDatabasesWithOptions(_ request: ListOperationDatabasesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOperationDatabasesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseAddress)) {
            query["DatabaseAddress"] = request.databaseAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseType)) {
            query["DatabaseType"] = request.databaseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceInstanceId)) {
            query["SourceInstanceId"] = request.sourceInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceInstanceState)) {
            query["SourceInstanceState"] = request.sourceInstanceState ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOperationDatabases",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOperationDatabasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationDatabases(_ request: ListOperationDatabasesRequest) async throws -> ListOperationDatabasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOperationDatabasesWithOptions(request as! ListOperationDatabasesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationHostAccountsWithOptions(_ request: ListOperationHostAccountsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOperationHostAccountsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAccountName)) {
            query["HostAccountName"] = request.hostAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostId)) {
            query["HostId"] = request.hostId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOperationHostAccounts",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOperationHostAccountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationHostAccounts(_ request: ListOperationHostAccountsRequest) async throws -> ListOperationHostAccountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOperationHostAccountsWithOptions(request as! ListOperationHostAccountsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationHostsWithOptions(_ request: ListOperationHostsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOperationHostsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAddress)) {
            query["HostAddress"] = request.hostAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSType)) {
            query["OSType"] = request.OSType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceInstanceId)) {
            query["SourceInstanceId"] = request.sourceInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceInstanceState)) {
            query["SourceInstanceState"] = request.sourceInstanceState ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOperationHosts",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOperationHostsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationHosts(_ request: ListOperationHostsRequest) async throws -> ListOperationHostsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOperationHostsWithOptions(request as! ListOperationHostsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationTicketsWithOptions(_ request: ListOperationTicketsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOperationTicketsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assetAddress)) {
            query["AssetAddress"] = request.assetAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOperationTickets",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOperationTicketsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOperationTickets(_ request: ListOperationTicketsRequest) async throws -> ListOperationTicketsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOperationTicketsWithOptions(request as! ListOperationTicketsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPoliciesWithOptions(_ request: ListPoliciesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPoliciesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            query["PolicyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPolicies",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPoliciesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPolicies(_ request: ListPoliciesRequest) async throws -> ListPoliciesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPoliciesWithOptions(request as! ListPoliciesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRulesWithOptions(_ request: ListRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleState)) {
            query["RuleState"] = request.ruleState ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRules",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRules(_ request: ListRulesRequest) async throws -> ListRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRulesWithOptions(request as! ListRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagKeysWithOptions(_ request: ListTagKeysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagKeys",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagKeysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagKeys(_ request: ListTagKeysRequest) async throws -> ListTagKeysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagKeysWithOptions(request as! ListTagKeysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ request: ListTagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResources(_ request: ListTagResourcesRequest) async throws -> ListTagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagResourcesWithOptions(request as! ListTagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGroupsWithOptions(_ request: ListUserGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupName)) {
            query["UserGroupName"] = request.userGroupName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserGroups",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGroups(_ request: ListUserGroupsRequest) async throws -> ListUserGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserGroupsWithOptions(request as! ListUserGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserPublicKeysWithOptions(_ request: ListUserPublicKeysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserPublicKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserPublicKeys",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserPublicKeysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserPublicKeys(_ request: ListUserPublicKeysRequest) async throws -> ListUserPublicKeysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserPublicKeysWithOptions(request as! ListUserPublicKeysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersWithOptions(_ request: ListUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            query["DisplayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceUserId)) {
            query["SourceUserId"] = request.sourceUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userState)) {
            query["UserState"] = request.userState ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUsers",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsers(_ request: ListUsersRequest) async throws -> ListUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUsersWithOptions(request as! ListUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lockUsersWithOptions(_ request: LockUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LockUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LockUsers",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LockUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lockUsers(_ request: LockUsersRequest) async throws -> LockUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await lockUsersWithOptions(request as! LockUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDatabaseWithOptions(_ request: ModifyDatabaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activeAddressType)) {
            query["ActiveAddressType"] = request.activeAddressType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseId)) {
            query["DatabaseId"] = request.databaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databasePort)) {
            query["DatabasePort"] = request.databasePort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databasePrivateAddress)) {
            query["DatabasePrivateAddress"] = request.databasePrivateAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databasePublicAddress)) {
            query["DatabasePublicAddress"] = request.databasePublicAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainId)) {
            query["NetworkDomainId"] = request.networkDomainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceInstanceId)) {
            query["SourceInstanceId"] = request.sourceInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDatabase",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDatabase(_ request: ModifyDatabaseRequest) async throws -> ModifyDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDatabaseWithOptions(request as! ModifyDatabaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDatabaseAccountWithOptions(_ request: ModifyDatabaseAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDatabaseAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseAccountId)) {
            query["DatabaseAccountId"] = request.databaseAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseAccountName)) {
            query["DatabaseAccountName"] = request.databaseAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseSchema)) {
            query["DatabaseSchema"] = request.databaseSchema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDatabaseAccount",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDatabaseAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDatabaseAccount(_ request: ModifyDatabaseAccountRequest) async throws -> ModifyDatabaseAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDatabaseAccountWithOptions(request as! ModifyDatabaseAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHostWithOptions(_ request: ModifyHostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHostResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostId)) {
            query["HostId"] = request.hostId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostPrivateAddress)) {
            query["HostPrivateAddress"] = request.hostPrivateAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostPublicAddress)) {
            query["HostPublicAddress"] = request.hostPublicAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainId)) {
            query["NetworkDomainId"] = request.networkDomainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSType)) {
            query["OSType"] = request.OSType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefKex)) {
            query["PrefKex"] = request.prefKex ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHost",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHost(_ request: ModifyHostRequest) async throws -> ModifyHostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHostWithOptions(request as! ModifyHostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHostAccountWithOptions(_ request: ModifyHostAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHostAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostAccountId)) {
            query["HostAccountId"] = request.hostAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostAccountName)) {
            query["HostAccountName"] = request.hostAccountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostShareKeyId)) {
            query["HostShareKeyId"] = request.hostShareKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passPhrase)) {
            query["PassPhrase"] = request.passPhrase ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateKey)) {
            query["PrivateKey"] = request.privateKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privilegeType)) {
            query["PrivilegeType"] = request.privilegeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rotationMode)) {
            query["RotationMode"] = request.rotationMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHostAccount",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHostAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHostAccount(_ request: ModifyHostAccountRequest) async throws -> ModifyHostAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHostAccountWithOptions(request as! ModifyHostAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHostGroupWithOptions(_ request: ModifyHostGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHostGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostGroupId)) {
            query["HostGroupId"] = request.hostGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostGroupName)) {
            query["HostGroupName"] = request.hostGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHostGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHostGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHostGroup(_ request: ModifyHostGroupRequest) async throws -> ModifyHostGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHostGroupWithOptions(request as! ModifyHostGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHostShareKeyWithOptions(_ request: ModifyHostShareKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHostShareKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostShareKeyId)) {
            query["HostShareKeyId"] = request.hostShareKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostShareKeyName)) {
            query["HostShareKeyName"] = request.hostShareKeyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passPhrase)) {
            query["PassPhrase"] = request.passPhrase ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.privateKey)) {
            query["PrivateKey"] = request.privateKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHostShareKey",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHostShareKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHostShareKey(_ request: ModifyHostShareKeyRequest) async throws -> ModifyHostShareKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHostShareKeyWithOptions(request as! ModifyHostShareKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHostsActiveAddressTypeWithOptions(_ request: ModifyHostsActiveAddressTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHostsActiveAddressTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activeAddressType)) {
            query["ActiveAddressType"] = request.activeAddressType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostIds)) {
            query["HostIds"] = request.hostIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHostsActiveAddressType",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHostsActiveAddressTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHostsActiveAddressType(_ request: ModifyHostsActiveAddressTypeRequest) async throws -> ModifyHostsActiveAddressTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHostsActiveAddressTypeWithOptions(request as! ModifyHostsActiveAddressTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHostsPortWithOptions(_ request: ModifyHostsPortRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHostsPortResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostIds)) {
            query["HostIds"] = request.hostIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocolName)) {
            query["ProtocolName"] = request.protocolName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHostsPort",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHostsPortResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHostsPort(_ request: ModifyHostsPortRequest) async throws -> ModifyHostsPortResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHostsPortWithOptions(request as! ModifyHostsPortRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceADAuthServerWithOptions(_ request: ModifyInstanceADAuthServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceADAuthServerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.account)) {
            query["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.baseDN)) {
            query["BaseDN"] = request.baseDN ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emailMapping)) {
            query["EmailMapping"] = request.emailMapping ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isSSL)) {
            query["IsSSL"] = request.isSSL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileMapping)) {
            query["MobileMapping"] = request.mobileMapping ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nameMapping)) {
            query["NameMapping"] = request.nameMapping ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.server)) {
            query["Server"] = request.server ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standbyServer)) {
            query["StandbyServer"] = request.standbyServer ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceADAuthServer",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceADAuthServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceADAuthServer(_ request: ModifyInstanceADAuthServerRequest) async throws -> ModifyInstanceADAuthServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceADAuthServerWithOptions(request as! ModifyInstanceADAuthServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceAttributeWithOptions(_ request: ModifyInstanceAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceAttribute",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceAttribute(_ request: ModifyInstanceAttributeRequest) async throws -> ModifyInstanceAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceAttributeWithOptions(request as! ModifyInstanceAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceLDAPAuthServerWithOptions(_ request: ModifyInstanceLDAPAuthServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceLDAPAuthServerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.account)) {
            query["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.baseDN)) {
            query["BaseDN"] = request.baseDN ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emailMapping)) {
            query["EmailMapping"] = request.emailMapping ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isSSL)) {
            query["IsSSL"] = request.isSSL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginNameMapping)) {
            query["LoginNameMapping"] = request.loginNameMapping ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileMapping)) {
            query["MobileMapping"] = request.mobileMapping ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nameMapping)) {
            query["NameMapping"] = request.nameMapping ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.server)) {
            query["Server"] = request.server ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standbyServer)) {
            query["StandbyServer"] = request.standbyServer ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceLDAPAuthServer",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceLDAPAuthServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceLDAPAuthServer(_ request: ModifyInstanceLDAPAuthServerRequest) async throws -> ModifyInstanceLDAPAuthServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceLDAPAuthServerWithOptions(request as! ModifyInstanceLDAPAuthServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceTwoFactorWithOptions(_ request: ModifyInstanceTwoFactorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceTwoFactorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enableTwoFactor)) {
            query["EnableTwoFactor"] = request.enableTwoFactor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skipTwoFactorTime)) {
            query["SkipTwoFactorTime"] = request.skipTwoFactorTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.twoFactorMethods)) {
            query["TwoFactorMethods"] = request.twoFactorMethods ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyInstanceTwoFactor",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceTwoFactorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceTwoFactor(_ request: ModifyInstanceTwoFactorRequest) async throws -> ModifyInstanceTwoFactorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceTwoFactorWithOptions(request as! ModifyInstanceTwoFactorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNetworkDomainWithOptions(_ request: ModifyNetworkDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNetworkDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainId)) {
            query["NetworkDomainId"] = request.networkDomainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainName)) {
            query["NetworkDomainName"] = request.networkDomainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainType)) {
            query["NetworkDomainType"] = request.networkDomainType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxies)) {
            query["Proxies"] = request.proxies ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNetworkDomain",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNetworkDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNetworkDomain(_ request: ModifyNetworkDomainRequest) async throws -> ModifyNetworkDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyNetworkDomainWithOptions(request as! ModifyNetworkDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPolicyWithOptions(_ request: ModifyPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            query["PolicyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            query["Priority"] = request.priority ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyPolicy",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPolicy(_ request: ModifyPolicyRequest) async throws -> ModifyPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyPolicyWithOptions(request as! ModifyPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyRuleWithOptions(_ request: ModifyRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databases)) {
            query["Databases"] = request.databases ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.effectiveEndTime)) {
            query["EffectiveEndTime"] = request.effectiveEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.effectiveStartTime)) {
            query["EffectiveStartTime"] = request.effectiveStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.hostGroups)) {
            query["HostGroups"] = request.hostGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hosts)) {
            query["Hosts"] = request.hosts ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupIds)) {
            query["UserGroupIds"] = request.userGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyRule",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyRule(_ request: ModifyRuleRequest) async throws -> ModifyRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyRuleWithOptions(request as! ModifyRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserWithOptions(_ request: ModifyUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            query["DisplayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectiveEndTime)) {
            query["EffectiveEndTime"] = request.effectiveEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.effectiveStartTime)) {
            query["EffectiveStartTime"] = request.effectiveStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.languageStatus)) {
            query["LanguageStatus"] = request.languageStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileCountryCode)) {
            query["MobileCountryCode"] = request.mobileCountryCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needResetPassword)) {
            query["NeedResetPassword"] = request.needResetPassword!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.twoFactorMethods)) {
            query["TwoFactorMethods"] = request.twoFactorMethods ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.twoFactorStatus)) {
            query["TwoFactorStatus"] = request.twoFactorStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyUser",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUser(_ request: ModifyUserRequest) async throws -> ModifyUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyUserWithOptions(request as! ModifyUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserGroupWithOptions(_ request: ModifyUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
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
            "action": "ModifyUserGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserGroup(_ request: ModifyUserGroupRequest) async throws -> ModifyUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyUserGroupWithOptions(request as! ModifyUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserPublicKeyWithOptions(_ request: ModifyUserPublicKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyUserPublicKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicKey)) {
            query["PublicKey"] = request.publicKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicKeyId)) {
            query["PublicKeyId"] = request.publicKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publicKeyName)) {
            query["PublicKeyName"] = request.publicKeyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyUserPublicKey",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyUserPublicKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserPublicKey(_ request: ModifyUserPublicKeyRequest) async throws -> ModifyUserPublicKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyUserPublicKeyWithOptions(request as! ModifyUserPublicKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveDatabasesToNetworkDomainWithOptions(_ request: MoveDatabasesToNetworkDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MoveDatabasesToNetworkDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseIds)) {
            query["DatabaseIds"] = request.databaseIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainId)) {
            query["NetworkDomainId"] = request.networkDomainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MoveDatabasesToNetworkDomain",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MoveDatabasesToNetworkDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveDatabasesToNetworkDomain(_ request: MoveDatabasesToNetworkDomainRequest) async throws -> MoveDatabasesToNetworkDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await moveDatabasesToNetworkDomainWithOptions(request as! MoveDatabasesToNetworkDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveHostsToNetworkDomainWithOptions(_ request: MoveHostsToNetworkDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MoveHostsToNetworkDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostIds)) {
            query["HostIds"] = request.hostIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkDomainId)) {
            query["NetworkDomainId"] = request.networkDomainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MoveHostsToNetworkDomain",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MoveHostsToNetworkDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveHostsToNetworkDomain(_ request: MoveHostsToNetworkDomainRequest) async throws -> MoveHostsToNetworkDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await moveHostsToNetworkDomainWithOptions(request as! MoveHostsToNetworkDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveResourceGroupWithOptions(_ request: MoveResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MoveResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MoveResourceGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MoveResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func moveResourceGroup(_ request: MoveResourceGroupRequest) async throws -> MoveResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await moveResourceGroupWithOptions(request as! MoveResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rejectApproveCommandWithOptions(_ request: RejectApproveCommandRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RejectApproveCommandResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commandId)) {
            query["CommandId"] = request.commandId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RejectApproveCommand",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RejectApproveCommandResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rejectApproveCommand(_ request: RejectApproveCommandRequest) async throws -> RejectApproveCommandResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rejectApproveCommandWithOptions(request as! RejectApproveCommandRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rejectOperationTicketWithOptions(_ request: RejectOperationTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RejectOperationTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationTicketId)) {
            query["OperationTicketId"] = request.operationTicketId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RejectOperationTicket",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RejectOperationTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rejectOperationTicket(_ request: RejectOperationTicketRequest) async throws -> RejectOperationTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rejectOperationTicketWithOptions(request as! RejectOperationTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeDatabasesFromGroupWithOptions(_ request: RemoveDatabasesFromGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveDatabasesFromGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseIds)) {
            query["DatabaseIds"] = request.databaseIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hostGroupId)) {
            query["HostGroupId"] = request.hostGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveDatabasesFromGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveDatabasesFromGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeDatabasesFromGroup(_ request: RemoveDatabasesFromGroupRequest) async throws -> RemoveDatabasesFromGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeDatabasesFromGroupWithOptions(request as! RemoveDatabasesFromGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeHostsFromGroupWithOptions(_ request: RemoveHostsFromGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveHostsFromGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hostGroupId)) {
            query["HostGroupId"] = request.hostGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostIds)) {
            query["HostIds"] = request.hostIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveHostsFromGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveHostsFromGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeHostsFromGroup(_ request: RemoveHostsFromGroupRequest) async throws -> RemoveHostsFromGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeHostsFromGroupWithOptions(request as! RemoveHostsFromGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeInstanceRdMemberWithOptions(_ request: RemoveInstanceRdMemberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveInstanceRdMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberId)) {
            query["MemberId"] = request.memberId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveInstanceRdMember",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveInstanceRdMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeInstanceRdMember(_ request: RemoveInstanceRdMemberRequest) async throws -> RemoveInstanceRdMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeInstanceRdMemberWithOptions(request as! RemoveInstanceRdMemberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUsersFromGroupWithOptions(_ request: RemoveUsersFromGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveUsersFromGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            query["UserGroupId"] = request.userGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveUsersFromGroup",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveUsersFromGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUsersFromGroup(_ request: RemoveUsersFromGroupRequest) async throws -> RemoveUsersFromGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeUsersFromGroupWithOptions(request as! RemoveUsersFromGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewAssetOperationTokenWithOptions(_ request: RenewAssetOperationTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewAssetOperationTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenId)) {
            query["TokenId"] = request.tokenId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewAssetOperationToken",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewAssetOperationTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewAssetOperationToken(_ request: RenewAssetOperationTokenRequest) async throws -> RenewAssetOperationTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewAssetOperationTokenWithOptions(request as! RenewAssetOperationTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetHostAccountCredentialWithOptions(_ request: ResetHostAccountCredentialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetHostAccountCredentialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialType)) {
            query["CredentialType"] = request.credentialType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostAccountId)) {
            query["HostAccountId"] = request.hostAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetHostAccountCredential",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetHostAccountCredentialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetHostAccountCredential(_ request: ResetHostAccountCredentialRequest) async throws -> ResetHostAccountCredentialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetHostAccountCredentialWithOptions(request as! ResetHostAccountCredentialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setPolicyAccessTimeRangeConfigWithOptions(_ tmpReq: SetPolicyAccessTimeRangeConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetPolicyAccessTimeRangeConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SetPolicyAccessTimeRangeConfigShrinkRequest = SetPolicyAccessTimeRangeConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.accessTimeRangeConfig)) {
            request.accessTimeRangeConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.accessTimeRangeConfig, "AccessTimeRangeConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessTimeRangeConfigShrink)) {
            query["AccessTimeRangeConfig"] = request.accessTimeRangeConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetPolicyAccessTimeRangeConfig",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetPolicyAccessTimeRangeConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setPolicyAccessTimeRangeConfig(_ request: SetPolicyAccessTimeRangeConfigRequest) async throws -> SetPolicyAccessTimeRangeConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setPolicyAccessTimeRangeConfigWithOptions(request as! SetPolicyAccessTimeRangeConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setPolicyApprovalConfigWithOptions(_ tmpReq: SetPolicyApprovalConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetPolicyApprovalConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SetPolicyApprovalConfigShrinkRequest = SetPolicyApprovalConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.approvalConfig)) {
            request.approvalConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.approvalConfig, "ApprovalConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.approvalConfigShrink)) {
            query["ApprovalConfig"] = request.approvalConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetPolicyApprovalConfig",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetPolicyApprovalConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setPolicyApprovalConfig(_ request: SetPolicyApprovalConfigRequest) async throws -> SetPolicyApprovalConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setPolicyApprovalConfigWithOptions(request as! SetPolicyApprovalConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setPolicyAssetScopeWithOptions(_ request: SetPolicyAssetScopeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetPolicyAssetScopeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databases)) {
            query["Databases"] = request.databases ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hostGroups)) {
            query["HostGroups"] = request.hostGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hosts)) {
            query["Hosts"] = request.hosts ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scopeType)) {
            query["ScopeType"] = request.scopeType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetPolicyAssetScope",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetPolicyAssetScopeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setPolicyAssetScope(_ request: SetPolicyAssetScopeRequest) async throws -> SetPolicyAssetScopeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setPolicyAssetScopeWithOptions(request as! SetPolicyAssetScopeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setPolicyCommandConfigWithOptions(_ tmpReq: SetPolicyCommandConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetPolicyCommandConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SetPolicyCommandConfigShrinkRequest = SetPolicyCommandConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.commandConfig)) {
            request.commandConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.commandConfig, "CommandConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commandConfigShrink)) {
            query["CommandConfig"] = request.commandConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetPolicyCommandConfig",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetPolicyCommandConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setPolicyCommandConfig(_ request: SetPolicyCommandConfigRequest) async throws -> SetPolicyCommandConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setPolicyCommandConfigWithOptions(request as! SetPolicyCommandConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setPolicyIPAclConfigWithOptions(_ tmpReq: SetPolicyIPAclConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetPolicyIPAclConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SetPolicyIPAclConfigShrinkRequest = SetPolicyIPAclConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.IPAclConfig)) {
            request.IPAclConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.IPAclConfig, "IPAclConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.IPAclConfigShrink)) {
            query["IPAclConfig"] = request.IPAclConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetPolicyIPAclConfig",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetPolicyIPAclConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setPolicyIPAclConfig(_ request: SetPolicyIPAclConfigRequest) async throws -> SetPolicyIPAclConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setPolicyIPAclConfigWithOptions(request as! SetPolicyIPAclConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setPolicyProtocolConfigWithOptions(_ tmpReq: SetPolicyProtocolConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetPolicyProtocolConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SetPolicyProtocolConfigShrinkRequest = SetPolicyProtocolConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.protocolConfig)) {
            request.protocolConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.protocolConfig, "ProtocolConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocolConfigShrink)) {
            query["ProtocolConfig"] = request.protocolConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetPolicyProtocolConfig",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetPolicyProtocolConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setPolicyProtocolConfig(_ request: SetPolicyProtocolConfigRequest) async throws -> SetPolicyProtocolConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setPolicyProtocolConfigWithOptions(request as! SetPolicyProtocolConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setPolicyUserScopeWithOptions(_ request: SetPolicyUserScopeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetPolicyUserScopeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scopeType)) {
            query["ScopeType"] = request.scopeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupIds)) {
            query["UserGroupIds"] = request.userGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetPolicyUserScope",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetPolicyUserScopeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setPolicyUserScope(_ request: SetPolicyUserScopeRequest) async throws -> SetPolicyUserScopeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setPolicyUserScopeWithOptions(request as! SetPolicyUserScopeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startInstanceWithOptions(_ request: StartInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientSecurityGroupIds)) {
            query["ClientSecurityGroupIds"] = request.clientSecurityGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.enablePortalPrivateAccess)) {
            query["EnablePortalPrivateAccess"] = request.enablePortalPrivateAccess!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupIds)) {
            query["SecurityGroupIds"] = request.securityGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.slaveVswitchId)) {
            query["SlaveVswitchId"] = request.slaveVswitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vswitchId)) {
            query["VswitchId"] = request.vswitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartInstance",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startInstance(_ request: StartInstanceRequest) async throws -> StartInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startInstanceWithOptions(request as! StartInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResources(_ request: TagResourcesRequest) async throws -> TagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await tagResourcesWithOptions(request as! TagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unlockUsersWithOptions(_ request: UnlockUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnlockUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            query["UserIds"] = request.userIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnlockUsers",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnlockUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unlockUsers(_ request: UnlockUsersRequest) async throws -> UnlockUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unlockUsersWithOptions(request as! UnlockUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResources(_ request: UntagResourcesRequest) async throws -> UntagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await untagResourcesWithOptions(request as! UntagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyInstanceADAuthServerWithOptions(_ request: VerifyInstanceADAuthServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyInstanceADAuthServerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.account)) {
            query["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.baseDN)) {
            query["BaseDN"] = request.baseDN ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isSSL)) {
            query["IsSSL"] = request.isSSL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.server)) {
            query["Server"] = request.server ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standbyServer)) {
            query["StandbyServer"] = request.standbyServer ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifyInstanceADAuthServer",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyInstanceADAuthServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyInstanceADAuthServer(_ request: VerifyInstanceADAuthServerRequest) async throws -> VerifyInstanceADAuthServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifyInstanceADAuthServerWithOptions(request as! VerifyInstanceADAuthServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyInstanceLDAPAuthServerWithOptions(_ request: VerifyInstanceLDAPAuthServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyInstanceLDAPAuthServerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.account)) {
            query["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.baseDN)) {
            query["BaseDN"] = request.baseDN ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isSSL)) {
            query["IsSSL"] = request.isSSL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.server)) {
            query["Server"] = request.server ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standbyServer)) {
            query["StandbyServer"] = request.standbyServer ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifyInstanceLDAPAuthServer",
            "version": "2019-12-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyInstanceLDAPAuthServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyInstanceLDAPAuthServer(_ request: VerifyInstanceLDAPAuthServerRequest) async throws -> VerifyInstanceLDAPAuthServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifyInstanceLDAPAuthServerWithOptions(request as! VerifyInstanceLDAPAuthServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
