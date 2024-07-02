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
        self._endpoint = try getEndpoint("contactcenterai", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func runCompletionWithOptions(_ workspaceId: String, _ appId: String, _ request: RunCompletionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunCompletionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dialogue)) {
            body["Dialogue"] = request.dialogue!;
        }
        if (!TeaUtils.Client.isUnset(request.fields)) {
            body["Fields"] = request.fields ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.modelCode)) {
            body["ModelCode"] = request.modelCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceInspection)) {
            body["ServiceInspection"] = request.serviceInspection!;
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["Stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.templateIds)) {
            body["TemplateIds"] = request.templateIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunCompletion",
            "version": "2024-06-03",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/ccai/app/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId)) + "/completion",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunCompletionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runCompletion(_ workspaceId: String, _ appId: String, _ request: RunCompletionRequest) async throws -> RunCompletionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runCompletionWithOptions(workspaceId as! String, appId as! String, request as! RunCompletionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runCompletionMessageWithOptions(_ workspaceId: String, _ appId: String, _ request: RunCompletionMessageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunCompletionMessageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.messages)) {
            body["Messages"] = request.messages ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.modelCode)) {
            body["ModelCode"] = request.modelCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["Stream"] = request.stream!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunCompletionMessage",
            "version": "2024-06-03",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/ccai/app/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId)) + "/completion_message",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunCompletionMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runCompletionMessage(_ workspaceId: String, _ appId: String, _ request: RunCompletionMessageRequest) async throws -> RunCompletionMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runCompletionMessageWithOptions(workspaceId as! String, appId as! String, request as! RunCompletionMessageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
