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
        self._endpoint = try getEndpoint("sasclaw", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func chatUserSecAgentWithOptions(_ request: ChatUserSecAgentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatUserSecAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agent)) {
            body["Agent"] = request.agent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attachmentStagingId)) {
            body["AttachmentStagingId"] = request.attachmentStagingId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attachments)) {
            body["Attachments"] = request.attachments ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            body["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executionMode)) {
            body["ExecutionMode"] = request.executionMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraParams)) {
            body["ExtraParams"] = request.extraParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            body["Memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.responseLanguage)) {
            body["ResponseLanguage"] = request.responseLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skill)) {
            body["Skill"] = request.skill ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["Stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.talkId)) {
            body["TalkId"] = request.talkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            body["Target"] = request.target ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeZone)) {
            body["TimeZone"] = request.timeZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userInputInfo)) {
            body["UserInputInfo"] = request.userInputInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatUserSecAgent",
            "version": "2026-06-26",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatUserSecAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatUserSecAgent(_ request: ChatUserSecAgentRequest) async throws -> ChatUserSecAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatUserSecAgentWithOptions(request as! ChatUserSecAgentRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
