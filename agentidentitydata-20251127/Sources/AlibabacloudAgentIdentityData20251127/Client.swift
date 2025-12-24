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
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("agentidentitydata", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func assumeRoleForWorkloadIdentityWithOptions(_ request: AssumeRoleForWorkloadIdentityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssumeRoleForWorkloadIdentityResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.durationSeconds)) {
            body["DurationSeconds"] = request.durationSeconds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            body["Policy"] = request.policy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleSessionName)) {
            body["RoleSessionName"] = request.roleSessionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadAccessToken)) {
            body["WorkloadAccessToken"] = request.workloadAccessToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssumeRoleForWorkloadIdentity",
            "version": "2025-11-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doRPCRequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssumeRoleForWorkloadIdentityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assumeRoleForWorkloadIdentity(_ request: AssumeRoleForWorkloadIdentityRequest) async throws -> AssumeRoleForWorkloadIdentityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await assumeRoleForWorkloadIdentityWithOptions(request as! AssumeRoleForWorkloadIdentityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func completeResourceTokenAuthWithOptions(_ tmpReq: CompleteResourceTokenAuthRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CompleteResourceTokenAuthResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CompleteResourceTokenAuthShrinkRequest = CompleteResourceTokenAuthShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.userIdentifier)) {
            request.userIdentifierShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIdentifier, "UserIdentifier", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sessionURI)) {
            body["SessionURI"] = request.sessionURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdentifierShrink)) {
            body["UserIdentifier"] = request.userIdentifierShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CompleteResourceTokenAuth",
            "version": "2025-11-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CompleteResourceTokenAuthResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func completeResourceTokenAuth(_ request: CompleteResourceTokenAuthRequest) async throws -> CompleteResourceTokenAuthResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await completeResourceTokenAuthWithOptions(request as! CompleteResourceTokenAuthRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceAPIKeyWithOptions(_ request: GetResourceAPIKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceAPIKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceCredentialProviderName)) {
            body["ResourceCredentialProviderName"] = request.resourceCredentialProviderName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadAccessToken)) {
            body["WorkloadAccessToken"] = request.workloadAccessToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceAPIKey",
            "version": "2025-11-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceAPIKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceAPIKey(_ request: GetResourceAPIKeyRequest) async throws -> GetResourceAPIKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceAPIKeyWithOptions(request as! GetResourceAPIKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceOAuth2TokenWithOptions(_ tmpReq: GetResourceOAuth2TokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceOAuth2TokenResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetResourceOAuth2TokenShrinkRequest = GetResourceOAuth2TokenShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.customParameters)) {
            request.customParametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.customParameters, "CustomParameters", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.scopes)) {
            request.scopesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.scopes, "Scopes", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customParametersShrink)) {
            body["CustomParameters"] = request.customParametersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customState)) {
            body["CustomState"] = request.customState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceAuthentication)) {
            body["ForceAuthentication"] = request.forceAuthentication!;
        }
        if (!TeaUtils.Client.isUnset(request.OAuth2Flow)) {
            body["OAuth2Flow"] = request.OAuth2Flow ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceCredentialProviderName)) {
            body["ResourceCredentialProviderName"] = request.resourceCredentialProviderName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOAuth2ReturnURL)) {
            body["ResourceOAuth2ReturnURL"] = request.resourceOAuth2ReturnURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scopesShrink)) {
            body["Scopes"] = request.scopesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionURI)) {
            body["SessionURI"] = request.sessionURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadAccessToken)) {
            body["WorkloadAccessToken"] = request.workloadAccessToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceOAuth2Token",
            "version": "2025-11-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceOAuth2TokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceOAuth2Token(_ request: GetResourceOAuth2TokenRequest) async throws -> GetResourceOAuth2TokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceOAuth2TokenWithOptions(request as! GetResourceOAuth2TokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkloadAccessTokenWithOptions(_ request: GetWorkloadAccessTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkloadAccessTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workloadIdentityName)) {
            body["WorkloadIdentityName"] = request.workloadIdentityName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkloadAccessToken",
            "version": "2025-11-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkloadAccessTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkloadAccessToken(_ request: GetWorkloadAccessTokenRequest) async throws -> GetWorkloadAccessTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWorkloadAccessTokenWithOptions(request as! GetWorkloadAccessTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkloadAccessTokenForJWTWithOptions(_ request: GetWorkloadAccessTokenForJWTRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkloadAccessTokenForJWTResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userToken)) {
            body["UserToken"] = request.userToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadIdentityName)) {
            body["WorkloadIdentityName"] = request.workloadIdentityName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkloadAccessTokenForJWT",
            "version": "2025-11-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkloadAccessTokenForJWTResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkloadAccessTokenForJWT(_ request: GetWorkloadAccessTokenForJWTRequest) async throws -> GetWorkloadAccessTokenForJWTResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWorkloadAccessTokenForJWTWithOptions(request as! GetWorkloadAccessTokenForJWTRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkloadAccessTokenForUserIdWithOptions(_ request: GetWorkloadAccessTokenForUserIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkloadAccessTokenForUserIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadIdentityName)) {
            body["WorkloadIdentityName"] = request.workloadIdentityName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkloadAccessTokenForUserId",
            "version": "2025-11-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkloadAccessTokenForUserIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkloadAccessTokenForUserId(_ request: GetWorkloadAccessTokenForUserIdRequest) async throws -> GetWorkloadAccessTokenForUserIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWorkloadAccessTokenForUserIdWithOptions(request as! GetWorkloadAccessTokenForUserIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
