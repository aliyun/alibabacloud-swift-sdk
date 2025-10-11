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
    public func batchAddDocumentWithOptions(_ knowledgeBaseId: String, _ request: BatchAddDocumentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchAddDocumentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addDocumentInfos)) {
            body["addDocumentInfos"] = request.addDocumentInfos ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchAddDocument",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/knowledge-base/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(knowledgeBaseId)) + "/documents",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchAddDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchAddDocument(_ knowledgeBaseId: String, _ request: BatchAddDocumentRequest) async throws -> BatchAddDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchAddDocumentWithOptions(knowledgeBaseId as! String, request as! BatchAddDocumentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchCreateAICoachTaskWithOptions(_ request: BatchCreateAICoachTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchCreateAICoachTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scriptRecordId)) {
            body["scriptRecordId"] = request.scriptRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.studentIds)) {
            body["studentIds"] = request.studentIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.studentList)) {
            body["studentList"] = request.studentList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchCreateAICoachTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/batchCreateTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchCreateAICoachTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchCreateAICoachTask(_ request: BatchCreateAICoachTaskRequest) async throws -> BatchCreateAICoachTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchCreateAICoachTaskWithOptions(request as! BatchCreateAICoachTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
    public func batchGetTrainTaskWithOptions(_ tmpReq: BatchGetTrainTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchGetTrainTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchGetTrainTaskShrinkRequest = BatchGetTrainTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.taskIdList)) {
            request.taskIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.taskIdList, "taskIdList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunMainId)) {
            query["aliyunMainId"] = request.aliyunMainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskIdListShrink)) {
            query["taskIdList"] = request.taskIdListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchGetTrainTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/train/task/batchGetTrainTaskInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchGetTrainTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetTrainTask(_ request: BatchGetTrainTaskRequest) async throws -> BatchGetTrainTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchGetTrainTaskWithOptions(request as! BatchGetTrainTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetVideoClipTaskWithOptions(_ tmpReq: BatchGetVideoClipTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchGetVideoClipTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchGetVideoClipTaskShrinkRequest = BatchGetVideoClipTaskShrinkRequest([:])
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
            "action": "BatchGetVideoClipTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/video/clip/batchGetVideoClipTask",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchGetVideoClipTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetVideoClipTask(_ request: BatchGetVideoClipTaskRequest) async throws -> BatchGetVideoClipTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchGetVideoClipTaskWithOptions(request as! BatchGetVideoClipTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchQueryIndividuationTextWithOptions(_ tmpReq: BatchQueryIndividuationTextRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchQueryIndividuationTextResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchQueryIndividuationTextShrinkRequest = BatchQueryIndividuationTextShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.textIdList)) {
            request.textIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.textIdList, "textIdList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.textIdListShrink)) {
            query["textIdList"] = request.textIdListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchQueryIndividuationText",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/individuationText/batchQueryText",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchQueryIndividuationTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchQueryIndividuationText(_ request: BatchQueryIndividuationTextRequest) async throws -> BatchQueryIndividuationTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchQueryIndividuationTextWithOptions(request as! BatchQueryIndividuationTextRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func buildAICoachScriptRecordWithOptions(_ request: BuildAICoachScriptRecordRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BuildAICoachScriptRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scriptJsonUrl)) {
            body["scriptJsonUrl"] = request.scriptJsonUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BuildAICoachScriptRecord",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/buildScriptRecord",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BuildAICoachScriptRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func buildAICoachScriptRecord(_ request: BuildAICoachScriptRecordRequest) async throws -> BuildAICoachScriptRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await buildAICoachScriptRecordWithOptions(request as! BuildAICoachScriptRecordRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
    public func closeAICoachTaskSessionWithOptions(_ request: CloseAICoachTaskSessionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CloseAICoachTaskSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            body["uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloseAICoachTaskSession",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/closeSession",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloseAICoachTaskSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func closeAICoachTaskSession(_ request: CloseAICoachTaskSessionRequest) async throws -> CloseAICoachTaskSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await closeAICoachTaskSessionWithOptions(request as! CloseAICoachTaskSessionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
    public func createAICoachTaskWithOptions(_ request: CreateAICoachTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAICoachTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scriptRecordId)) {
            body["scriptRecordId"] = request.scriptRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.studentAudioUrl)) {
            body["studentAudioUrl"] = request.studentAudioUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.studentId)) {
            body["studentId"] = request.studentId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAICoachTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/createTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAICoachTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAICoachTask(_ request: CreateAICoachTaskRequest) async throws -> CreateAICoachTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAICoachTaskWithOptions(request as! CreateAICoachTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAICoachTaskSessionWithOptions(_ request: CreateAICoachTaskSessionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAICoachTaskSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            body["uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAICoachTaskSession",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/startSession",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAICoachTaskSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAICoachTaskSession(_ request: CreateAICoachTaskSessionRequest) async throws -> CreateAICoachTaskSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAICoachTaskSessionWithOptions(request as! CreateAICoachTaskSessionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAgentWithOptions(_ request: CreateAgentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentIconUrl)) {
            body["agentIconUrl"] = request.agentIconUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentName)) {
            body["agentName"] = request.agentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentScene)) {
            body["agentScene"] = request.agentScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.characterAgeStage)) {
            body["characterAgeStage"] = request.characterAgeStage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.characterGender)) {
            body["characterGender"] = request.characterGender ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.characterName)) {
            body["characterName"] = request.characterName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraDescription)) {
            body["extraDescription"] = request.extraDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.industry)) {
            body["industry"] = request.industry ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAgent",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/agent/createAgent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAgent(_ request: CreateAgentRequest) async throws -> CreateAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAgentWithOptions(request as! CreateAgentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAnchorWithOptions(_ request: CreateAnchorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAnchorResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.anchorCategory)) {
            body["anchorCategory"] = request.anchorCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.anchorMaterialName)) {
            body["anchorMaterialName"] = request.anchorMaterialName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.coverUrl)) {
            body["coverUrl"] = request.coverUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.digitalHumanType)) {
            body["digitalHumanType"] = request.digitalHumanType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gender)) {
            body["gender"] = request.gender ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useScene)) {
            body["useScene"] = request.useScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoOssKey)) {
            body["videoOssKey"] = request.videoOssKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAnchor",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/anchorOpen/createAnchor",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAnchorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAnchor(_ request: CreateAnchorRequest) async throws -> CreateAnchorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAnchorWithOptions(request as! CreateAnchorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
    public func createIndividuationProjectWithOptions(_ request: CreateIndividuationProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIndividuationProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectInfo)) {
            body["projectInfo"] = request.projectInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["projectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.purpose)) {
            body["purpose"] = request.purpose ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["sceneId"] = request.sceneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIndividuationProject",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/individuationText/createProject",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIndividuationProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIndividuationProject(_ request: CreateIndividuationProjectRequest) async throws -> CreateIndividuationProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createIndividuationProjectWithOptions(request as! CreateIndividuationProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIndividuationTextTaskWithOptions(_ request: CreateIndividuationTextTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIndividuationTextTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.crowdPack)) {
            body["crowdPack"] = request.crowdPack ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["projectId"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["taskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIndividuationTextTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/individuationText/createTextTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIndividuationTextTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIndividuationTextTask(_ request: CreateIndividuationTextTaskRequest) async throws -> CreateIndividuationTextTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createIndividuationTextTaskWithOptions(request as! CreateIndividuationTextTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProductImageWithOptions(_ request: CreateProductImageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProductImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backgroundDescription)) {
            body["backgroundDescription"] = request.backgroundDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backgroundPriority)) {
            body["backgroundPriority"] = request.backgroundPriority!;
        }
        if (!TeaUtils.Client.isUnset(request.backgroundUrl)) {
            body["backgroundUrl"] = request.backgroundUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.highlightText)) {
            body["highlightText"] = request.highlightText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageCount)) {
            body["imageCount"] = request.imageCount!;
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["imageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subTitle)) {
            body["subTitle"] = request.subTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProductImage",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/images/products",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProductImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProductImage(_ request: CreateProductImageRequest) async throws -> CreateProductImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProductImageWithOptions(request as! CreateProductImageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
    public func createTrainTaskWithOptions(_ request: CreateTrainTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTrainTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunMainId)) {
            body["aliyunMainId"] = request.aliyunMainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resSpecType)) {
            body["resSpecType"] = request.resSpecType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["taskType"] = request.taskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useScene)) {
            body["useScene"] = request.useScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voiceGender)) {
            body["voiceGender"] = request.voiceGender ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voiceLanguage)) {
            body["voiceLanguage"] = request.voiceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voiceName)) {
            body["voiceName"] = request.voiceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voicePath)) {
            body["voicePath"] = request.voicePath ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTrainTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/train/task/createTrainTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTrainTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrainTask(_ request: CreateTrainTaskRequest) async throws -> CreateTrainTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTrainTaskWithOptions(request as! CreateTrainTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoClipTaskWithOptions(_ request: CreateVideoClipTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVideoClipTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunMainId)) {
            body["aliyunMainId"] = request.aliyunMainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossKeys)) {
            body["ossKeys"] = request.ossKeys ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.requirement)) {
            body["requirement"] = request.requirement ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVideoClipTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/video/clip/createVideoClipTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVideoClipTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoClipTask(_ request: CreateVideoClipTaskRequest) async throws -> CreateVideoClipTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createVideoClipTaskWithOptions(request as! CreateVideoClipTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAICoachScriptWithOptions(_ request: DeleteAICoachScriptRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAICoachScriptResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scriptId)) {
            body["scriptId"] = request.scriptId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAICoachScript",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/deleteAICoachScript",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAICoachScriptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAICoachScript(_ request: DeleteAICoachScriptRequest) async throws -> DeleteAICoachScriptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAICoachScriptWithOptions(request as! DeleteAICoachScriptRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAgentWithOptions(_ request: DeleteAgentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            body["agentId"] = request.agentId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAgent",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/agent/deleteAgent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAgent(_ request: DeleteAgentRequest) async throws -> DeleteAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAgentWithOptions(request as! DeleteAgentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIndividuationProjectWithOptions(_ request: DeleteIndividuationProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIndividuationProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            body["projectId"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIndividuationProject",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/individuationText/deleteProject",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIndividuationProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIndividuationProject(_ request: DeleteIndividuationProjectRequest) async throws -> DeleteIndividuationProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteIndividuationProjectWithOptions(request as! DeleteIndividuationProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIndividuationTextWithOptions(_ request: DeleteIndividuationTextRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIndividuationTextResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.textIdList)) {
            body["textIdList"] = request.textIdList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIndividuationText",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/individuationText/deleteText",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIndividuationTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIndividuationText(_ request: DeleteIndividuationTextRequest) async throws -> DeleteIndividuationTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteIndividuationTextWithOptions(request as! DeleteIndividuationTextRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDocumentWithOptions(_ knowledgeBaseId: String, _ documentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDocumentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDocument",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/knowledge-base/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(knowledgeBaseId)) + "/documents/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(documentId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDocument(_ knowledgeBaseId: String, _ documentId: String) async throws -> DescribeDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeDocumentWithOptions(knowledgeBaseId as! String, documentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func finishAICoachTaskSessionWithOptions(_ request: FinishAICoachTaskSessionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> FinishAICoachTaskSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            body["uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FinishAICoachTaskSession",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/finishSession",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FinishAICoachTaskSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func finishAICoachTaskSession(_ request: FinishAICoachTaskSessionRequest) async throws -> FinishAICoachTaskSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await finishAICoachTaskSessionWithOptions(request as! FinishAICoachTaskSessionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAICoachAssessmentPointWithOptions(_ request: GetAICoachAssessmentPointRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAICoachAssessmentPointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pointId)) {
            query["pointId"] = request.pointId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAICoachAssessmentPoint",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/getAssessmentPoint",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAICoachAssessmentPointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAICoachAssessmentPoint(_ request: GetAICoachAssessmentPointRequest) async throws -> GetAICoachAssessmentPointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAICoachAssessmentPointWithOptions(request as! GetAICoachAssessmentPointRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAICoachCheatDetectionWithOptions(_ request: GetAICoachCheatDetectionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAICoachCheatDetectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAICoachCheatDetection",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/getCheatDetection",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAICoachCheatDetectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAICoachCheatDetection(_ request: GetAICoachCheatDetectionRequest) async throws -> GetAICoachCheatDetectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAICoachCheatDetectionWithOptions(request as! GetAICoachCheatDetectionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAICoachScriptWithOptions(_ request: GetAICoachScriptRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAICoachScriptResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scriptRecordId)) {
            query["scriptRecordId"] = request.scriptRecordId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAICoachScript",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/getScript",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAICoachScriptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAICoachScript(_ request: GetAICoachScriptRequest) async throws -> GetAICoachScriptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAICoachScriptWithOptions(request as! GetAICoachScriptRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAICoachTaskSessionHistoryWithOptions(_ request: GetAICoachTaskSessionHistoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAICoachTaskSessionHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAICoachTaskSessionHistory",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/querySessionHistory",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAICoachTaskSessionHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAICoachTaskSessionHistory(_ request: GetAICoachTaskSessionHistoryRequest) async throws -> GetAICoachTaskSessionHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAICoachTaskSessionHistoryWithOptions(request as! GetAICoachTaskSessionHistoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAICoachTaskSessionReportWithOptions(_ request: GetAICoachTaskSessionReportRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAICoachTaskSessionReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAICoachTaskSessionReport",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/queryTaskSessionReport",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAICoachTaskSessionReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAICoachTaskSessionReport(_ request: GetAICoachTaskSessionReportRequest) async throws -> GetAICoachTaskSessionReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAICoachTaskSessionReportWithOptions(request as! GetAICoachTaskSessionReportRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAICoachTaskSessionResourceUsageWithOptions(_ request: GetAICoachTaskSessionResourceUsageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAICoachTaskSessionResourceUsageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAICoachTaskSessionResourceUsage",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/getSessionResourceUsage",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAICoachTaskSessionResourceUsageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAICoachTaskSessionResourceUsage(_ request: GetAICoachTaskSessionResourceUsageRequest) async throws -> GetAICoachTaskSessionResourceUsageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAICoachTaskSessionResourceUsageWithOptions(request as! GetAICoachTaskSessionResourceUsageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(request.uploadType)) {
            query["uploadType"] = request.uploadType!;
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
    public func listAICoachScriptPageWithOptions(_ request: ListAICoachScriptPageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAICoachScriptPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAICoachScriptPage",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/pageScript",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAICoachScriptPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAICoachScriptPage(_ request: ListAICoachScriptPageRequest) async throws -> ListAICoachScriptPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAICoachScriptPageWithOptions(request as! ListAICoachScriptPageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAICoachTaskPageWithOptions(_ request: ListAICoachTaskPageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAICoachTaskPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.studentId)) {
            query["studentId"] = request.studentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAICoachTaskPage",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/listTaskPage",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAICoachTaskPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAICoachTaskPage(_ request: ListAICoachTaskPageRequest) async throws -> ListAICoachTaskPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAICoachTaskPageWithOptions(request as! ListAICoachTaskPageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAgentsWithOptions(_ request: ListAgentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAgentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            query["agentId"] = request.agentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentScene)) {
            query["agentScene"] = request.agentScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.owner)) {
            query["owner"] = request.owner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAgents",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/agent/listAgents",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAgentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAgents(_ request: ListAgentsRequest) async throws -> ListAgentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAgentsWithOptions(request as! ListAgentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnchorWithOptions(_ request: ListAnchorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAnchorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.anchorCategory)) {
            query["anchorCategory"] = request.anchorCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.anchorId)) {
            query["anchorId"] = request.anchorId ?? "";
        }
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
    public func listKnowledgeBaseWithOptions(_ request: ListKnowledgeBaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListKnowledgeBaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.knowledgeBaseId)) {
            query["knowledgeBaseId"] = request.knowledgeBaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListKnowledgeBase",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/knowledge-base",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListKnowledgeBaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listKnowledgeBase(_ request: ListKnowledgeBaseRequest) async throws -> ListKnowledgeBaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listKnowledgeBaseWithOptions(request as! ListKnowledgeBaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(request.voiceLanguage)) {
            query["voiceLanguage"] = request.voiceLanguage ?? "";
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
    public func offlineAICoachScriptWithOptions(_ request: OfflineAICoachScriptRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflineAICoachScriptResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scriptId)) {
            body["scriptId"] = request.scriptId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflineAICoachScript",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/aicoach/offlineAICoachScript",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflineAICoachScriptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineAICoachScript(_ request: OfflineAICoachScriptRequest) async throws -> OfflineAICoachScriptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await offlineAICoachScriptWithOptions(request as! OfflineAICoachScriptRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
    public func queryImageToVideoTaskWithOptions(_ request: QueryImageToVideoTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryImageToVideoTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryImageToVideoTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/video/imageToVideo/task",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryImageToVideoTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryImageToVideoTask(_ request: QueryImageToVideoTaskRequest) async throws -> QueryImageToVideoTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryImageToVideoTaskWithOptions(request as! QueryImageToVideoTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryIndividuationTextTaskWithOptions(_ request: QueryIndividuationTextTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryIndividuationTextTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryIndividuationTextTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/individuationText/queryTextTask",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryIndividuationTextTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryIndividuationTextTask(_ request: QueryIndividuationTextTaskRequest) async throws -> QueryIndividuationTextTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryIndividuationTextTaskWithOptions(request as! QueryIndividuationTextTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
    public func releaseAgentWithOptions(_ request: ReleaseAgentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            body["agentId"] = request.agentId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseAgent",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/agent/releaseAgent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseAgent(_ request: ReleaseAgentRequest) async throws -> ReleaseAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await releaseAgentWithOptions(request as! ReleaseAgentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveAvatarProjectWithOptions(_ request: SaveAvatarProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveAvatarProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            body["agentId"] = request.agentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bitRate)) {
            body["bitRate"] = request.bitRate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.frameRate)) {
            body["frameRate"] = request.frameRate ?? "";
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
        if (!TeaUtils.Client.isUnset(request.resolution)) {
            body["resolution"] = request.resolution ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scaleType)) {
            body["scaleType"] = request.scaleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scriptModelTag)) {
            body["scriptModelTag"] = request.scriptModelTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizedDisplay)) {
            body["synchronizedDisplay"] = request.synchronizedDisplay ?? "";
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
    public func sendSdkMessageWithOptions(_ request: SendSdkMessageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SendSdkMessageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.header)) {
            body["header"] = request.header ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            body["moduleName"] = request.moduleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationName)) {
            body["operationName"] = request.operationName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendSdkMessage",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/sdk/sendMessage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendSdkMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendSdkMessage(_ request: SendSdkMessageRequest) async throws -> SendSdkMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sendSdkMessageWithOptions(request as! SendSdkMessageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendSdkStreamMessageWithOptions(_ request: SendSdkStreamMessageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SendSdkStreamMessageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.header)) {
            body["header"] = request.header ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            body["moduleName"] = request.moduleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationName)) {
            body["operationName"] = request.operationName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendSdkStreamMessage",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/sdk/stream/sendMessage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendSdkStreamMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendSdkStreamMessage(_ request: SendSdkStreamMessageRequest) async throws -> SendSdkStreamMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sendSdkStreamMessageWithOptions(request as! SendSdkStreamMessageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(request.channelToken)) {
            body["channelToken"] = request.channelToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customPushUrl)) {
            body["customPushUrl"] = request.customPushUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customUserId)) {
            body["customUserId"] = request.customUserId ?? "";
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
    public func submitImageToVideoTaskWithOptions(_ request: SubmitImageToVideoTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitImageToVideoTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["imageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.posPrompt)) {
            body["posPrompt"] = request.posPrompt ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitImageToVideoTask",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/video/imageToVideo/task",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitImageToVideoTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitImageToVideoTask(_ request: SubmitImageToVideoTaskRequest) async throws -> SubmitImageToVideoTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitImageToVideoTaskWithOptions(request as! SubmitImageToVideoTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAgentWithOptions(_ request: UpdateAgentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentIconUrl)) {
            body["agentIconUrl"] = request.agentIconUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            body["agentId"] = request.agentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentName)) {
            body["agentName"] = request.agentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.characterAgeStage)) {
            body["characterAgeStage"] = request.characterAgeStage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.characterGender)) {
            body["characterGender"] = request.characterGender ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.characterName)) {
            body["characterName"] = request.characterName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraDescription)) {
            body["extraDescription"] = request.extraDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.industry)) {
            body["industry"] = request.industry ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAgent",
            "version": "2024-03-13",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/agent/updateAgent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAgent(_ request: UpdateAgentRequest) async throws -> UpdateAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAgentWithOptions(request as! UpdateAgentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
