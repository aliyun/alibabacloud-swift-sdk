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
        self._endpoint = try getEndpoint("cr", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func cancelRepoBuild(_ RepoNamespace: String, _ RepoName: String, _ BuildId: String) async throws -> CancelRepoBuildResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelRepoBuildWithOptions(RepoNamespace as! String, RepoName as! String, BuildId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelRepoBuildWithOptions(_ RepoNamespace: String, _ RepoName: String, _ BuildId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelRepoBuildResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelRepoBuild",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/build/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(BuildId) + "/cancel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelRepoBuildResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNamespace() async throws -> CreateNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createNamespaceWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNamespaceWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNamespaceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNamespace",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/namespace",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepo() async throws -> CreateRepoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRepoWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepo",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoBuildRule(_ RepoNamespace: String, _ RepoName: String) async throws -> CreateRepoBuildRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRepoBuildRuleWithOptions(RepoNamespace as! String, RepoName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoBuildRuleWithOptions(_ RepoNamespace: String, _ RepoName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepoBuildRuleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepoBuildRule",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/rules",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepoBuildRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoWebhook(_ RepoNamespace: String, _ RepoName: String) async throws -> CreateRepoWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRepoWebhookWithOptions(RepoNamespace as! String, RepoName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoWebhookWithOptions(_ RepoNamespace: String, _ RepoName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepoWebhookResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepoWebhook",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/webhooks",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepoWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserInfo() async throws -> CreateUserInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createUserInfoWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserInfoWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUserInfo",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/users",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteImage(_ RepoNamespace: String, _ RepoName: String, _ Tag: String) async throws -> DeleteImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteImageWithOptions(RepoNamespace as! String, RepoName as! String, Tag as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteImageWithOptions(_ RepoNamespace: String, _ RepoName: String, _ Tag: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteImageResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteImage",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/tags/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(Tag),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNamespace(_ Namespace: String) async throws -> DeleteNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteNamespaceWithOptions(Namespace as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNamespaceWithOptions(_ Namespace: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNamespaceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNamespace",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/namespace/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(Namespace),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepo(_ RepoNamespace: String, _ RepoName: String) async throws -> DeleteRepoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepoWithOptions(RepoNamespace as! String, RepoName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepoWithOptions(_ RepoNamespace: String, _ RepoName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepo",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepoBuildRule(_ RepoNamespace: String, _ RepoName: String, _ BuildRuleId: String) async throws -> DeleteRepoBuildRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepoBuildRuleWithOptions(RepoNamespace as! String, RepoName as! String, BuildRuleId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepoBuildRuleWithOptions(_ RepoNamespace: String, _ RepoName: String, _ BuildRuleId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepoBuildRuleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepoBuildRule",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/rules/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(BuildRuleId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepoBuildRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepoWebhook(_ RepoNamespace: String, _ RepoName: String, _ WebhookId: String) async throws -> DeleteRepoWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRepoWebhookWithOptions(RepoNamespace as! String, RepoName as! String, WebhookId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepoWebhookWithOptions(_ RepoNamespace: String, _ RepoName: String, _ WebhookId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepoWebhookResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepoWebhook",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/webhooks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(WebhookId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepoWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAuthorizationToken() async throws -> GetAuthorizationTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAuthorizationTokenWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAuthorizationTokenWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAuthorizationTokenResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAuthorizationToken",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/tokens",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAuthorizationTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageLayer(_ RepoNamespace: String, _ RepoName: String, _ Tag: String) async throws -> GetImageLayerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getImageLayerWithOptions(RepoNamespace as! String, RepoName as! String, Tag as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageLayerWithOptions(_ RepoNamespace: String, _ RepoName: String, _ Tag: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetImageLayerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetImageLayer",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/tags/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(Tag) + "/layers",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetImageLayerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageManifest(_ RepoNamespace: String, _ RepoName: String, _ Tag: String, _ request: GetImageManifestRequest) async throws -> GetImageManifestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getImageManifestWithOptions(RepoNamespace as! String, RepoName as! String, Tag as! String, request as! GetImageManifestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageManifestWithOptions(_ RepoNamespace: String, _ RepoName: String, _ Tag: String, _ request: GetImageManifestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetImageManifestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.schemaVersion)) {
            query["SchemaVersion"] = request.schemaVersion!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetImageManifest",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/tags/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(Tag) + "/manifest",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetImageManifestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNamespace(_ Namespace: String) async throws -> GetNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getNamespaceWithOptions(Namespace as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNamespaceWithOptions(_ Namespace: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNamespaceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNamespace",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/namespace/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(Namespace),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNamespaceList(_ request: GetNamespaceListRequest) async throws -> GetNamespaceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getNamespaceListWithOptions(request as! GetNamespaceListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNamespaceListWithOptions(_ request: GetNamespaceListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNamespaceListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorize)) {
            query["Authorize"] = request.authorize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNamespaceList",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/namespace",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNamespaceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegionList() async throws -> GetRegionListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRegionListWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegionListWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRegionListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRegionList",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/regions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRegionListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepo(_ RepoNamespace: String, _ RepoName: String) async throws -> GetRepoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepoWithOptions(RepoNamespace as! String, RepoName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoWithOptions(_ RepoNamespace: String, _ RepoName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepo",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoBuildList(_ RepoNamespace: String, _ RepoName: String, _ request: GetRepoBuildListRequest) async throws -> GetRepoBuildListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepoBuildListWithOptions(RepoNamespace as! String, RepoName as! String, request as! GetRepoBuildListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoBuildListWithOptions(_ RepoNamespace: String, _ RepoName: String, _ request: GetRepoBuildListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoBuildListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoBuildList",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/build",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoBuildListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoBuildRuleList(_ RepoNamespace: String, _ RepoName: String) async throws -> GetRepoBuildRuleListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepoBuildRuleListWithOptions(RepoNamespace as! String, RepoName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoBuildRuleListWithOptions(_ RepoNamespace: String, _ RepoName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoBuildRuleListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoBuildRuleList",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/rules",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoBuildRuleListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoBuildStatus(_ RepoNamespace: String, _ RepoName: String, _ BuildId: String) async throws -> GetRepoBuildStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepoBuildStatusWithOptions(RepoNamespace as! String, RepoName as! String, BuildId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoBuildStatusWithOptions(_ RepoNamespace: String, _ RepoName: String, _ BuildId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoBuildStatusResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoBuildStatus",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/build/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(BuildId) + "/status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoBuildStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoList(_ request: GetRepoListRequest) async throws -> GetRepoListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepoListWithOptions(request as! GetRepoListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoListWithOptions(_ request: GetRepoListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoList",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoListByNamespace(_ RepoNamespace: String, _ request: GetRepoListByNamespaceRequest) async throws -> GetRepoListByNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepoListByNamespaceWithOptions(RepoNamespace as! String, request as! GetRepoListByNamespaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoListByNamespaceWithOptions(_ RepoNamespace: String, _ request: GetRepoListByNamespaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoListByNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoListByNamespace",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoListByNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTag(_ RepoNamespace: String, _ RepoName: String, _ Tag: String) async throws -> GetRepoTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepoTagWithOptions(RepoNamespace as! String, RepoName as! String, Tag as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTagWithOptions(_ RepoNamespace: String, _ RepoName: String, _ Tag: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoTagResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoTag",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/tags/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(Tag),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTagScanList(_ RepoNamespace: String, _ RepoName: String, _ Tag: String, _ request: GetRepoTagScanListRequest) async throws -> GetRepoTagScanListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepoTagScanListWithOptions(RepoNamespace as! String, RepoName as! String, Tag as! String, request as! GetRepoTagScanListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTagScanListWithOptions(_ RepoNamespace: String, _ RepoName: String, _ Tag: String, _ request: GetRepoTagScanListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoTagScanListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.severity)) {
            query["Severity"] = request.severity ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoTagScanList",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/tags/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(Tag) + "/scanResult",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoTagScanListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTagScanStatus(_ RepoNamespace: String, _ RepoName: String, _ Tag: String) async throws -> GetRepoTagScanStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepoTagScanStatusWithOptions(RepoNamespace as! String, RepoName as! String, Tag as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTagScanStatusWithOptions(_ RepoNamespace: String, _ RepoName: String, _ Tag: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoTagScanStatusResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoTagScanStatus",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/tags/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(Tag) + "/scanStatus",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoTagScanStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTagScanSummary(_ RepoNamespace: String, _ RepoName: String, _ Tag: String) async throws -> GetRepoTagScanSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepoTagScanSummaryWithOptions(RepoNamespace as! String, RepoName as! String, Tag as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTagScanSummaryWithOptions(_ RepoNamespace: String, _ RepoName: String, _ Tag: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoTagScanSummaryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoTagScanSummary",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/tags/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(Tag) + "/scanCount",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoTagScanSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTags(_ RepoNamespace: String, _ RepoName: String, _ request: GetRepoTagsRequest) async throws -> GetRepoTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepoTagsWithOptions(RepoNamespace as! String, RepoName as! String, request as! GetRepoTagsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTagsWithOptions(_ RepoNamespace: String, _ RepoName: String, _ request: GetRepoTagsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoTags",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/tags",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoWebhook(_ RepoNamespace: String, _ RepoName: String) async throws -> GetRepoWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRepoWebhookWithOptions(RepoNamespace as! String, RepoName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoWebhookWithOptions(_ RepoNamespace: String, _ RepoName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoWebhookResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoWebhook",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/webhooks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startImageScan(_ RepoNamespace: String, _ RepoName: String, _ Tag: String) async throws -> StartImageScanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startImageScanWithOptions(RepoNamespace as! String, RepoName as! String, Tag as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startImageScanWithOptions(_ RepoNamespace: String, _ RepoName: String, _ Tag: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartImageScanResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartImageScan",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/tags/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(Tag) + "/scan",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartImageScanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startRepoBuildByRule(_ RepoNamespace: String, _ RepoName: String, _ BuildRuleId: String) async throws -> StartRepoBuildByRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startRepoBuildByRuleWithOptions(RepoNamespace as! String, RepoName as! String, BuildRuleId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startRepoBuildByRuleWithOptions(_ RepoNamespace: String, _ RepoName: String, _ BuildRuleId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartRepoBuildByRuleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartRepoBuildByRule",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/rules/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(BuildRuleId) + "/build",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartRepoBuildByRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNamespace(_ Namespace: String) async throws -> UpdateNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateNamespaceWithOptions(Namespace as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNamespaceWithOptions(_ Namespace: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateNamespaceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateNamespace",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/namespace/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(Namespace),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepo(_ RepoNamespace: String, _ RepoName: String) async throws -> UpdateRepoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRepoWithOptions(RepoNamespace as! String, RepoName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepoWithOptions(_ RepoNamespace: String, _ RepoName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRepoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRepo",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRepoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepoBuildRule(_ RepoNamespace: String, _ RepoName: String, _ BuildRuleId: String) async throws -> UpdateRepoBuildRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRepoBuildRuleWithOptions(RepoNamespace as! String, RepoName as! String, BuildRuleId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepoBuildRuleWithOptions(_ RepoNamespace: String, _ RepoName: String, _ BuildRuleId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRepoBuildRuleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRepoBuildRule",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/rules/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(BuildRuleId),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRepoBuildRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepoWebhook(_ RepoNamespace: String, _ RepoName: String, _ WebhookId: String) async throws -> UpdateRepoWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRepoWebhookWithOptions(RepoNamespace as! String, RepoName as! String, WebhookId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepoWebhookWithOptions(_ RepoNamespace: String, _ RepoName: String, _ WebhookId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRepoWebhookResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRepoWebhook",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/repos/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoNamespace) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(RepoName) + "/webhooks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(WebhookId),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRepoWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserInfo() async throws -> UpdateUserInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateUserInfoWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserInfoWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserInfo",
            "version": "2016-06-07",
            "protocol": "HTTPS",
            "pathname": "/users",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserInfoResponse(), tmp)
    }
}
