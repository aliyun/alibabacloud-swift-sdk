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
        self._endpoint = try getEndpoint("linkedmallretrieval", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func aISearchV2WithOptions(_ request: AISearchV2Request, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AISearchV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeRange)) {
            query["timeRange"] = request.timeRange ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AISearchV2",
            "version": "2024-05-01",
            "protocol": "HTTPS",
            "pathname": "/linked-retrieval/linked-retrieval-entry/v2/linkedRetrieval/commands/aiSearch",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AISearchV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aISearchV2(_ request: AISearchV2Request) async throws -> AISearchV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await aISearchV2WithOptions(request as! AISearchV2Request, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func genericSearchWithOptions(_ request: GenericSearchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenericSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeRange)) {
            query["timeRange"] = request.timeRange ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenericSearch",
            "version": "2024-05-01",
            "protocol": "HTTPS",
            "pathname": "/linked-retrieval/linked-retrieval-entry/v2/linkedRetrieval/commands/genericSearch",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenericSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func genericSearch(_ request: GenericSearchRequest) async throws -> GenericSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await genericSearchWithOptions(request as! GenericSearchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
