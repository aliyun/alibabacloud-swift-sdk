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
        self._endpoint = try getEndpoint("maasqiservice", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func aigcChatCompletionStreamWithOptions(_ request: AigcChatCompletionStreamRequest, _ headers: AigcChatCompletionStreamHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AigcChatCompletionStreamResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.messages)) {
            body["messages"] = request.messages ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.metadata)) {
            body["metadata"] = request.metadata!;
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.streamOptions)) {
            body["streamOptions"] = request.streamOptions!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xQIAgentApiKey)) {
            realHeaders["X-QI-Agent-Api-Key"] = TeaUtils.Client.toJSONString(headers.xQIAgentApiKey);
        }
        if (!TeaUtils.Client.isUnset(headers.xQIInstanceId)) {
            realHeaders["X-QI-Instance-Id"] = TeaUtils.Client.toJSONString(headers.xQIInstanceId);
        }
        if (!TeaUtils.Client.isUnset(headers.xQISessionId)) {
            realHeaders["X-QI-Session-Id"] = TeaUtils.Client.toJSONString(headers.xQISessionId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AigcChatCompletionStream",
            "version": "2026-08-31",
            "protocol": "HTTPS",
            "pathname": "/aigc/v1/chat/completions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AigcChatCompletionStreamResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aigcChatCompletionStream(_ request: AigcChatCompletionStreamRequest) async throws -> AigcChatCompletionStreamResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AigcChatCompletionStreamHeaders = AigcChatCompletionStreamHeaders([:])
        return try await aigcChatCompletionStreamWithOptions(request as! AigcChatCompletionStreamRequest, headers as! AigcChatCompletionStreamHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func guiChatCompletionStreamWithOptions(_ request: GuiChatCompletionStreamRequest, _ headers: GuiChatCompletionStreamHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GuiChatCompletionStreamResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowedTokenIds)) {
            body["allowedTokenIds"] = request.allowedTokenIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.badWords)) {
            body["badWords"] = request.badWords ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.chatTemplateKwargs)) {
            body["chatTemplateKwargs"] = request.chatTemplateKwargs!;
        }
        if (!TeaUtils.Client.isUnset(request.frequencyPenalty)) {
            body["frequencyPenalty"] = request.frequencyPenalty!;
        }
        if (!TeaUtils.Client.isUnset(request.ignoreEos)) {
            body["ignoreEos"] = request.ignoreEos!;
        }
        if (!TeaUtils.Client.isUnset(request.includeReasoning)) {
            body["includeReasoning"] = request.includeReasoning!;
        }
        if (!TeaUtils.Client.isUnset(request.logprobs)) {
            body["logprobs"] = request.logprobs!;
        }
        if (!TeaUtils.Client.isUnset(request.maxCompletionTokens)) {
            body["maxCompletionTokens"] = request.maxCompletionTokens!;
        }
        if (!TeaUtils.Client.isUnset(request.maxTokens)) {
            body["maxTokens"] = request.maxTokens!;
        }
        if (!TeaUtils.Client.isUnset(request.messages)) {
            body["messages"] = request.messages ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.metadata)) {
            body["metadata"] = request.metadata!;
        }
        if (!TeaUtils.Client.isUnset(request.minP)) {
            body["minP"] = request.minP!;
        }
        if (!TeaUtils.Client.isUnset(request.minTokens)) {
            body["minTokens"] = request.minTokens!;
        }
        if (!TeaUtils.Client.isUnset(request.mmProcessorKwargs)) {
            body["mmProcessorKwargs"] = request.mmProcessorKwargs!;
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.n)) {
            body["n"] = request.n!;
        }
        if (!TeaUtils.Client.isUnset(request.parallelToolCalls)) {
            body["parallelToolCalls"] = request.parallelToolCalls!;
        }
        if (!TeaUtils.Client.isUnset(request.presencePenalty)) {
            body["presencePenalty"] = request.presencePenalty!;
        }
        if (!TeaUtils.Client.isUnset(request.promptLogprobs)) {
            body["promptLogprobs"] = request.promptLogprobs!;
        }
        if (!TeaUtils.Client.isUnset(request.reasoningEffort)) {
            body["reasoningEffort"] = request.reasoningEffort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repetitionPenalty)) {
            body["repetitionPenalty"] = request.repetitionPenalty!;
        }
        if (!TeaUtils.Client.isUnset(request.responseFormat)) {
            body["responseFormat"] = request.responseFormat!;
        }
        if (!TeaUtils.Client.isUnset(request.seed)) {
            body["seed"] = request.seed!;
        }
        if (!TeaUtils.Client.isUnset(request.skipSpecialTokens)) {
            body["skipSpecialTokens"] = request.skipSpecialTokens!;
        }
        if (!TeaUtils.Client.isUnset(request.stop)) {
            body["stop"] = request.stop ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.stopTokenIds)) {
            body["stopTokenIds"] = request.stopTokenIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.streamOptions)) {
            body["streamOptions"] = request.streamOptions!;
        }
        if (!TeaUtils.Client.isUnset(request.structuredOutputs)) {
            body["structuredOutputs"] = request.structuredOutputs!;
        }
        if (!TeaUtils.Client.isUnset(request.temperature)) {
            body["temperature"] = request.temperature!;
        }
        if (!TeaUtils.Client.isUnset(request.topK)) {
            body["topK"] = request.topK!;
        }
        if (!TeaUtils.Client.isUnset(request.topLogprobs)) {
            body["topLogprobs"] = request.topLogprobs!;
        }
        if (!TeaUtils.Client.isUnset(request.topP)) {
            body["topP"] = request.topP!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xQIAgentApiKey)) {
            realHeaders["X-QI-Agent-Api-Key"] = TeaUtils.Client.toJSONString(headers.xQIAgentApiKey);
        }
        if (!TeaUtils.Client.isUnset(headers.xQIInstanceId)) {
            realHeaders["X-QI-Instance-Id"] = TeaUtils.Client.toJSONString(headers.xQIInstanceId);
        }
        if (!TeaUtils.Client.isUnset(headers.xQISessionId)) {
            realHeaders["X-QI-Session-Id"] = TeaUtils.Client.toJSONString(headers.xQISessionId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GuiChatCompletionStream",
            "version": "2026-08-31",
            "protocol": "HTTPS",
            "pathname": "/gui/v1/chat/completions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GuiChatCompletionStreamResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func guiChatCompletionStream(_ request: GuiChatCompletionStreamRequest) async throws -> GuiChatCompletionStreamResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GuiChatCompletionStreamHeaders = GuiChatCompletionStreamHeaders([:])
        return try await guiChatCompletionStreamWithOptions(request as! GuiChatCompletionStreamRequest, headers as! GuiChatCompletionStreamHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func paChatCompletionStreamWithOptions(_ request: PaChatCompletionStreamRequest, _ headers: PaChatCompletionStreamHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PaChatCompletionStreamResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowedTokenIds)) {
            body["allowedTokenIds"] = request.allowedTokenIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.badWords)) {
            body["badWords"] = request.badWords ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.chatTemplateKwargs)) {
            body["chatTemplateKwargs"] = request.chatTemplateKwargs!;
        }
        if (!TeaUtils.Client.isUnset(request.frequencyPenalty)) {
            body["frequencyPenalty"] = request.frequencyPenalty!;
        }
        if (!TeaUtils.Client.isUnset(request.ignoreEos)) {
            body["ignoreEos"] = request.ignoreEos!;
        }
        if (!TeaUtils.Client.isUnset(request.includeReasoning)) {
            body["includeReasoning"] = request.includeReasoning!;
        }
        if (!TeaUtils.Client.isUnset(request.logprobs)) {
            body["logprobs"] = request.logprobs!;
        }
        if (!TeaUtils.Client.isUnset(request.maxCompletionTokens)) {
            body["maxCompletionTokens"] = request.maxCompletionTokens!;
        }
        if (!TeaUtils.Client.isUnset(request.maxTokens)) {
            body["maxTokens"] = request.maxTokens!;
        }
        if (!TeaUtils.Client.isUnset(request.messages)) {
            body["messages"] = request.messages ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.minP)) {
            body["minP"] = request.minP!;
        }
        if (!TeaUtils.Client.isUnset(request.minTokens)) {
            body["minTokens"] = request.minTokens!;
        }
        if (!TeaUtils.Client.isUnset(request.mmProcessorKwargs)) {
            body["mmProcessorKwargs"] = request.mmProcessorKwargs!;
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.n)) {
            body["n"] = request.n!;
        }
        if (!TeaUtils.Client.isUnset(request.parallelToolCalls)) {
            body["parallelToolCalls"] = request.parallelToolCalls!;
        }
        if (!TeaUtils.Client.isUnset(request.presencePenalty)) {
            body["presencePenalty"] = request.presencePenalty!;
        }
        if (!TeaUtils.Client.isUnset(request.promptLogprobs)) {
            body["promptLogprobs"] = request.promptLogprobs!;
        }
        if (!TeaUtils.Client.isUnset(request.reasoningEffort)) {
            body["reasoningEffort"] = request.reasoningEffort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repetitionPenalty)) {
            body["repetitionPenalty"] = request.repetitionPenalty!;
        }
        if (!TeaUtils.Client.isUnset(request.responseFormat)) {
            body["responseFormat"] = request.responseFormat!;
        }
        if (!TeaUtils.Client.isUnset(request.seed)) {
            body["seed"] = request.seed!;
        }
        if (!TeaUtils.Client.isUnset(request.skipSpecialTokens)) {
            body["skipSpecialTokens"] = request.skipSpecialTokens!;
        }
        if (!TeaUtils.Client.isUnset(request.stop)) {
            body["stop"] = request.stop ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.stopTokenIds)) {
            body["stopTokenIds"] = request.stopTokenIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.streamOptions)) {
            body["streamOptions"] = request.streamOptions!;
        }
        if (!TeaUtils.Client.isUnset(request.structuredOutputs)) {
            body["structuredOutputs"] = request.structuredOutputs!;
        }
        if (!TeaUtils.Client.isUnset(request.temperature)) {
            body["temperature"] = request.temperature!;
        }
        if (!TeaUtils.Client.isUnset(request.toolChoice)) {
            body["toolChoice"] = request.toolChoice ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tools)) {
            body["tools"] = request.tools ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.topK)) {
            body["topK"] = request.topK!;
        }
        if (!TeaUtils.Client.isUnset(request.topLogprobs)) {
            body["topLogprobs"] = request.topLogprobs!;
        }
        if (!TeaUtils.Client.isUnset(request.topP)) {
            body["topP"] = request.topP!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xQIAgentApiKey)) {
            realHeaders["X-QI-Agent-Api-Key"] = TeaUtils.Client.toJSONString(headers.xQIAgentApiKey);
        }
        if (!TeaUtils.Client.isUnset(headers.xQIInstanceId)) {
            realHeaders["X-QI-Instance-Id"] = TeaUtils.Client.toJSONString(headers.xQIInstanceId);
        }
        if (!TeaUtils.Client.isUnset(headers.xQISessionId)) {
            realHeaders["X-QI-Session-Id"] = TeaUtils.Client.toJSONString(headers.xQISessionId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PaChatCompletionStream",
            "version": "2026-08-31",
            "protocol": "HTTPS",
            "pathname": "/pa/v1/chat/completions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PaChatCompletionStreamResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func paChatCompletionStream(_ request: PaChatCompletionStreamRequest) async throws -> PaChatCompletionStreamResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PaChatCompletionStreamHeaders = PaChatCompletionStreamHeaders([:])
        return try await paChatCompletionStreamWithOptions(request as! PaChatCompletionStreamRequest, headers as! PaChatCompletionStreamHeaders, runtime as! TeaUtils.RuntimeOptions)
    }
}
