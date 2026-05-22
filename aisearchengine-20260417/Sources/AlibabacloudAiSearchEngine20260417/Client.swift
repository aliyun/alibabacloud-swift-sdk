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
        self._endpoint = try getEndpoint("aisearchengine", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func engineSearchWithOptions(_ request: EngineSearchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EngineSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["appId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grey)) {
            body["grey"] = request.grey!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query!;
        }
        if (!TeaUtils.Client.isUnset(request.recall)) {
            body["recall"] = request.recall!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strategyId)) {
            body["strategyId"] = request.strategyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.user)) {
            body["user"] = request.user!;
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EngineSearch",
            "version": "2026-04-17",
            "protocol": "HTTPS",
            "pathname": "/api/v1/platform/app/search",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EngineSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func engineSearch(_ request: EngineSearchRequest) async throws -> EngineSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await engineSearchWithOptions(request as! EngineSearchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func qaChatWithOptions(_ request: QaChatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QaChatResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["appId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.message)) {
            body["message"] = request.message!;
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            body["options"] = request.options ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QaChat",
            "version": "2026-04-17",
            "protocol": "HTTPS",
            "pathname": "/api/v1/platform/app/chat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QaChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func qaChat(_ request: QaChatRequest) async throws -> QaChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await qaChatWithOptions(request as! QaChatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
