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
        self._productId = "QwenB2BMed"
        var gatewayClient: AlibabacloudGatewayPOP.Client = try AlibabacloudGatewayPOP.Client()
        self._spi = gatewayClient
        self._endpointRule = "regional"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("qwenb2bmed", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func medicalAgentChatWithOptions(_ request: MedicalAgentChatRequest, _ headers: MedicalAgentChatHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> MedicalAgentChatResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
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
            "action": "MedicalAgentChat",
            "version": "2026-11-21",
            "protocol": "HTTPS",
            "pathname": "/v1/api/medicalQa",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MedicalAgentChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func medicalAgentChat(_ request: MedicalAgentChatRequest) async throws -> MedicalAgentChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: MedicalAgentChatHeaders = MedicalAgentChatHeaders([:])
        return try await medicalAgentChatWithOptions(request as! MedicalAgentChatRequest, headers as! MedicalAgentChatHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func medicalModelInferenceWithOptions(_ request: MedicalModelInferenceRequest, _ headers: MedicalModelInferenceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> MedicalModelInferenceResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
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
            "action": "MedicalModelInference",
            "version": "2026-11-21",
            "protocol": "HTTPS",
            "pathname": "/v1/api/directModel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MedicalModelInferenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func medicalModelInference(_ request: MedicalModelInferenceRequest) async throws -> MedicalModelInferenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: MedicalModelInferenceHeaders = MedicalModelInferenceHeaders([:])
        return try await medicalModelInferenceWithOptions(request as! MedicalModelInferenceRequest, headers as! MedicalModelInferenceHeaders, runtime as! TeaUtils.RuntimeOptions)
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
            "pathname": "/v1/api/medical/openService",
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
}
