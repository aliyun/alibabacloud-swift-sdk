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
        self._endpoint = try getEndpoint("agentidentity", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createAPIKeyCredentialProviderWithOptions(_ request: CreateAPIKeyCredentialProviderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAPIKeyCredentialProviderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.APIKey)) {
            body["APIKey"] = request.APIKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.APIKeyCredentialProviderName)) {
            body["APIKeyCredentialProviderName"] = request.APIKeyCredentialProviderName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAPIKeyCredentialProvider",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAPIKeyCredentialProviderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAPIKeyCredentialProvider(_ request: CreateAPIKeyCredentialProviderRequest) async throws -> CreateAPIKeyCredentialProviderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAPIKeyCredentialProviderWithOptions(request as! CreateAPIKeyCredentialProviderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIdentityProviderWithOptions(_ tmpReq: CreateIdentityProviderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIdentityProviderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateIdentityProviderShrinkRequest = CreateIdentityProviderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.allowedAudience)) {
            request.allowedAudienceShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.allowedAudience, "AllowedAudience", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowedAudienceShrink)) {
            body["AllowedAudience"] = request.allowedAudienceShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.discoveryURL)) {
            body["DiscoveryURL"] = request.discoveryURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identityProviderName)) {
            body["IdentityProviderName"] = request.identityProviderName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIdentityProvider",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIdentityProviderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIdentityProvider(_ request: CreateIdentityProviderRequest) async throws -> CreateIdentityProviderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createIdentityProviderWithOptions(request as! CreateIdentityProviderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOAuth2CredentialProviderWithOptions(_ tmpReq: CreateOAuth2CredentialProviderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOAuth2CredentialProviderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateOAuth2CredentialProviderShrinkRequest = CreateOAuth2CredentialProviderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.OAuth2ProviderConfig)) {
            request.OAuth2ProviderConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.OAuth2ProviderConfig, "OAuth2ProviderConfig", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callbackURL)) {
            body["CallbackURL"] = request.callbackURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credentialProviderVendor)) {
            body["CredentialProviderVendor"] = request.credentialProviderVendor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OAuth2CredentialProviderName)) {
            body["OAuth2CredentialProviderName"] = request.OAuth2CredentialProviderName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OAuth2ProviderConfigShrink)) {
            body["OAuth2ProviderConfig"] = request.OAuth2ProviderConfigShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOAuth2CredentialProvider",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOAuth2CredentialProviderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOAuth2CredentialProvider(_ request: CreateOAuth2CredentialProviderRequest) async throws -> CreateOAuth2CredentialProviderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOAuth2CredentialProviderWithOptions(request as! CreateOAuth2CredentialProviderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkloadIdentityWithOptions(_ tmpReq: CreateWorkloadIdentityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWorkloadIdentityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateWorkloadIdentityShrinkRequest = CreateWorkloadIdentityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.allowedResourceOAuth2ReturnURLs)) {
            request.allowedResourceOAuth2ReturnURLsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.allowedResourceOAuth2ReturnURLs, "AllowedResourceOAuth2ReturnURLs", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowedResourceOAuth2ReturnURLsShrink)) {
            body["AllowedResourceOAuth2ReturnURLs"] = request.allowedResourceOAuth2ReturnURLsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identityProviderName)) {
            body["IdentityProviderName"] = request.identityProviderName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleArn)) {
            body["RoleArn"] = request.roleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadIdentityName)) {
            body["WorkloadIdentityName"] = request.workloadIdentityName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWorkloadIdentity",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWorkloadIdentityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWorkloadIdentity(_ request: CreateWorkloadIdentityRequest) async throws -> CreateWorkloadIdentityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createWorkloadIdentityWithOptions(request as! CreateWorkloadIdentityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAPIKeyCredentialProviderWithOptions(_ request: DeleteAPIKeyCredentialProviderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAPIKeyCredentialProviderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.APIKeyCredentialProviderName)) {
            body["APIKeyCredentialProviderName"] = request.APIKeyCredentialProviderName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAPIKeyCredentialProvider",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAPIKeyCredentialProviderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAPIKeyCredentialProvider(_ request: DeleteAPIKeyCredentialProviderRequest) async throws -> DeleteAPIKeyCredentialProviderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAPIKeyCredentialProviderWithOptions(request as! DeleteAPIKeyCredentialProviderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIdentityProviderWithOptions(_ request: DeleteIdentityProviderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIdentityProviderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identityProviderName)) {
            body["IdentityProviderName"] = request.identityProviderName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIdentityProvider",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIdentityProviderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIdentityProvider(_ request: DeleteIdentityProviderRequest) async throws -> DeleteIdentityProviderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteIdentityProviderWithOptions(request as! DeleteIdentityProviderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOAuth2CredentialProviderWithOptions(_ request: DeleteOAuth2CredentialProviderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteOAuth2CredentialProviderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.OAuth2CredentialProviderName)) {
            body["OAuth2CredentialProviderName"] = request.OAuth2CredentialProviderName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteOAuth2CredentialProvider",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteOAuth2CredentialProviderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOAuth2CredentialProvider(_ request: DeleteOAuth2CredentialProviderRequest) async throws -> DeleteOAuth2CredentialProviderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteOAuth2CredentialProviderWithOptions(request as! DeleteOAuth2CredentialProviderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkloadIdentityWithOptions(_ request: DeleteWorkloadIdentityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWorkloadIdentityResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workloadIdentityName)) {
            body["WorkloadIdentityName"] = request.workloadIdentityName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWorkloadIdentity",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWorkloadIdentityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWorkloadIdentity(_ request: DeleteWorkloadIdentityRequest) async throws -> DeleteWorkloadIdentityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteWorkloadIdentityWithOptions(request as! DeleteWorkloadIdentityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAPIKeyCredentialProviderWithOptions(_ request: GetAPIKeyCredentialProviderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAPIKeyCredentialProviderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.APIKeyCredentialProviderName)) {
            body["APIKeyCredentialProviderName"] = request.APIKeyCredentialProviderName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAPIKeyCredentialProvider",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAPIKeyCredentialProviderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAPIKeyCredentialProvider(_ request: GetAPIKeyCredentialProviderRequest) async throws -> GetAPIKeyCredentialProviderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAPIKeyCredentialProviderWithOptions(request as! GetAPIKeyCredentialProviderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIdentityProviderWithOptions(_ request: GetIdentityProviderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIdentityProviderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identityProviderName)) {
            body["IdentityProviderName"] = request.identityProviderName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIdentityProvider",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIdentityProviderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIdentityProvider(_ request: GetIdentityProviderRequest) async throws -> GetIdentityProviderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getIdentityProviderWithOptions(request as! GetIdentityProviderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOAuth2CredentialProviderWithOptions(_ request: GetOAuth2CredentialProviderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOAuth2CredentialProviderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.OAuth2CredentialProviderName)) {
            body["OAuth2CredentialProviderName"] = request.OAuth2CredentialProviderName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOAuth2CredentialProvider",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOAuth2CredentialProviderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOAuth2CredentialProvider(_ request: GetOAuth2CredentialProviderRequest) async throws -> GetOAuth2CredentialProviderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOAuth2CredentialProviderWithOptions(request as! GetOAuth2CredentialProviderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkloadIdentityWithOptions(_ request: GetWorkloadIdentityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWorkloadIdentityResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workloadIdentityName)) {
            body["WorkloadIdentityName"] = request.workloadIdentityName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWorkloadIdentity",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWorkloadIdentityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWorkloadIdentity(_ request: GetWorkloadIdentityRequest) async throws -> GetWorkloadIdentityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWorkloadIdentityWithOptions(request as! GetWorkloadIdentityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAPIKeyCredentialProvidersWithOptions(_ request: ListAPIKeyCredentialProvidersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAPIKeyCredentialProvidersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAPIKeyCredentialProviders",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAPIKeyCredentialProvidersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAPIKeyCredentialProviders(_ request: ListAPIKeyCredentialProvidersRequest) async throws -> ListAPIKeyCredentialProvidersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAPIKeyCredentialProvidersWithOptions(request as! ListAPIKeyCredentialProvidersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIdentityProvidersWithOptions(_ request: ListIdentityProvidersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIdentityProvidersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIdentityProviders",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIdentityProvidersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIdentityProviders(_ request: ListIdentityProvidersRequest) async throws -> ListIdentityProvidersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listIdentityProvidersWithOptions(request as! ListIdentityProvidersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOAuth2CredentialProvidersWithOptions(_ request: ListOAuth2CredentialProvidersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOAuth2CredentialProvidersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOAuth2CredentialProviders",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOAuth2CredentialProvidersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOAuth2CredentialProviders(_ request: ListOAuth2CredentialProvidersRequest) async throws -> ListOAuth2CredentialProvidersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOAuth2CredentialProvidersWithOptions(request as! ListOAuth2CredentialProvidersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkloadIdentitiesWithOptions(_ request: ListWorkloadIdentitiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWorkloadIdentitiesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWorkloadIdentities",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWorkloadIdentitiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWorkloadIdentities(_ request: ListWorkloadIdentitiesRequest) async throws -> ListWorkloadIdentitiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listWorkloadIdentitiesWithOptions(request as! ListWorkloadIdentitiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAPIKeyCredentialProviderWithOptions(_ request: UpdateAPIKeyCredentialProviderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAPIKeyCredentialProviderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.APIKey)) {
            body["APIKey"] = request.APIKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.APIKeyCredentialProviderName)) {
            body["APIKeyCredentialProviderName"] = request.APIKeyCredentialProviderName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAPIKeyCredentialProvider",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAPIKeyCredentialProviderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAPIKeyCredentialProvider(_ request: UpdateAPIKeyCredentialProviderRequest) async throws -> UpdateAPIKeyCredentialProviderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAPIKeyCredentialProviderWithOptions(request as! UpdateAPIKeyCredentialProviderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIdentityProviderWithOptions(_ tmpReq: UpdateIdentityProviderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateIdentityProviderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateIdentityProviderShrinkRequest = UpdateIdentityProviderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.allowedAudience)) {
            request.allowedAudienceShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.allowedAudience, "AllowedAudience", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowedAudienceShrink)) {
            body["AllowedAudience"] = request.allowedAudienceShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.discoveryURL)) {
            body["DiscoveryURL"] = request.discoveryURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identityProviderName)) {
            body["IdentityProviderName"] = request.identityProviderName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateIdentityProvider",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateIdentityProviderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIdentityProvider(_ request: UpdateIdentityProviderRequest) async throws -> UpdateIdentityProviderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateIdentityProviderWithOptions(request as! UpdateIdentityProviderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOAuth2CredentialProviderWithOptions(_ tmpReq: UpdateOAuth2CredentialProviderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateOAuth2CredentialProviderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateOAuth2CredentialProviderShrinkRequest = UpdateOAuth2CredentialProviderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.OAuth2ProviderConfig)) {
            request.OAuth2ProviderConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.OAuth2ProviderConfig, "OAuth2ProviderConfig", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callbackURL)) {
            body["CallbackURL"] = request.callbackURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credentialProviderVendor)) {
            body["CredentialProviderVendor"] = request.credentialProviderVendor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OAuth2CredentialProviderName)) {
            body["OAuth2CredentialProviderName"] = request.OAuth2CredentialProviderName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OAuth2ProviderConfigShrink)) {
            body["OAuth2ProviderConfig"] = request.OAuth2ProviderConfigShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateOAuth2CredentialProvider",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateOAuth2CredentialProviderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateOAuth2CredentialProvider(_ request: UpdateOAuth2CredentialProviderRequest) async throws -> UpdateOAuth2CredentialProviderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateOAuth2CredentialProviderWithOptions(request as! UpdateOAuth2CredentialProviderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkloadIdentityWithOptions(_ tmpReq: UpdateWorkloadIdentityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWorkloadIdentityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateWorkloadIdentityShrinkRequest = UpdateWorkloadIdentityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.allowedResourceOAuth2ReturnURLs)) {
            request.allowedResourceOAuth2ReturnURLsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.allowedResourceOAuth2ReturnURLs, "AllowedResourceOAuth2ReturnURLs", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowedResourceOAuth2ReturnURLsShrink)) {
            body["AllowedResourceOAuth2ReturnURLs"] = request.allowedResourceOAuth2ReturnURLsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identityProviderName)) {
            body["IdentityProviderName"] = request.identityProviderName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleArn)) {
            body["RoleArn"] = request.roleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workloadIdentityName)) {
            body["WorkloadIdentityName"] = request.workloadIdentityName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWorkloadIdentity",
            "version": "2025-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWorkloadIdentityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWorkloadIdentity(_ request: UpdateWorkloadIdentityRequest) async throws -> UpdateWorkloadIdentityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateWorkloadIdentityWithOptions(request as! UpdateWorkloadIdentityRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
