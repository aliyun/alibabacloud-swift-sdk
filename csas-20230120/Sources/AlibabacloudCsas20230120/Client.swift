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
        self._endpoint = try getEndpoint("csas", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func attachApplication2ConnectorWithOptions(_ tmpReq: AttachApplication2ConnectorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachApplication2ConnectorResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AttachApplication2ConnectorShrinkRequest = AttachApplication2ConnectorShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.applicationIds)) {
            request.applicationIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.applicationIds, "ApplicationIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationIdsShrink)) {
            body["ApplicationIds"] = request.applicationIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectorId)) {
            body["ConnectorId"] = request.connectorId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachApplication2Connector",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachApplication2ConnectorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachApplication2Connector(_ request: AttachApplication2ConnectorRequest) async throws -> AttachApplication2ConnectorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachApplication2ConnectorWithOptions(request as! AttachApplication2ConnectorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDynamicRouteWithOptions(_ request: CreateDynamicRouteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDynamicRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationIds)) {
            bodyFlat["ApplicationIds"] = request.applicationIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.applicationType)) {
            body["ApplicationType"] = request.applicationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dynamicRouteType)) {
            body["DynamicRouteType"] = request.dynamicRouteType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextHop)) {
            body["NextHop"] = request.nextHop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.regionIds)) {
            bodyFlat["RegionIds"] = request.regionIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagIds)) {
            bodyFlat["TagIds"] = request.tagIds ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDynamicRoute",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDynamicRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDynamicRoute(_ request: CreateDynamicRouteRequest) async throws -> CreateDynamicRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDynamicRouteWithOptions(request as! CreateDynamicRouteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPrivateAccessApplicationWithOptions(_ request: CreatePrivateAccessApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePrivateAccessApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addresses)) {
            bodyFlat["Addresses"] = request.addresses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.portRanges)) {
            bodyFlat["PortRanges"] = request.portRanges ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["Protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagIds)) {
            bodyFlat["TagIds"] = request.tagIds ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePrivateAccessApplication",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePrivateAccessApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPrivateAccessApplication(_ request: CreatePrivateAccessApplicationRequest) async throws -> CreatePrivateAccessApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPrivateAccessApplicationWithOptions(request as! CreatePrivateAccessApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPrivateAccessPolicyWithOptions(_ request: CreatePrivateAccessPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePrivateAccessPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationIds)) {
            bodyFlat["ApplicationIds"] = request.applicationIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.applicationType)) {
            body["ApplicationType"] = request.applicationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customUserAttributes)) {
            bodyFlat["CustomUserAttributes"] = request.customUserAttributes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyAction)) {
            body["PolicyAction"] = request.policyAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagIds)) {
            bodyFlat["TagIds"] = request.tagIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userGroupIds)) {
            bodyFlat["UserGroupIds"] = request.userGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userGroupMode)) {
            body["UserGroupMode"] = request.userGroupMode ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePrivateAccessPolicy",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePrivateAccessPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPrivateAccessPolicy(_ request: CreatePrivateAccessPolicyRequest) async throws -> CreatePrivateAccessPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPrivateAccessPolicyWithOptions(request as! CreatePrivateAccessPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPrivateAccessTagWithOptions(_ request: CreatePrivateAccessTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePrivateAccessTagResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePrivateAccessTag",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePrivateAccessTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPrivateAccessTag(_ request: CreatePrivateAccessTagRequest) async throws -> CreatePrivateAccessTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPrivateAccessTagWithOptions(request as! CreatePrivateAccessTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserGroupWithOptions(_ request: CreateUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attributes)) {
            bodyFlat["Attributes"] = request.attributes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUserGroup",
            "version": "2023-01-20",
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
    public func deleteDynamicRouteWithOptions(_ request: DeleteDynamicRouteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDynamicRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dynamicRouteId)) {
            query["DynamicRouteId"] = request.dynamicRouteId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDynamicRoute",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDynamicRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDynamicRoute(_ request: DeleteDynamicRouteRequest) async throws -> DeleteDynamicRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDynamicRouteWithOptions(request as! DeleteDynamicRouteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePrivateAccessApplicationWithOptions(_ request: DeletePrivateAccessApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePrivateAccessApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationId)) {
            body["ApplicationId"] = request.applicationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePrivateAccessApplication",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePrivateAccessApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePrivateAccessApplication(_ request: DeletePrivateAccessApplicationRequest) async throws -> DeletePrivateAccessApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePrivateAccessApplicationWithOptions(request as! DeletePrivateAccessApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePrivateAccessPolicyWithOptions(_ request: DeletePrivateAccessPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePrivateAccessPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            body["PolicyId"] = request.policyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePrivateAccessPolicy",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePrivateAccessPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePrivateAccessPolicy(_ request: DeletePrivateAccessPolicyRequest) async throws -> DeletePrivateAccessPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePrivateAccessPolicyWithOptions(request as! DeletePrivateAccessPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePrivateAccessTagWithOptions(_ request: DeletePrivateAccessTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePrivateAccessTagResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagId)) {
            body["TagId"] = request.tagId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePrivateAccessTag",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePrivateAccessTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePrivateAccessTag(_ request: DeletePrivateAccessTagRequest) async throws -> DeletePrivateAccessTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePrivateAccessTagWithOptions(request as! DeletePrivateAccessTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserGroupWithOptions(_ request: DeleteUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            body["UserGroupId"] = request.userGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserGroup",
            "version": "2023-01-20",
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
    public func detachApplication2ConnectorWithOptions(_ tmpReq: DetachApplication2ConnectorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachApplication2ConnectorResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DetachApplication2ConnectorShrinkRequest = DetachApplication2ConnectorShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.applicationIds)) {
            request.applicationIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.applicationIds, "ApplicationIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationIdsShrink)) {
            body["ApplicationIds"] = request.applicationIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectorId)) {
            body["ConnectorId"] = request.connectorId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachApplication2Connector",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachApplication2ConnectorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachApplication2Connector(_ request: DetachApplication2ConnectorRequest) async throws -> DetachApplication2ConnectorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachApplication2ConnectorWithOptions(request as! DetachApplication2ConnectorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDynamicRouteWithOptions(_ request: GetDynamicRouteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDynamicRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDynamicRoute",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDynamicRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDynamicRoute(_ request: GetDynamicRouteRequest) async throws -> GetDynamicRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDynamicRouteWithOptions(request as! GetDynamicRouteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPrivateAccessApplicationWithOptions(_ request: GetPrivateAccessApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPrivateAccessApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPrivateAccessApplication",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPrivateAccessApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPrivateAccessApplication(_ request: GetPrivateAccessApplicationRequest) async throws -> GetPrivateAccessApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPrivateAccessApplicationWithOptions(request as! GetPrivateAccessApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPrivateAccessPolicyWithOptions(_ request: GetPrivateAccessPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPrivateAccessPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPrivateAccessPolicy",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPrivateAccessPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPrivateAccessPolicy(_ request: GetPrivateAccessPolicyRequest) async throws -> GetPrivateAccessPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPrivateAccessPolicyWithOptions(request as! GetPrivateAccessPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserGroupWithOptions(_ request: GetUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserGroup",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
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
    public func listApplicationsForPrivateAccessPolicyWithOptions(_ request: ListApplicationsForPrivateAccessPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApplicationsForPrivateAccessPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApplicationsForPrivateAccessPolicy",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApplicationsForPrivateAccessPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationsForPrivateAccessPolicy(_ request: ListApplicationsForPrivateAccessPolicyRequest) async throws -> ListApplicationsForPrivateAccessPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listApplicationsForPrivateAccessPolicyWithOptions(request as! ListApplicationsForPrivateAccessPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationsForPrivateAccessTagWithOptions(_ request: ListApplicationsForPrivateAccessTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApplicationsForPrivateAccessTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApplicationsForPrivateAccessTag",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApplicationsForPrivateAccessTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApplicationsForPrivateAccessTag(_ request: ListApplicationsForPrivateAccessTagRequest) async throws -> ListApplicationsForPrivateAccessTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listApplicationsForPrivateAccessTagWithOptions(request as! ListApplicationsForPrivateAccessTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConnectorsWithOptions(_ request: ListConnectorsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConnectorsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConnectors",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConnectorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConnectors(_ request: ListConnectorsRequest) async throws -> ListConnectorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listConnectorsWithOptions(request as! ListConnectorsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDynamicRouteRegionsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListDynamicRouteRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDynamicRouteRegions",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDynamicRouteRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDynamicRouteRegions() async throws -> ListDynamicRouteRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDynamicRouteRegionsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDynamicRoutesWithOptions(_ request: ListDynamicRoutesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDynamicRoutesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDynamicRoutes",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDynamicRoutesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDynamicRoutes(_ request: ListDynamicRoutesRequest) async throws -> ListDynamicRoutesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDynamicRoutesWithOptions(request as! ListDynamicRoutesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPolicesForPrivateAccessApplicationWithOptions(_ request: ListPolicesForPrivateAccessApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPolicesForPrivateAccessApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPolicesForPrivateAccessApplication",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPolicesForPrivateAccessApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPolicesForPrivateAccessApplication(_ request: ListPolicesForPrivateAccessApplicationRequest) async throws -> ListPolicesForPrivateAccessApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPolicesForPrivateAccessApplicationWithOptions(request as! ListPolicesForPrivateAccessApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPolicesForPrivateAccessTagWithOptions(_ request: ListPolicesForPrivateAccessTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPolicesForPrivateAccessTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPolicesForPrivateAccessTag",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPolicesForPrivateAccessTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPolicesForPrivateAccessTag(_ request: ListPolicesForPrivateAccessTagRequest) async throws -> ListPolicesForPrivateAccessTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPolicesForPrivateAccessTagWithOptions(request as! ListPolicesForPrivateAccessTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPolicesForUserGroupWithOptions(_ request: ListPolicesForUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPolicesForUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPolicesForUserGroup",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPolicesForUserGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPolicesForUserGroup(_ request: ListPolicesForUserGroupRequest) async throws -> ListPolicesForUserGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPolicesForUserGroupWithOptions(request as! ListPolicesForUserGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrivateAccessApplicationsWithOptions(_ request: ListPrivateAccessApplicationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPrivateAccessApplicationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPrivateAccessApplications",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPrivateAccessApplicationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrivateAccessApplications(_ request: ListPrivateAccessApplicationsRequest) async throws -> ListPrivateAccessApplicationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPrivateAccessApplicationsWithOptions(request as! ListPrivateAccessApplicationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrivateAccessApplicationsForDynamicRouteWithOptions(_ request: ListPrivateAccessApplicationsForDynamicRouteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPrivateAccessApplicationsForDynamicRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPrivateAccessApplicationsForDynamicRoute",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPrivateAccessApplicationsForDynamicRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrivateAccessApplicationsForDynamicRoute(_ request: ListPrivateAccessApplicationsForDynamicRouteRequest) async throws -> ListPrivateAccessApplicationsForDynamicRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPrivateAccessApplicationsForDynamicRouteWithOptions(request as! ListPrivateAccessApplicationsForDynamicRouteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrivateAccessPolicesWithOptions(_ request: ListPrivateAccessPolicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPrivateAccessPolicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPrivateAccessPolices",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPrivateAccessPolicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrivateAccessPolices(_ request: ListPrivateAccessPolicesRequest) async throws -> ListPrivateAccessPolicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPrivateAccessPolicesWithOptions(request as! ListPrivateAccessPolicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrivateAccessTagsWithOptions(_ request: ListPrivateAccessTagsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPrivateAccessTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPrivateAccessTags",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPrivateAccessTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrivateAccessTags(_ request: ListPrivateAccessTagsRequest) async throws -> ListPrivateAccessTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPrivateAccessTagsWithOptions(request as! ListPrivateAccessTagsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrivateAccessTagsForDynamicRouteWithOptions(_ request: ListPrivateAccessTagsForDynamicRouteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPrivateAccessTagsForDynamicRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPrivateAccessTagsForDynamicRoute",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPrivateAccessTagsForDynamicRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPrivateAccessTagsForDynamicRoute(_ request: ListPrivateAccessTagsForDynamicRouteRequest) async throws -> ListPrivateAccessTagsForDynamicRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPrivateAccessTagsForDynamicRouteWithOptions(request as! ListPrivateAccessTagsForDynamicRouteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagsForPrivateAccessApplicationWithOptions(_ request: ListTagsForPrivateAccessApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagsForPrivateAccessApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagsForPrivateAccessApplication",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagsForPrivateAccessApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagsForPrivateAccessApplication(_ request: ListTagsForPrivateAccessApplicationRequest) async throws -> ListTagsForPrivateAccessApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagsForPrivateAccessApplicationWithOptions(request as! ListTagsForPrivateAccessApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagsForPrivateAccessPolicyWithOptions(_ request: ListTagsForPrivateAccessPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagsForPrivateAccessPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagsForPrivateAccessPolicy",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagsForPrivateAccessPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagsForPrivateAccessPolicy(_ request: ListTagsForPrivateAccessPolicyRequest) async throws -> ListTagsForPrivateAccessPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagsForPrivateAccessPolicyWithOptions(request as! ListTagsForPrivateAccessPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGroupsWithOptions(_ request: ListUserGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserGroups",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
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
    public func listUserGroupsForPrivateAccessPolicyWithOptions(_ request: ListUserGroupsForPrivateAccessPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserGroupsForPrivateAccessPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserGroupsForPrivateAccessPolicy",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserGroupsForPrivateAccessPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGroupsForPrivateAccessPolicy(_ request: ListUserGroupsForPrivateAccessPolicyRequest) async throws -> ListUserGroupsForPrivateAccessPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserGroupsForPrivateAccessPolicyWithOptions(request as! ListUserGroupsForPrivateAccessPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDynamicRouteWithOptions(_ request: UpdateDynamicRouteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDynamicRouteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationIds)) {
            bodyFlat["ApplicationIds"] = request.applicationIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.applicationType)) {
            body["ApplicationType"] = request.applicationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dynamicRouteId)) {
            body["DynamicRouteId"] = request.dynamicRouteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dynamicRouteType)) {
            body["DynamicRouteType"] = request.dynamicRouteType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyType)) {
            body["ModifyType"] = request.modifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextHop)) {
            body["NextHop"] = request.nextHop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.regionIds)) {
            bodyFlat["RegionIds"] = request.regionIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagIds)) {
            bodyFlat["TagIds"] = request.tagIds ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDynamicRoute",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDynamicRouteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDynamicRoute(_ request: UpdateDynamicRouteRequest) async throws -> UpdateDynamicRouteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDynamicRouteWithOptions(request as! UpdateDynamicRouteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePrivateAccessApplicationWithOptions(_ request: UpdatePrivateAccessApplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePrivateAccessApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addresses)) {
            bodyFlat["Addresses"] = request.addresses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.applicationId)) {
            body["ApplicationId"] = request.applicationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyType)) {
            body["ModifyType"] = request.modifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.portRanges)) {
            bodyFlat["PortRanges"] = request.portRanges ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            body["Protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagIds)) {
            bodyFlat["TagIds"] = request.tagIds ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePrivateAccessApplication",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePrivateAccessApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePrivateAccessApplication(_ request: UpdatePrivateAccessApplicationRequest) async throws -> UpdatePrivateAccessApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePrivateAccessApplicationWithOptions(request as! UpdatePrivateAccessApplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePrivateAccessPolicyWithOptions(_ request: UpdatePrivateAccessPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePrivateAccessPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationIds)) {
            bodyFlat["ApplicationIds"] = request.applicationIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.applicationType)) {
            body["ApplicationType"] = request.applicationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customUserAttributes)) {
            bodyFlat["CustomUserAttributes"] = request.customUserAttributes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyType)) {
            body["ModifyType"] = request.modifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyAction)) {
            body["PolicyAction"] = request.policyAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            body["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagIds)) {
            bodyFlat["TagIds"] = request.tagIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userGroupIds)) {
            bodyFlat["UserGroupIds"] = request.userGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userGroupMode)) {
            body["UserGroupMode"] = request.userGroupMode ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePrivateAccessPolicy",
            "version": "2023-01-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePrivateAccessPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePrivateAccessPolicy(_ request: UpdatePrivateAccessPolicyRequest) async throws -> UpdatePrivateAccessPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePrivateAccessPolicyWithOptions(request as! UpdatePrivateAccessPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserGroupWithOptions(_ request: UpdateUserGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attributes)) {
            bodyFlat["Attributes"] = request.attributes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyType)) {
            body["ModifyType"] = request.modifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userGroupId)) {
            body["UserGroupId"] = request.userGroupId ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserGroup",
            "version": "2023-01-20",
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
}
