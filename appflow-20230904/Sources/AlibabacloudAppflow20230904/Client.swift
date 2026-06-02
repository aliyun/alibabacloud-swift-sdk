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
        self._endpoint = try getEndpoint("appflow", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createFlowWithOptions(_ request: CreateFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.flowDesc)) {
            query["FlowDesc"] = request.flowDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            query["FlowId"] = request.flowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowName)) {
            query["FlowName"] = request.flowName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowTemplate)) {
            query["FlowTemplate"] = request.flowTemplate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.launchStatus)) {
            query["LaunchStatus"] = request.launchStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFlow",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlow(_ request: CreateFlowRequest) async throws -> CreateFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFlowWithOptions(request as! CreateFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserAuthConfigWithOptions(_ request: CreateUserAuthConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserAuthConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authConfig)) {
            query["AuthConfig"] = request.authConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authConfigName)) {
            query["AuthConfigName"] = request.authConfigName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectorId)) {
            query["ConnectorId"] = request.connectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectorVersion)) {
            query["ConnectorVersion"] = request.connectorVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUserAuthConfig",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserAuthConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserAuthConfig(_ request: CreateUserAuthConfigRequest) async throws -> CreateUserAuthConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createUserAuthConfigWithOptions(request as! CreateUserAuthConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlowWithOptions(_ request: DeleteFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            query["FlowId"] = request.flowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowVersion)) {
            query["FlowVersion"] = request.flowVersion!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFlow",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlow(_ request: DeleteFlowRequest) async throws -> DeleteFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFlowWithOptions(request as! DeleteFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserAuthConfigWithOptions(_ request: DeleteUserAuthConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserAuthConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authConfigId)) {
            query["AuthConfigId"] = request.authConfigId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectorId)) {
            query["ConnectorId"] = request.connectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectorVersion)) {
            query["ConnectorVersion"] = request.connectorVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUserAuthConfig",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserAuthConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserAuthConfig(_ request: DeleteUserAuthConfigRequest) async throws -> DeleteUserAuthConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUserAuthConfigWithOptions(request as! DeleteUserAuthConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableFlowWithOptions(_ request: DisableFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            query["FlowId"] = request.flowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowVersion)) {
            query["FlowVersion"] = request.flowVersion!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableFlow",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableFlow(_ request: DisableFlowRequest) async throws -> DisableFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableFlowWithOptions(request as! DisableFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableFlowWithOptions(_ request: EnableFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            query["FlowId"] = request.flowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowVersion)) {
            query["FlowVersion"] = request.flowVersion!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableFlow",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableFlow(_ request: EnableFlowRequest) async throws -> EnableFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableFlowWithOptions(request as! EnableFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateUserSessionTokenWithOptions(_ request: GenerateUserSessionTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateUserSessionTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chatbotId)) {
            query["ChatbotId"] = request.chatbotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireSecond)) {
            query["ExpireSecond"] = request.expireSecond!;
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            query["ExtraInfo"] = request.extraInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.integrateId)) {
            query["IntegrateId"] = request.integrateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userAvatar)) {
            query["UserAvatar"] = request.userAvatar ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateUserSessionToken",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateUserSessionTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateUserSessionToken(_ request: GenerateUserSessionTokenRequest) async throws -> GenerateUserSessionTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateUserSessionTokenWithOptions(request as! GenerateUserSessionTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFlowWithOptions(_ request: GetFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            query["FlowId"] = request.flowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowVersion)) {
            query["FlowVersion"] = request.flowVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFlow",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFlow(_ request: GetFlowRequest) async throws -> GetFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFlowWithOptions(request as! GetFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserAuthConfigWithOptions(_ request: GetUserAuthConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserAuthConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authConfigId)) {
            query["AuthConfigId"] = request.authConfigId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectorId)) {
            query["ConnectorId"] = request.connectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectorVersion)) {
            query["ConnectorVersion"] = request.connectorVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserAuthConfig",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserAuthConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserAuthConfig(_ request: GetUserAuthConfigRequest) async throws -> GetUserAuthConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserAuthConfigWithOptions(request as! GetUserAuthConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokeActionWithOptions(_ tmpReq: InvokeActionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvokeActionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InvokeActionShrinkRequest = InvokeActionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.authConfig)) {
            request.authConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.authConfig, "AuthConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.body)) {
            request.bodyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.body, "Body", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.headers)) {
            request.headersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.headers, "Headers", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.path)) {
            request.pathShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.path, "Path", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.query)) {
            request.queryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.query, "Query", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionId)) {
            query["ActionId"] = request.actionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.actionVersion)) {
            query["ActionVersion"] = request.actionVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authConfigShrink)) {
            query["AuthConfig"] = request.authConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bodyShrink)) {
            query["Body"] = request.bodyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectorId)) {
            query["ConnectorId"] = request.connectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectorVersion)) {
            query["ConnectorVersion"] = request.connectorVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.headersShrink)) {
            query["Headers"] = request.headersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pathShrink)) {
            query["Path"] = request.pathShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryShrink)) {
            query["Query"] = request.queryShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            query["Stream"] = request.stream!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvokeAction",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvokeActionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokeAction(_ request: InvokeActionRequest) async throws -> InvokeActionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await invokeActionWithOptions(request as! InvokeActionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func launchFlowWithOptions(_ request: LaunchFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LaunchFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.flowDesc)) {
            query["FlowDesc"] = request.flowDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            query["FlowId"] = request.flowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowName)) {
            query["FlowName"] = request.flowName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowTemplate)) {
            query["FlowTemplate"] = request.flowTemplate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowVersion)) {
            query["FlowVersion"] = request.flowVersion!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LaunchFlow",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LaunchFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func launchFlow(_ request: LaunchFlowRequest) async throws -> LaunchFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await launchFlowWithOptions(request as! LaunchFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserAuthConfigsWithOptions(_ request: ListUserAuthConfigsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserAuthConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectorId)) {
            query["ConnectorId"] = request.connectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectorVersion)) {
            query["ConnectorVersion"] = request.connectorVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserAuthConfigs",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserAuthConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserAuthConfigs(_ request: ListUserAuthConfigsRequest) async throws -> ListUserAuthConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserAuthConfigsWithOptions(request as! ListUserAuthConfigsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFlowWithOptions(_ request: UpdateFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.flowDesc)) {
            query["FlowDesc"] = request.flowDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            query["FlowId"] = request.flowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowName)) {
            query["FlowName"] = request.flowName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowTemplate)) {
            query["FlowTemplate"] = request.flowTemplate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowVersion)) {
            query["FlowVersion"] = request.flowVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFlow",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFlow(_ request: UpdateFlowRequest) async throws -> UpdateFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateFlowWithOptions(request as! UpdateFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserAuthConfigWithOptions(_ request: UpdateUserAuthConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserAuthConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authConfig)) {
            query["AuthConfig"] = request.authConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authConfigId)) {
            query["AuthConfigId"] = request.authConfigId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authConfigName)) {
            query["AuthConfigName"] = request.authConfigName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectorId)) {
            query["ConnectorId"] = request.connectorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectorVersion)) {
            query["ConnectorVersion"] = request.connectorVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserAuthConfig",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserAuthConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserAuthConfig(_ request: UpdateUserAuthConfigRequest) async throws -> UpdateUserAuthConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateUserAuthConfigWithOptions(request as! UpdateUserAuthConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func withdrawFlowWithOptions(_ request: WithdrawFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> WithdrawFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            query["FlowId"] = request.flowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowVersion)) {
            query["FlowVersion"] = request.flowVersion!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "WithdrawFlow",
            "version": "2023-09-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(WithdrawFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func withdrawFlow(_ request: WithdrawFlowRequest) async throws -> WithdrawFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await withdrawFlowWithOptions(request as! WithdrawFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
