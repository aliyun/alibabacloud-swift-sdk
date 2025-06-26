import Foundation
import Tea
import TeaUtils
import AlibabacloudGatewayPOP
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._productId = "Searchplat"
        var gatewayClient: AlibabacloudGatewayPOP.Client = try AlibabacloudGatewayPOP.Client()
        self._spi = gatewayClient
        self._endpointRule = ""
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAudioAsrTaskWithOptions(_ workspaceName: String, _ serviceId: String, _ request: CreateAudioAsrTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAudioAsrTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.input)) {
            body["input"] = request.input!;
        }
        if (!TeaUtils.Client.isUnset(request.output)) {
            body["output"] = request.output!;
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            body["parameters"] = request.parameters ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAudioAsrTask",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/audio-asr/" + (serviceId as! String) + "/async",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAudioAsrTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAudioAsrTask(_ workspaceName: String, _ serviceId: String, _ request: CreateAudioAsrTaskRequest) async throws -> CreateAudioAsrTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAudioAsrTaskWithOptions(workspaceName as! String, serviceId as! String, request as! CreateAudioAsrTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDocumentAnalyzeTaskWithOptions(_ workspaceName: String, _ serviceId: String, _ request: CreateDocumentAnalyzeTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDocumentAnalyzeTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.document)) {
            body["document"] = request.document!;
        }
        if (!TeaUtils.Client.isUnset(request.output)) {
            body["output"] = request.output!;
        }
        if (!TeaUtils.Client.isUnset(request.strategy)) {
            body["strategy"] = request.strategy!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDocumentAnalyzeTask",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/document-analyze/" + (serviceId as! String) + "/async",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDocumentAnalyzeTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDocumentAnalyzeTask(_ workspaceName: String, _ serviceId: String, _ request: CreateDocumentAnalyzeTaskRequest) async throws -> CreateDocumentAnalyzeTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDocumentAnalyzeTaskWithOptions(workspaceName as! String, serviceId as! String, request as! CreateDocumentAnalyzeTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageAnalyzeTaskWithOptions(_ workspaceName: String, _ serviceId: String, _ request: CreateImageAnalyzeTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateImageAnalyzeTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.document)) {
            body["document"] = request.document!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateImageAnalyzeTask",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/image-analyze/" + (serviceId as! String) + "/async",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateImageAnalyzeTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageAnalyzeTask(_ workspaceName: String, _ serviceId: String, _ request: CreateImageAnalyzeTaskRequest) async throws -> CreateImageAnalyzeTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createImageAnalyzeTaskWithOptions(workspaceName as! String, serviceId as! String, request as! CreateImageAnalyzeTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoSnapshotTaskWithOptions(_ workspaceName: String, _ serviceId: String, _ request: CreateVideoSnapshotTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVideoSnapshotTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.input)) {
            body["input"] = request.input!;
        }
        if (!TeaUtils.Client.isUnset(request.output)) {
            body["output"] = request.output!;
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            body["parameters"] = request.parameters ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVideoSnapshotTask",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/video-snapshot/" + (serviceId as! String) + "/async",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVideoSnapshotTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoSnapshotTask(_ workspaceName: String, _ serviceId: String, _ request: CreateVideoSnapshotTaskRequest) async throws -> CreateVideoSnapshotTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createVideoSnapshotTaskWithOptions(workspaceName as! String, serviceId as! String, request as! CreateVideoSnapshotTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAudioAsrTaskStatusWithOptions(_ workspaceName: String, _ serviceId: String, _ request: GetAudioAsrTaskStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAudioAsrTaskStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["task_id"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAudioAsrTaskStatus",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/audio-asr/" + (serviceId as! String) + "/async/task-status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAudioAsrTaskStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAudioAsrTaskStatus(_ workspaceName: String, _ serviceId: String, _ request: GetAudioAsrTaskStatusRequest) async throws -> GetAudioAsrTaskStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAudioAsrTaskStatusWithOptions(workspaceName as! String, serviceId as! String, request as! GetAudioAsrTaskStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentAnalyzeTaskStatusWithOptions(_ workspaceName: String, _ serviceId: String, _ request: GetDocumentAnalyzeTaskStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocumentAnalyzeTaskStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["task_id"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocumentAnalyzeTaskStatus",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/document-analyze/" + (serviceId as! String) + "/async/task-status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocumentAnalyzeTaskStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentAnalyzeTaskStatus(_ workspaceName: String, _ serviceId: String, _ request: GetDocumentAnalyzeTaskStatusRequest) async throws -> GetDocumentAnalyzeTaskStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDocumentAnalyzeTaskStatusWithOptions(workspaceName as! String, serviceId as! String, request as! GetDocumentAnalyzeTaskStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentRankWithOptions(_ workspaceName: String, _ serviceId: String, _ request: GetDocumentRankRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocumentRankResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docs)) {
            body["docs"] = request.docs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocumentRank",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/ranker/" + (serviceId as! String),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocumentRankResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentRank(_ workspaceName: String, _ serviceId: String, _ request: GetDocumentRankRequest) async throws -> GetDocumentRankResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDocumentRankWithOptions(workspaceName as! String, serviceId as! String, request as! GetDocumentRankRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentSplitWithOptions(_ workspaceName: String, _ serviceId: String, _ request: GetDocumentSplitRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocumentSplitResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.document)) {
            body["document"] = request.document!;
        }
        if (!TeaUtils.Client.isUnset(request.strategy)) {
            body["strategy"] = request.strategy!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocumentSplit",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/document-split/" + (serviceId as! String),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocumentSplitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentSplit(_ workspaceName: String, _ serviceId: String, _ request: GetDocumentSplitRequest) async throws -> GetDocumentSplitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDocumentSplitWithOptions(workspaceName as! String, serviceId as! String, request as! GetDocumentSplitRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEmbeddingTuningWithOptions(_ workspaceName: String, _ serviceId: String, _ request: GetEmbeddingTuningRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEmbeddingTuningResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.input)) {
            body["input"] = request.input ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            body["parameters"] = request.parameters ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEmbeddingTuning",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/embedding-tuning/" + (serviceId as! String),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEmbeddingTuningResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEmbeddingTuning(_ workspaceName: String, _ serviceId: String, _ request: GetEmbeddingTuningRequest) async throws -> GetEmbeddingTuningResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEmbeddingTuningWithOptions(workspaceName as! String, serviceId as! String, request as! GetEmbeddingTuningRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageAnalyzeTaskStatusWithOptions(_ workspaceName: String, _ serviceId: String, _ request: GetImageAnalyzeTaskStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetImageAnalyzeTaskStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["task_id"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetImageAnalyzeTaskStatus",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/image-analyze/" + (serviceId as! String) + "/async/task-status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetImageAnalyzeTaskStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageAnalyzeTaskStatus(_ workspaceName: String, _ serviceId: String, _ request: GetImageAnalyzeTaskStatusRequest) async throws -> GetImageAnalyzeTaskStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getImageAnalyzeTaskStatusWithOptions(workspaceName as! String, serviceId as! String, request as! GetImageAnalyzeTaskStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultiModalEmbeddingWithOptions(_ workspaceName: String, _ serviceId: String, _ request: GetMultiModalEmbeddingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMultiModalEmbeddingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.input)) {
            body["input"] = request.input ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMultiModalEmbedding",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/multi-modal-embedding/" + (serviceId as! String),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMultiModalEmbeddingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultiModalEmbedding(_ workspaceName: String, _ serviceId: String, _ request: GetMultiModalEmbeddingRequest) async throws -> GetMultiModalEmbeddingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMultiModalEmbeddingWithOptions(workspaceName as! String, serviceId as! String, request as! GetMultiModalEmbeddingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPredictionWithOptions(_ deploymentId: String, _ request: GetPredictionRequest, _ headers: GetPredictionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPredictionResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.token)) {
            realHeaders["Token"] = TeaUtils.Client.toJSONString(headers.token);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPrediction",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/deployments/" + (deploymentId as! String) + "/predict",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "string"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPredictionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPrediction(_ deploymentId: String, _ request: GetPredictionRequest) async throws -> GetPredictionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetPredictionHeaders = GetPredictionHeaders([:])
        return try await getPredictionWithOptions(deploymentId as! String, request as! GetPredictionRequest, headers as! GetPredictionHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQueryAnalysisWithOptions(_ workspaceName: String, _ serviceId: String, _ request: GetQueryAnalysisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQueryAnalysisResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.functions)) {
            body["functions"] = request.functions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.history)) {
            body["history"] = request.history ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQueryAnalysis",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/query-analyze/" + (serviceId as! String),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQueryAnalysisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQueryAnalysis(_ workspaceName: String, _ serviceId: String, _ request: GetQueryAnalysisRequest) async throws -> GetQueryAnalysisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQueryAnalysisWithOptions(workspaceName as! String, serviceId as! String, request as! GetQueryAnalysisRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTextEmbeddingWithOptions(_ workspaceName: String, _ serviceId: String, _ request: GetTextEmbeddingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTextEmbeddingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.input)) {
            body["input"] = request.input ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.inputType)) {
            body["input_type"] = request.inputType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTextEmbedding",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/text-embedding/" + (serviceId as! String),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTextEmbeddingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTextEmbedding(_ workspaceName: String, _ serviceId: String, _ request: GetTextEmbeddingRequest) async throws -> GetTextEmbeddingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTextEmbeddingWithOptions(workspaceName as! String, serviceId as! String, request as! GetTextEmbeddingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTextGenerationWithOptions(_ workspaceName: String, _ serviceId: String, _ request: GetTextGenerationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTextGenerationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.csiLevel)) {
            body["csi_level"] = request.csiLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSearch)) {
            body["enable_search"] = request.enableSearch!;
        }
        if (!TeaUtils.Client.isUnset(request.messages)) {
            body["messages"] = request.messages ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            body["parameters"] = request.parameters ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTextGeneration",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/text-generation/" + (serviceId as! String),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTextGenerationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTextGeneration(_ workspaceName: String, _ serviceId: String, _ request: GetTextGenerationRequest) async throws -> GetTextGenerationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTextGenerationWithOptions(workspaceName as! String, serviceId as! String, request as! GetTextGenerationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTextSparseEmbeddingWithOptions(_ workspaceName: String, _ serviceId: String, _ request: GetTextSparseEmbeddingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTextSparseEmbeddingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.input)) {
            body["input"] = request.input ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.inputType)) {
            body["input_type"] = request.inputType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnToken)) {
            body["return_token"] = request.returnToken!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTextSparseEmbedding",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/text-sparse-embedding/" + (serviceId as! String),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTextSparseEmbeddingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTextSparseEmbedding(_ workspaceName: String, _ serviceId: String, _ request: GetTextSparseEmbeddingRequest) async throws -> GetTextSparseEmbeddingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTextSparseEmbeddingWithOptions(workspaceName as! String, serviceId as! String, request as! GetTextSparseEmbeddingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoSnapshotTaskStatusWithOptions(_ workspaceName: String, _ serviceId: String, _ request: GetVideoSnapshotTaskStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVideoSnapshotTaskStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["task_id"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVideoSnapshotTaskStatus",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/video-snapshot/" + (serviceId as! String) + "/async/task-status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVideoSnapshotTaskStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoSnapshotTaskStatus(_ workspaceName: String, _ serviceId: String, _ request: GetVideoSnapshotTaskStatusRequest) async throws -> GetVideoSnapshotTaskStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getVideoSnapshotTaskStatusWithOptions(workspaceName as! String, serviceId as! String, request as! GetVideoSnapshotTaskStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWebSearchWithOptions(_ workspaceName: String, _ serviceId: String, _ request: GetWebSearchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWebSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentType)) {
            body["content_type"] = request.contentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.history)) {
            body["history"] = request.history ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryRewrite)) {
            body["query_rewrite"] = request.queryRewrite!;
        }
        if (!TeaUtils.Client.isUnset(request.topK)) {
            body["top_k"] = request.topK!;
        }
        if (!TeaUtils.Client.isUnset(request.way)) {
            body["way"] = request.way ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWebSearch",
            "version": "2024-05-29",
            "protocol": "HTTPS",
            "pathname": "/v3/openapi/workspaces/" + (workspaceName as! String) + "/web-search/" + (serviceId as! String),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await execute(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWebSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWebSearch(_ workspaceName: String, _ serviceId: String, _ request: GetWebSearchRequest) async throws -> GetWebSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWebSearchWithOptions(workspaceName as! String, serviceId as! String, request as! GetWebSearchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
