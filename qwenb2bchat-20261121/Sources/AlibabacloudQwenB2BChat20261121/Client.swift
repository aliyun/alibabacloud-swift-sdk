import Foundation
import Tea
import TeaUtils
import AlibabacloudGatewayPOP
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._productId = "QwenB2BChat"
        var gatewayClient: AlibabacloudGatewayPOP.Client = try AlibabacloudGatewayPOP.Client()
        self._spi = gatewayClient
        self._endpointRule = "regional"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("qwenb2bchat", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func chatWithOptions(_ request: ChatRequest, _ headers: ChatHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accept)) {
            realHeaders["Accept"] = TeaUtils.Client.toJSONString(headers.accept);
        }
        if (!TeaUtils.Client.isUnset(headers.xDashScopeSSE)) {
            realHeaders["X-DashScope-SSE"] = TeaUtils.Client.toJSONString(headers.xDashScopeSSE);
        }
        if (!TeaUtils.Client.isUnset(headers.xGWAccess)) {
            realHeaders["X-GW-Access"] = TeaUtils.Client.toJSONString(headers.xGWAccess);
        }
        if (!TeaUtils.Client.isUnset(headers.xGWNonce)) {
            realHeaders["X-GW-Nonce"] = TeaUtils.Client.toJSONString(headers.xGWNonce);
        }
        if (!TeaUtils.Client.isUnset(headers.xGWProtocol)) {
            realHeaders["X-GW-Protocol"] = TeaUtils.Client.toJSONString(headers.xGWProtocol);
        }
        if (!TeaUtils.Client.isUnset(headers.xGWSignature)) {
            realHeaders["X-GW-Signature"] = TeaUtils.Client.toJSONString(headers.xGWSignature);
        }
        if (!TeaUtils.Client.isUnset(headers.xGWTimestamp)) {
            realHeaders["X-GW-Timestamp"] = TeaUtils.Client.toJSONString(headers.xGWTimestamp);
        }
        if (!TeaUtils.Client.isUnset(headers.xRequestId)) {
            realHeaders["X-Request-Id"] = TeaUtils.Client.toJSONString(headers.xRequestId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Chat",
            "version": "2026-11-21",
            "protocol": "HTTPS",
            "pathname": "/v1/api/chat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chat(_ request: ChatRequest) async throws -> ChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ChatHeaders = ChatHeaders([:])
        return try await chatWithOptions(request as! ChatRequest, headers as! ChatHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openServiceWithOptions(_ request: OpenServiceRequest, _ headers: OpenServiceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> OpenServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.communication)) {
            body["communication"] = request.communication!;
        }
        if (!TeaUtils.Client.isUnset(request.openBenefits)) {
            body["openBenefits"] = request.openBenefits!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xGWAccess)) {
            realHeaders["X-GW-Access"] = TeaUtils.Client.toJSONString(headers.xGWAccess);
        }
        if (!TeaUtils.Client.isUnset(headers.xGWNonce)) {
            realHeaders["X-GW-Nonce"] = TeaUtils.Client.toJSONString(headers.xGWNonce);
        }
        if (!TeaUtils.Client.isUnset(headers.xGWSignature)) {
            realHeaders["X-GW-Signature"] = TeaUtils.Client.toJSONString(headers.xGWSignature);
        }
        if (!TeaUtils.Client.isUnset(headers.xGWTimestamp)) {
            realHeaders["X-GW-Timestamp"] = TeaUtils.Client.toJSONString(headers.xGWTimestamp);
        }
        if (!TeaUtils.Client.isUnset(headers.xRequestId)) {
            realHeaders["X-Request-Id"] = TeaUtils.Client.toJSONString(headers.xRequestId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OpenService",
            "version": "2026-11-21",
            "protocol": "HTTPS",
            "pathname": "/v1/api/openService",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OpenServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openService(_ request: OpenServiceRequest) async throws -> OpenServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: OpenServiceHeaders = OpenServiceHeaders([:])
        return try await openServiceWithOptions(request as! OpenServiceRequest, headers as! OpenServiceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func streamVoiceWithOptions(_ request: StreamVoiceRequest, _ headers: StreamVoiceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StreamVoiceResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xGWAccess)) {
            realHeaders["X-GW-Access"] = TeaUtils.Client.toJSONString(headers.xGWAccess);
        }
        if (!TeaUtils.Client.isUnset(headers.xGWNonce)) {
            realHeaders["X-GW-Nonce"] = TeaUtils.Client.toJSONString(headers.xGWNonce);
        }
        if (!TeaUtils.Client.isUnset(headers.xGWProtocol)) {
            realHeaders["X-GW-Protocol"] = TeaUtils.Client.toJSONString(headers.xGWProtocol);
        }
        if (!TeaUtils.Client.isUnset(headers.xGWSignature)) {
            realHeaders["X-GW-Signature"] = TeaUtils.Client.toJSONString(headers.xGWSignature);
        }
        if (!TeaUtils.Client.isUnset(headers.xGWTimestamp)) {
            realHeaders["X-GW-Timestamp"] = TeaUtils.Client.toJSONString(headers.xGWTimestamp);
        }
        if (!TeaUtils.Client.isUnset(headers.xRequestId)) {
            realHeaders["X-Request-Id"] = TeaUtils.Client.toJSONString(headers.xRequestId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StreamVoice",
            "version": "2026-11-21",
            "protocol": "HTTPS",
            "pathname": "/v1/api/voice",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StreamVoiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func streamVoice(_ request: StreamVoiceRequest) async throws -> StreamVoiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StreamVoiceHeaders = StreamVoiceHeaders([:])
        return try await streamVoiceWithOptions(request as! StreamVoiceRequest, headers as! StreamVoiceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }
}
