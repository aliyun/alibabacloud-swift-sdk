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
        self._endpoint = try getEndpoint("intelligentcreation", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addTextFeedbackWithOptions(_ request: AddTextFeedbackRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddTextFeedbackResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quality)) {
            body["quality"] = request.quality!;
        }
        if (!TeaUtils.Client.isUnset(request.textId)) {
            body["textId"] = request.textId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddTextFeedback",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/addTextFeedback",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddTextFeedbackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addTextFeedback(_ request: AddTextFeedbackRequest) async throws -> AddTextFeedbackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addTextFeedbackWithOptions(request as! AddTextFeedbackRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetProjectTaskWithOptions(_ tmpReq: BatchGetProjectTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchGetProjectTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchGetProjectTaskShrinkRequest = BatchGetProjectTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.taskIdList)) {
            request.taskIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.taskIdList, "taskIdList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskIdListShrink)) {
            query["taskIdList"] = request.taskIdListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchGetProjectTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/project/batchGetProjectTask",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchGetProjectTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetProjectTask(_ request: BatchGetProjectTaskRequest) async throws -> BatchGetProjectTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchGetProjectTaskWithOptions(request as! BatchGetProjectTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkSessionWithOptions(_ request: CheckSessionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["projectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckSession",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/avatar/project/checkSession",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkSession(_ request: CheckSessionRequest) async throws -> CheckSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await checkSessionWithOptions(request as! CheckSessionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countTextWithOptions(_ request: CountTextRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CountTextResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.generationSource)) {
            query["generationSource"] = request.generationSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.industry)) {
            query["industry"] = request.industry ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.publishStatus)) {
            query["publishStatus"] = request.publishStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.style)) {
            query["style"] = request.style ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CountText",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/countText",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CountTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func countText(_ request: CountTextRequest) async throws -> CountTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await countTextWithOptions(request as! CountTextRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIllustrationTaskWithOptions(_ textId: String, _ request: CreateIllustrationTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIllustrationTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIllustrationTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/texts/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(textId)) + "/illustrationTasks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIllustrationTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIllustrationTask(_ textId: String, _ request: CreateIllustrationTaskRequest) async throws -> CreateIllustrationTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createIllustrationTaskWithOptions(textId as! String, request as! CreateIllustrationTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRealisticPortraitWithOptions(_ request: CreateRealisticPortraitRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRealisticPortraitResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ages)) {
            body["ages"] = request.ages ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.cloth)) {
            body["cloth"] = request.cloth!;
        }
        if (!TeaUtils.Client.isUnset(request.color)) {
            body["color"] = request.color!;
        }
        if (!TeaUtils.Client.isUnset(request.custom)) {
            body["custom"] = request.custom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.face)) {
            body["face"] = request.face ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.figure)) {
            body["figure"] = request.figure!;
        }
        if (!TeaUtils.Client.isUnset(request.gender)) {
            body["gender"] = request.gender!;
        }
        if (!TeaUtils.Client.isUnset(request.hairColor)) {
            body["hairColor"] = request.hairColor!;
        }
        if (!TeaUtils.Client.isUnset(request.hairstyle)) {
            body["hairstyle"] = request.hairstyle!;
        }
        if (!TeaUtils.Client.isUnset(request.height)) {
            body["height"] = request.height!;
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["imageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.numbers)) {
            body["numbers"] = request.numbers!;
        }
        if (!TeaUtils.Client.isUnset(request.ratio)) {
            body["ratio"] = request.ratio ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.width)) {
            body["width"] = request.width!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRealisticPortrait",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/images/portrait/realistic",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRealisticPortraitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRealisticPortrait(_ request: CreateRealisticPortraitRequest) async throws -> CreateRealisticPortraitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRealisticPortraitWithOptions(request as! CreateRealisticPortraitRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTextTaskWithOptions(_ request: CreateTextTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTextTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTextTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/textTasks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTextTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTextTask(_ request: CreateTextTaskRequest) async throws -> CreateTextTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTextTaskWithOptions(request as! CreateTextTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIllustrationWithOptions(_ textId: String, _ illustrationId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIllustrationResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIllustration",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/texts/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(textId)) + "/illustrations/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(illustrationId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIllustrationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIllustration(_ textId: String, _ illustrationId: String) async throws -> GetIllustrationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIllustrationWithOptions(textId as! String, illustrationId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIllustrationTaskWithOptions(_ textId: String, _ illustrationTaskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIllustrationTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIllustrationTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/texts/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(textId)) + "/illustrationTasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(illustrationTaskId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIllustrationTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIllustrationTask(_ textId: String, _ illustrationTaskId: String) async throws -> GetIllustrationTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIllustrationTaskWithOptions(textId as! String, illustrationTaskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOssUploadTokenWithOptions(_ request: GetOssUploadTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOssUploadTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            query["fileType"] = request.fileType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOssUploadToken",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/uploadToken",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOssUploadTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOssUploadToken(_ request: GetOssUploadTokenRequest) async throws -> GetOssUploadTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getOssUploadTokenWithOptions(request as! GetOssUploadTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectTaskWithOptions(_ request: GetProjectTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.idempotentId)) {
            query["IdempotentId"] = request.idempotentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProjectTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/project/getProjectTask",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectTask(_ request: GetProjectTaskRequest) async throws -> GetProjectTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProjectTaskWithOptions(request as! GetProjectTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTextWithOptions(_ textId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTextResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetText",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/texts/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(textId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getText(_ textId: String) async throws -> GetTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTextWithOptions(textId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTextTaskWithOptions(_ textTaskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTextTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTextTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/textTasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(textTaskId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTextTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTextTask(_ textTaskId: String) async throws -> GetTextTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTextTaskWithOptions(textTaskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTextTemplateWithOptions(_ request: GetTextTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTextTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.industry)) {
            query["industry"] = request.industry ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTextTemplate",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/texts/commands/getTextTemplate",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTextTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTextTemplate(_ request: GetTextTemplateRequest) async throws -> GetTextTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTextTemplateWithOptions(request as! GetTextTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func interactTextWithOptions(_ request: InteractTextRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InteractTextResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            body["agentId"] = request.agentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InteractText",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/stream/interactText",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InteractTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func interactText(_ request: InteractTextRequest) async throws -> InteractTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await interactTextWithOptions(request as! InteractTextRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnchorWithOptions(_ request: ListAnchorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAnchorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.anchorType)) {
            query["anchorType"] = request.anchorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.coverRate)) {
            query["coverRate"] = request.coverRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.digitalHumanType)) {
            query["digitalHumanType"] = request.digitalHumanType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resSpecType)) {
            query["resSpecType"] = request.resSpecType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useScene)) {
            query["useScene"] = request.useScene ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAnchor",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/anchorOpen/listAnchor",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAnchorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnchor(_ request: ListAnchorRequest) async throws -> ListAnchorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAnchorWithOptions(request as! ListAnchorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAvatarProjectWithOptions(_ tmpReq: ListAvatarProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAvatarProjectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListAvatarProjectShrinkRequest = ListAvatarProjectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.projectIdList)) {
            request.projectIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.projectIdList, "projectIdList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectIdListShrink)) {
            query["projectIdList"] = request.projectIdListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAvatarProject",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/avatar/project/listAvatarProject",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAvatarProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAvatarProject(_ request: ListAvatarProjectRequest) async throws -> ListAvatarProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAvatarProjectWithOptions(request as! ListAvatarProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTextThemesWithOptions(_ request: ListTextThemesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTextThemesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.industry)) {
            query["industry"] = request.industry ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTextThemes",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/textThemes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTextThemesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTextThemes(_ request: ListTextThemesRequest) async throws -> ListTextThemesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTextThemesWithOptions(request as! ListTextThemesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTextsWithOptions(_ request: ListTextsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTextsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.generationSource)) {
            query["generationSource"] = request.generationSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.industry)) {
            query["industry"] = request.industry ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.publishStatus)) {
            query["publishStatus"] = request.publishStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textStyleType)) {
            query["textStyleType"] = request.textStyleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textTheme)) {
            query["textTheme"] = request.textTheme ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTexts",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/texts",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTextsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTexts(_ request: ListTextsRequest) async throws -> ListTextsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTextsWithOptions(request as! ListTextsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVoiceModelsWithOptions(_ request: ListVoiceModelsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVoiceModelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resSpecType)) {
            query["resSpecType"] = request.resSpecType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useScene)) {
            query["useScene"] = request.useScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voiceType)) {
            query["voiceType"] = request.voiceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVoiceModels",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/voiceOpen/listVoiceModels",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVoiceModelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVoiceModels(_ request: ListVoiceModelsRequest) async throws -> ListVoiceModelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listVoiceModelsWithOptions(request as! ListVoiceModelsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateAvatarProjectWithOptions(_ request: OperateAvatarProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OperateAvatarProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            body["operateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["projectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resChannelNumber)) {
            body["resChannelNumber"] = request.resChannelNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.resType)) {
            body["resType"] = request.resType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OperateAvatarProject",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/avatar/project/operateProjectAvatar",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OperateAvatarProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateAvatarProject(_ request: OperateAvatarProjectRequest) async throws -> OperateAvatarProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await operateAvatarProjectWithOptions(request as! OperateAvatarProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAvatarProjectWithOptions(_ request: QueryAvatarProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAvatarProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["projectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAvatarProject",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/avatar/project/queryAvatarProject",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAvatarProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAvatarProject(_ request: QueryAvatarProjectRequest) async throws -> QueryAvatarProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryAvatarProjectWithOptions(request as! QueryAvatarProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAvatarResourceWithOptions(_ request: QueryAvatarResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAvatarResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.idempotentId)) {
            query["idempotentId"] = request.idempotentId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAvatarResource",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/avatar/project/queryResource",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAvatarResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAvatarResource(_ request: QueryAvatarResourceRequest) async throws -> QueryAvatarResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryAvatarResourceWithOptions(request as! QueryAvatarResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySessionInfoWithOptions(_ tmpReq: QuerySessionInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySessionInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QuerySessionInfoShrinkRequest = QuerySessionInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.statusList)) {
            request.statusListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.statusList, "statusList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["pageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["projectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusListShrink)) {
            query["statusList"] = request.statusListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySessionInfo",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/avatar/project/querySessionInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySessionInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySessionInfo(_ request: QuerySessionInfoRequest) async throws -> QuerySessionInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await querySessionInfoWithOptions(request as! QuerySessionInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTextStreamWithOptions(_ textId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTextStreamResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTextStream",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/stream/queryTextStream/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(textId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTextStreamResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTextStream(_ textId: String) async throws -> QueryTextStreamResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryTextStreamWithOptions(textId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveAvatarProjectWithOptions(_ request: SaveAvatarProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveAvatarProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            body["agentId"] = request.agentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.frames)) {
            body["frames"] = request.frames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            body["operateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["projectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["projectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resSpecType)) {
            body["resSpecType"] = request.resSpecType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scaleType)) {
            body["scaleType"] = request.scaleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveAvatarProject",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/avatar/project/saveAvatarProject",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveAvatarProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveAvatarProject(_ request: SaveAvatarProjectRequest) async throws -> SaveAvatarProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await saveAvatarProjectWithOptions(request as! SaveAvatarProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func selectImageTaskWithOptions(_ taskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SelectImageTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SelectImageTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/images/portrait/select/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SelectImageTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func selectImageTask(_ taskId: String) async throws -> SelectImageTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await selectImageTaskWithOptions(taskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func selectResourceWithOptions(_ request: SelectResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SelectResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.idempotentId)) {
            query["idempotentId"] = request.idempotentId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SelectResource",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/project/commands/overview",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SelectResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func selectResource(_ request: SelectResourceRequest) async throws -> SelectResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await selectResourceWithOptions(request as! SelectResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendTextMsgWithOptions(_ request: SendTextMsgRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SendTextMsgResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["projectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendTextMsg",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/avatar/project/sendTextMsg",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendTextMsgResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendTextMsg(_ request: SendTextMsgRequest) async throws -> SendTextMsgResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sendTextMsgWithOptions(request as! SendTextMsgRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startAvatarSessionWithOptions(_ request: StartAvatarSessionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartAvatarSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customPushUrl)) {
            body["customPushUrl"] = request.customPushUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["projectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartAvatarSession",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/avatar/project/startAvatarSession",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartAvatarSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startAvatarSession(_ request: StartAvatarSessionRequest) async throws -> StartAvatarSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startAvatarSessionWithOptions(request as! StartAvatarSessionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopAvatarSessionWithOptions(_ request: StopAvatarSessionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopAvatarSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["projectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopAvatarSession",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/avatar/project/stopAvatarSession",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopAvatarSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopAvatarSession(_ request: StopAvatarSessionRequest) async throws -> StopAvatarSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopAvatarSessionWithOptions(request as! StopAvatarSessionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopProjectTaskWithOptions(_ request: StopProjectTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopProjectTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopProjectTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/project/stop",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopProjectTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopProjectTask(_ request: StopProjectTaskRequest) async throws -> StopProjectTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopProjectTaskWithOptions(request as! StopProjectTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitProjectTaskWithOptions(_ request: SubmitProjectTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitProjectTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.frames)) {
            body["frames"] = request.frames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scaleType)) {
            body["scaleType"] = request.scaleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subtitleTag)) {
            body["subtitleTag"] = request.subtitleTag!;
        }
        if (!TeaUtils.Client.isUnset(request.transparentBackground)) {
            body["transparentBackground"] = request.transparentBackground!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitProjectTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/project/submitProjectTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitProjectTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitProjectTask(_ request: SubmitProjectTaskRequest) async throws -> SubmitProjectTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitProjectTaskWithOptions(request as! SubmitProjectTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferPortraitStyleWithOptions(_ request: TransferPortraitStyleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TransferPortraitStyleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.height)) {
            body["height"] = request.height!;
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["imageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.numbers)) {
            body["numbers"] = request.numbers!;
        }
        if (!TeaUtils.Client.isUnset(request.redrawAmplitude)) {
            body["redrawAmplitude"] = request.redrawAmplitude!;
        }
        if (!TeaUtils.Client.isUnset(request.style)) {
            body["style"] = request.style!;
        }
        if (!TeaUtils.Client.isUnset(request.width)) {
            body["width"] = request.width!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TransferPortraitStyle",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/images/portrait/transferPortraitStyle",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransferPortraitStyleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferPortraitStyle(_ request: TransferPortraitStyleRequest) async throws -> TransferPortraitStyleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await transferPortraitStyleWithOptions(request as! TransferPortraitStyleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
