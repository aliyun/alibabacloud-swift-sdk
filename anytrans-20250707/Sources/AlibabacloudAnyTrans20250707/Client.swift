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
        self._endpoint = try getEndpoint("anytrans", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func batchTranslateWithOptions(_ tmpReq: BatchTranslateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchTranslateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchTranslateShrinkRequest = BatchTranslateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ext)) {
            request.extShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ext, "ext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.text)) {
            request.textShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.text, "text", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["appName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extShrink)) {
            body["ext"] = request.extShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            body["format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["sourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["targetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textShrink)) {
            body["text"] = request.textShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchTranslate",
            "version": "2025-07-07",
            "protocol": "HTTPS",
            "pathname": "/anytrans/translate/batch",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchTranslate(_ request: BatchTranslateRequest) async throws -> BatchTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchTranslateWithOptions(request as! BatchTranslateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchTranslateForHtmlWithOptions(_ tmpReq: BatchTranslateForHtmlRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchTranslateForHtmlResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchTranslateForHtmlShrinkRequest = BatchTranslateForHtmlShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ext)) {
            request.extShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ext, "ext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.text)) {
            request.textShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.text, "text", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["appName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extShrink)) {
            body["ext"] = request.extShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            body["format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["sourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["targetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textShrink)) {
            body["text"] = request.textShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchTranslateForHtml",
            "version": "2025-07-07",
            "protocol": "HTTPS",
            "pathname": "/anytrans/translate/batchForHtml",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchTranslateForHtmlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchTranslateForHtml(_ request: BatchTranslateForHtmlRequest) async throws -> BatchTranslateForHtmlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchTranslateForHtmlWithOptions(request as! BatchTranslateForHtmlRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocTranslateTaskWithOptions(_ request: GetDocTranslateTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocTranslateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocTranslateTask",
            "version": "2025-07-07",
            "protocol": "HTTPS",
            "pathname": "/anytrans/translate/doc/get",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocTranslateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocTranslateTask(_ request: GetDocTranslateTaskRequest) async throws -> GetDocTranslateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDocTranslateTaskWithOptions(request as! GetDocTranslateTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHtmlTranslateTaskWithOptions(_ request: GetHtmlTranslateTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHtmlTranslateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHtmlTranslateTask",
            "version": "2025-07-07",
            "protocol": "HTTPS",
            "pathname": "/anytrans/translate/html/get",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHtmlTranslateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHtmlTranslateTask(_ request: GetHtmlTranslateTaskRequest) async throws -> GetHtmlTranslateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHtmlTranslateTaskWithOptions(request as! GetHtmlTranslateTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageTranslateTaskWithOptions(_ request: GetImageTranslateTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetImageTranslateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetImageTranslateTask",
            "version": "2025-07-07",
            "protocol": "HTTPS",
            "pathname": "/anytrans/translate/image/get",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetImageTranslateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageTranslateTask(_ request: GetImageTranslateTaskRequest) async throws -> GetImageTranslateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getImageTranslateTaskWithOptions(request as! GetImageTranslateTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLongTextTranslateTaskWithOptions(_ request: GetLongTextTranslateTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLongTextTranslateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLongTextTranslateTask",
            "version": "2025-07-07",
            "protocol": "HTTPS",
            "pathname": "/anytrans/translate/longText/get",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLongTextTranslateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLongTextTranslateTask(_ request: GetLongTextTranslateTaskRequest) async throws -> GetLongTextTranslateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLongTextTranslateTaskWithOptions(request as! GetLongTextTranslateTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDocTranslateTaskWithOptions(_ tmpReq: SubmitDocTranslateTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDocTranslateTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitDocTranslateTaskShrinkRequest = SubmitDocTranslateTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ext)) {
            request.extShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ext, "ext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extShrink)) {
            body["ext"] = request.extShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            body["format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["sourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["targetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitDocTranslateTask",
            "version": "2025-07-07",
            "protocol": "HTTPS",
            "pathname": "/anytrans/translate/doc/submit",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitDocTranslateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitDocTranslateTask(_ request: SubmitDocTranslateTaskRequest) async throws -> SubmitDocTranslateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitDocTranslateTaskWithOptions(request as! SubmitDocTranslateTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitHtmlTranslateTaskWithOptions(_ tmpReq: SubmitHtmlTranslateTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitHtmlTranslateTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitHtmlTranslateTaskShrinkRequest = SubmitHtmlTranslateTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ext)) {
            request.extShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ext, "ext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extShrink)) {
            body["ext"] = request.extShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            body["format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["sourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["targetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitHtmlTranslateTask",
            "version": "2025-07-07",
            "protocol": "HTTPS",
            "pathname": "/anytrans/translate/html/submit",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitHtmlTranslateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitHtmlTranslateTask(_ request: SubmitHtmlTranslateTaskRequest) async throws -> SubmitHtmlTranslateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitHtmlTranslateTaskWithOptions(request as! SubmitHtmlTranslateTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitImageTranslateTaskWithOptions(_ tmpReq: SubmitImageTranslateTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitImageTranslateTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitImageTranslateTaskShrinkRequest = SubmitImageTranslateTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ext)) {
            request.extShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ext, "ext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.targetLanguage)) {
            request.targetLanguageShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.targetLanguage, "targetLanguage", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extShrink)) {
            body["ext"] = request.extShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            body["format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["sourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguageShrink)) {
            body["targetLanguage"] = request.targetLanguageShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitImageTranslateTask",
            "version": "2025-07-07",
            "protocol": "HTTPS",
            "pathname": "/anytrans/translate/image/submit",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitImageTranslateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitImageTranslateTask(_ request: SubmitImageTranslateTaskRequest) async throws -> SubmitImageTranslateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitImageTranslateTaskWithOptions(request as! SubmitImageTranslateTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitLongTextTranslateTaskWithOptions(_ tmpReq: SubmitLongTextTranslateTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitLongTextTranslateTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitLongTextTranslateTaskShrinkRequest = SubmitLongTextTranslateTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ext)) {
            request.extShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ext, "ext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extShrink)) {
            body["ext"] = request.extShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            body["format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["sourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["targetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitLongTextTranslateTask",
            "version": "2025-07-07",
            "protocol": "HTTPS",
            "pathname": "/anytrans/translate/longText/submit",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitLongTextTranslateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitLongTextTranslateTask(_ request: SubmitLongTextTranslateTaskRequest) async throws -> SubmitLongTextTranslateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitLongTextTranslateTaskWithOptions(request as! SubmitLongTextTranslateTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func termEditWithOptions(_ tmpReq: TermEditRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TermEditResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TermEditShrinkRequest = TermEditShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ext)) {
            request.extShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ext, "ext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.action)) {
            body["action"] = request.action ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extShrink)) {
            body["ext"] = request.extShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["sourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["targetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TermEdit",
            "version": "2025-07-07",
            "protocol": "HTTPS",
            "pathname": "/anytrans/translate/intervene/edit",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TermEditResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func termEdit(_ request: TermEditRequest) async throws -> TermEditResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await termEditWithOptions(request as! TermEditRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func termQueryWithOptions(_ request: TermQueryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TermQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["sourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["targetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TermQuery",
            "version": "2025-07-07",
            "protocol": "HTTPS",
            "pathname": "/anytrans/translate/intervene/query",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TermQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func termQuery(_ request: TermQueryRequest) async throws -> TermQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await termQueryWithOptions(request as! TermQueryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func textTranslateWithOptions(_ tmpReq: TextTranslateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TextTranslateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TextTranslateShrinkRequest = TextTranslateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ext)) {
            request.extShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ext, "ext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extShrink)) {
            body["ext"] = request.extShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            body["format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["sourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["targetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TextTranslate",
            "version": "2025-07-07",
            "protocol": "HTTPS",
            "pathname": "/anytrans/translate/text",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TextTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func textTranslate(_ request: TextTranslateRequest) async throws -> TextTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await textTranslateWithOptions(request as! TextTranslateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
