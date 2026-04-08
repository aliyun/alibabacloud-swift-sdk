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
}
