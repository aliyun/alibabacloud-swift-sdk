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
        self._endpoint = try getEndpoint("quanmiaolightapp", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func cancelAsyncTaskWithOptions(_ workspaceId: String, _ request: CancelAsyncTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelAsyncTaskResponse {
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
            "action": "CancelAsyncTask",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/cancelAsyncTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelAsyncTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelAsyncTask(_ workspaceId: String, _ request: CancelAsyncTaskRequest) async throws -> CancelAsyncTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelAsyncTaskWithOptions(workspaceId as! String, request as! CancelAsyncTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportAnalysisTagDetailByTaskIdWithOptions(_ workspaceId: String, _ tmpReq: ExportAnalysisTagDetailByTaskIdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportAnalysisTagDetailByTaskIdResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ExportAnalysisTagDetailByTaskIdShrinkRequest = ExportAnalysisTagDetailByTaskIdShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.categories)) {
            request.categoriesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.categories, "categories", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoriesShrink)) {
            body["categories"] = request.categoriesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            body["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportAnalysisTagDetailByTaskId",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/exportAnalysisTagDetailByTaskId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportAnalysisTagDetailByTaskIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportAnalysisTagDetailByTaskId(_ workspaceId: String, _ request: ExportAnalysisTagDetailByTaskIdRequest) async throws -> ExportAnalysisTagDetailByTaskIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await exportAnalysisTagDetailByTaskIdWithOptions(workspaceId as! String, request as! ExportAnalysisTagDetailByTaskIdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateBroadcastNewsWithOptions(_ workspaceId: String, _ request: GenerateBroadcastNewsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateBroadcastNewsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateBroadcastNews",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/GenerateBroadcastNews",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateBroadcastNewsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateBroadcastNews(_ workspaceId: String, _ request: GenerateBroadcastNewsRequest) async throws -> GenerateBroadcastNewsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateBroadcastNewsWithOptions(workspaceId as! String, request as! GenerateBroadcastNewsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateOutputFormatWithOptions(_ workspaceId: String, _ tmpReq: GenerateOutputFormatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateOutputFormatResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GenerateOutputFormatShrinkRequest = GenerateOutputFormatShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "tags", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessType)) {
            body["businessType"] = request.businessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            body["extraInfo"] = request.extraInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            body["tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDescription)) {
            body["taskDescription"] = request.taskDescription ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateOutputFormat",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/generateOutputFormat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateOutputFormatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateOutputFormat(_ workspaceId: String, _ request: GenerateOutputFormatRequest) async throws -> GenerateOutputFormatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateOutputFormatWithOptions(workspaceId as! String, request as! GenerateOutputFormatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseVocAnalysisTaskWithOptions(_ workspaceId: String, _ request: GetEnterpriseVocAnalysisTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnterpriseVocAnalysisTaskResponse {
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
            "action": "GetEnterpriseVocAnalysisTask",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/getEnterpriseVocAnalysisTask",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEnterpriseVocAnalysisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseVocAnalysisTask(_ workspaceId: String, _ request: GetEnterpriseVocAnalysisTaskRequest) async throws -> GetEnterpriseVocAnalysisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEnterpriseVocAnalysisTaskWithOptions(workspaceId as! String, request as! GetEnterpriseVocAnalysisTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEssayCorrectionTaskWithOptions(_ workspaceId: String, _ request: GetEssayCorrectionTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEssayCorrectionTaskResponse {
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
            "action": "GetEssayCorrectionTask",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/getEssayCorrectionTask",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEssayCorrectionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEssayCorrectionTask(_ workspaceId: String, _ request: GetEssayCorrectionTaskRequest) async throws -> GetEssayCorrectionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEssayCorrectionTaskWithOptions(workspaceId as! String, request as! GetEssayCorrectionTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileContentWithOptions(_ workspaceId: String, _ request: GetFileContentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFileContentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileKey)) {
            body["fileKey"] = request.fileKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFileContent",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/getFileContent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFileContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileContent(_ workspaceId: String, _ request: GetFileContentRequest) async throws -> GetFileContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFileContentWithOptions(workspaceId as! String, request as! GetFileContentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTagMiningAnalysisTaskWithOptions(_ workspaceId: String, _ request: GetTagMiningAnalysisTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTagMiningAnalysisTaskResponse {
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
            "action": "GetTagMiningAnalysisTask",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/getTagMiningAnalysisTask",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTagMiningAnalysisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTagMiningAnalysisTask(_ workspaceId: String, _ request: GetTagMiningAnalysisTaskRequest) async throws -> GetTagMiningAnalysisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTagMiningAnalysisTaskWithOptions(workspaceId as! String, request as! GetTagMiningAnalysisTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoAnalysisConfigWithOptions(_ workspaceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVideoAnalysisConfigResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVideoAnalysisConfig",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/videoAnalysis/getVideoAnalysisConfig",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVideoAnalysisConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoAnalysisConfig(_ workspaceId: String) async throws -> GetVideoAnalysisConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getVideoAnalysisConfigWithOptions(workspaceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoAnalysisTaskWithOptions(_ workspaceId: String, _ request: GetVideoAnalysisTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVideoAnalysisTaskResponse {
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
            "action": "GetVideoAnalysisTask",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/videoAnalysis/getVideoAnalysisTask",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVideoAnalysisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoAnalysisTask(_ workspaceId: String, _ request: GetVideoAnalysisTaskRequest) async throws -> GetVideoAnalysisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getVideoAnalysisTaskWithOptions(workspaceId as! String, request as! GetVideoAnalysisTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoDetectShotConfigWithOptions(_ workspaceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVideoDetectShotConfigResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVideoDetectShotConfig",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/videoAnalysis/getVideoDetectShotConfig",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVideoDetectShotConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoDetectShotConfig(_ workspaceId: String) async throws -> GetVideoDetectShotConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getVideoDetectShotConfigWithOptions(workspaceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoDetectShotTaskWithOptions(_ workspaceId: String, _ request: GetVideoDetectShotTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVideoDetectShotTaskResponse {
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
            "action": "GetVideoDetectShotTask",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/getVideoDetectShotTask",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVideoDetectShotTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoDetectShotTask(_ workspaceId: String, _ request: GetVideoDetectShotTaskRequest) async throws -> GetVideoDetectShotTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getVideoDetectShotTaskWithOptions(workspaceId as! String, request as! GetVideoDetectShotTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotNewsRecommendWithOptions(_ workspaceId: String, _ request: HotNewsRecommendRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> HotNewsRecommendResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotNewsRecommend",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/hotNewsRecommend",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotNewsRecommendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotNewsRecommend(_ workspaceId: String, _ request: HotNewsRecommendRequest) async throws -> HotNewsRecommendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await hotNewsRecommendWithOptions(workspaceId as! String, request as! HotNewsRecommendRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnalysisTagDetailByTaskIdWithOptions(_ workspaceId: String, _ request: ListAnalysisTagDetailByTaskIdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAnalysisTagDetailByTaskIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAnalysisTagDetailByTaskId",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/listAnalysisTagDetailByTaskId",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAnalysisTagDetailByTaskIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAnalysisTagDetailByTaskId(_ workspaceId: String, _ request: ListAnalysisTagDetailByTaskIdRequest) async throws -> ListAnalysisTagDetailByTaskIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAnalysisTagDetailByTaskIdWithOptions(workspaceId as! String, request as! ListAnalysisTagDetailByTaskIdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHotTopicSummariesWithOptions(_ workspaceId: String, _ request: ListHotTopicSummariesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHotTopicSummariesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            body["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hotTopic)) {
            body["hotTopic"] = request.hotTopic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hotTopicVersion)) {
            body["hotTopicVersion"] = request.hotTopicVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHotTopicSummaries",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/listHotTopicSummaries",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHotTopicSummariesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHotTopicSummaries(_ workspaceId: String, _ request: ListHotTopicSummariesRequest) async throws -> ListHotTopicSummariesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listHotTopicSummariesWithOptions(workspaceId as! String, request as! ListHotTopicSummariesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runEnterpriseVocAnalysisWithOptions(_ workspaceId: String, _ tmpReq: RunEnterpriseVocAnalysisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunEnterpriseVocAnalysisResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunEnterpriseVocAnalysisShrinkRequest = RunEnterpriseVocAnalysisShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filterTags)) {
            request.filterTagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterTags, "filterTags", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "tags", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.akProxy)) {
            body["akProxy"] = request.akProxy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiKey)) {
            body["apiKey"] = request.apiKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            body["extraInfo"] = request.extraInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterTagsShrink)) {
            body["filterTags"] = request.filterTagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputFormat)) {
            body["outputFormat"] = request.outputFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTrace)) {
            body["sourceTrace"] = request.sourceTrace!;
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            body["tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDescription)) {
            body["taskDescription"] = request.taskDescription ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunEnterpriseVocAnalysis",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runEnterpriseVocAnalysis",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunEnterpriseVocAnalysisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runEnterpriseVocAnalysis(_ workspaceId: String, _ request: RunEnterpriseVocAnalysisRequest) async throws -> RunEnterpriseVocAnalysisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runEnterpriseVocAnalysisWithOptions(workspaceId as! String, request as! RunEnterpriseVocAnalysisRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runEssayCorrectionWithOptions(_ workspaceId: String, _ request: RunEssayCorrectionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunEssayCorrectionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.answer)) {
            body["answer"] = request.answer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grade)) {
            body["grade"] = request.grade ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otherReviewPoints)) {
            body["otherReviewPoints"] = request.otherReviewPoints ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.question)) {
            body["question"] = request.question ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            body["subject"] = request.subject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalScore)) {
            body["totalScore"] = request.totalScore!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunEssayCorrection",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runEssayCorrection",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunEssayCorrectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runEssayCorrection(_ workspaceId: String, _ request: RunEssayCorrectionRequest) async throws -> RunEssayCorrectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runEssayCorrectionWithOptions(workspaceId as! String, request as! RunEssayCorrectionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runHotTopicChatWithOptions(_ workspaceId: String, _ tmpReq: RunHotTopicChatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunHotTopicChatResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunHotTopicChatShrinkRequest = RunHotTopicChatShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.generateOptions)) {
            request.generateOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.generateOptions, "generateOptions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.hotTopics)) {
            request.hotTopicsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.hotTopics, "hotTopics", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.messages)) {
            request.messagesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.messages, "messages", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.stepForBroadcastContentConfig)) {
            request.stepForBroadcastContentConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.stepForBroadcastContentConfig, "stepForBroadcastContentConfig", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            body["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generateOptionsShrink)) {
            body["generateOptions"] = request.generateOptionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hotTopicVersion)) {
            body["hotTopicVersion"] = request.hotTopicVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hotTopicsShrink)) {
            body["hotTopics"] = request.hotTopicsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageCount)) {
            body["imageCount"] = request.imageCount!;
        }
        if (!TeaUtils.Client.isUnset(request.messagesShrink)) {
            body["messages"] = request.messagesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelCustomPromptTemplate)) {
            body["modelCustomPromptTemplate"] = request.modelCustomPromptTemplate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalSessionId)) {
            body["originalSessionId"] = request.originalSessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stepForBroadcastContentConfigShrink)) {
            body["stepForBroadcastContentConfig"] = request.stepForBroadcastContentConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunHotTopicChat",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runHotTopicChat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunHotTopicChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runHotTopicChat(_ workspaceId: String, _ request: RunHotTopicChatRequest) async throws -> RunHotTopicChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runHotTopicChatWithOptions(workspaceId as! String, request as! RunHotTopicChatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runHotTopicSummaryWithOptions(_ workspaceId: String, _ tmpReq: RunHotTopicSummaryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunHotTopicSummaryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunHotTopicSummaryShrinkRequest = RunHotTopicSummaryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.stepForCustomSummaryStyleConfig)) {
            request.stepForCustomSummaryStyleConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.stepForCustomSummaryStyleConfig, "stepForCustomSummaryStyleConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.topicIds)) {
            request.topicIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.topicIds, "topicIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hotTopicVersion)) {
            body["hotTopicVersion"] = request.hotTopicVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stepForCustomSummaryStyleConfigShrink)) {
            body["stepForCustomSummaryStyleConfig"] = request.stepForCustomSummaryStyleConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicIdsShrink)) {
            body["topicIds"] = request.topicIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunHotTopicSummary",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runHotTopicSummary",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunHotTopicSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runHotTopicSummary(_ workspaceId: String, _ request: RunHotTopicSummaryRequest) async throws -> RunHotTopicSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runHotTopicSummaryWithOptions(workspaceId as! String, request as! RunHotTopicSummaryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runMarketingInformationExtractWithOptions(_ workspaceId: String, _ tmpReq: RunMarketingInformationExtractRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunMarketingInformationExtractResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunMarketingInformationExtractShrinkRequest = RunMarketingInformationExtractShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sourceMaterials)) {
            request.sourceMaterialsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceMaterials, "sourceMaterials", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customPrompt)) {
            body["customPrompt"] = request.customPrompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extractType)) {
            body["extractType"] = request.extractType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceMaterialsShrink)) {
            body["sourceMaterials"] = request.sourceMaterialsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunMarketingInformationExtract",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runMarketingInformationExtract",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunMarketingInformationExtractResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runMarketingInformationExtract(_ workspaceId: String, _ request: RunMarketingInformationExtractRequest) async throws -> RunMarketingInformationExtractResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runMarketingInformationExtractWithOptions(workspaceId as! String, request as! RunMarketingInformationExtractRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runMarketingInformationWritingWithOptions(_ workspaceId: String, _ request: RunMarketingInformationWritingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunMarketingInformationWritingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiKey)) {
            body["apiKey"] = request.apiKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customLimitation)) {
            body["customLimitation"] = request.customLimitation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customPrompt)) {
            body["customPrompt"] = request.customPrompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputExample)) {
            body["inputExample"] = request.inputExample ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputExample)) {
            body["outputExample"] = request.outputExample ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceMaterial)) {
            body["sourceMaterial"] = request.sourceMaterial ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.writingType)) {
            body["writingType"] = request.writingType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunMarketingInformationWriting",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runMarketingInformationWriting",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunMarketingInformationWritingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runMarketingInformationWriting(_ workspaceId: String, _ request: RunMarketingInformationWritingRequest) async throws -> RunMarketingInformationWritingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runMarketingInformationWritingWithOptions(workspaceId as! String, request as! RunMarketingInformationWritingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runNetworkContentAuditWithOptions(_ workspaceId: String, _ tmpReq: RunNetworkContentAuditRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunNetworkContentAuditResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunNetworkContentAuditShrinkRequest = RunNetworkContentAuditShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "tags", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiKey)) {
            body["apiKey"] = request.apiKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessType)) {
            body["businessType"] = request.businessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            body["extraInfo"] = request.extraInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputFormat)) {
            body["outputFormat"] = request.outputFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            body["tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDescription)) {
            body["taskDescription"] = request.taskDescription ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunNetworkContentAudit",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runNetworkContentAudit",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunNetworkContentAuditResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runNetworkContentAudit(_ workspaceId: String, _ request: RunNetworkContentAuditRequest) async throws -> RunNetworkContentAuditResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runNetworkContentAuditWithOptions(workspaceId as! String, request as! RunNetworkContentAuditRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runOcrParseWithOptions(_ workspaceId: String, _ request: RunOcrParseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunOcrParseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileKey)) {
            body["fileKey"] = request.fileKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunOcrParse",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runOcrParse",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunOcrParseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runOcrParse(_ workspaceId: String, _ request: RunOcrParseRequest) async throws -> RunOcrParseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runOcrParseWithOptions(workspaceId as! String, request as! RunOcrParseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runScriptChatWithOptions(_ workspaceId: String, _ request: RunScriptChatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunScriptChatResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunScriptChat",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runScriptChat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunScriptChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runScriptChat(_ workspaceId: String, _ request: RunScriptChatRequest) async throws -> RunScriptChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runScriptChatWithOptions(workspaceId as! String, request as! RunScriptChatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runScriptContinueWithOptions(_ workspaceId: String, _ request: RunScriptContinueRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunScriptContinueResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scriptSummary)) {
            body["scriptSummary"] = request.scriptSummary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scriptTypeKeyword)) {
            body["scriptTypeKeyword"] = request.scriptTypeKeyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userProvidedContent)) {
            body["userProvidedContent"] = request.userProvidedContent ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunScriptContinue",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runScriptContinue",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunScriptContinueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runScriptContinue(_ workspaceId: String, _ request: RunScriptContinueRequest) async throws -> RunScriptContinueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runScriptContinueWithOptions(workspaceId as! String, request as! RunScriptContinueRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runScriptPlanningWithOptions(_ workspaceId: String, _ request: RunScriptPlanningRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunScriptPlanningResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.additionalNote)) {
            body["additionalNote"] = request.additionalNote ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialogueInScene)) {
            body["dialogueInScene"] = request.dialogueInScene!;
        }
        if (!TeaUtils.Client.isUnset(request.plotConflict)) {
            body["plotConflict"] = request.plotConflict!;
        }
        if (!TeaUtils.Client.isUnset(request.scriptName)) {
            body["scriptName"] = request.scriptName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scriptShotCount)) {
            body["scriptShotCount"] = request.scriptShotCount!;
        }
        if (!TeaUtils.Client.isUnset(request.scriptSummary)) {
            body["scriptSummary"] = request.scriptSummary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scriptTypeKeyword)) {
            body["scriptTypeKeyword"] = request.scriptTypeKeyword ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunScriptPlanning",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runScriptPlanning",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunScriptPlanningResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runScriptPlanning(_ workspaceId: String, _ request: RunScriptPlanningRequest) async throws -> RunScriptPlanningResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runScriptPlanningWithOptions(workspaceId as! String, request as! RunScriptPlanningRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runScriptRefineWithOptions(_ workspaceId: String, _ request: RunScriptRefineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunScriptRefineResponse {
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
            "action": "RunScriptRefine",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runScriptRefine",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunScriptRefineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runScriptRefine(_ workspaceId: String, _ request: RunScriptRefineRequest) async throws -> RunScriptRefineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runScriptRefineWithOptions(workspaceId as! String, request as! RunScriptRefineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runStyleWritingWithOptions(_ workspaceId: String, _ tmpReq: RunStyleWritingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunStyleWritingResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunStyleWritingShrinkRequest = RunStyleWritingShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.learningSamples)) {
            request.learningSamplesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.learningSamples, "learningSamples", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.referenceMaterials)) {
            request.referenceMaterialsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.referenceMaterials, "referenceMaterials", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.learningSamplesShrink)) {
            body["learningSamples"] = request.learningSamplesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processStage)) {
            body["processStage"] = request.processStage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referenceMaterialsShrink)) {
            body["referenceMaterials"] = request.referenceMaterialsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.styleFeature)) {
            body["styleFeature"] = request.styleFeature ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useSearch)) {
            body["useSearch"] = request.useSearch!;
        }
        if (!TeaUtils.Client.isUnset(request.writingTheme)) {
            body["writingTheme"] = request.writingTheme ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunStyleWriting",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runStyleWriting",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunStyleWritingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runStyleWriting(_ workspaceId: String, _ request: RunStyleWritingRequest) async throws -> RunStyleWritingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runStyleWritingWithOptions(workspaceId as! String, request as! RunStyleWritingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runTagMiningAnalysisWithOptions(_ workspaceId: String, _ tmpReq: RunTagMiningAnalysisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunTagMiningAnalysisResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunTagMiningAnalysisShrinkRequest = RunTagMiningAnalysisShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "tags", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiKey)) {
            body["apiKey"] = request.apiKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessType)) {
            body["businessType"] = request.businessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            body["extraInfo"] = request.extraInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputFormat)) {
            body["outputFormat"] = request.outputFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            body["tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDescription)) {
            body["taskDescription"] = request.taskDescription ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunTagMiningAnalysis",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runTagMiningAnalysis",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunTagMiningAnalysisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runTagMiningAnalysis(_ workspaceId: String, _ request: RunTagMiningAnalysisRequest) async throws -> RunTagMiningAnalysisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runTagMiningAnalysisWithOptions(workspaceId as! String, request as! RunTagMiningAnalysisRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runVideoAnalysisWithOptions(_ workspaceId: String, _ tmpReq: RunVideoAnalysisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunVideoAnalysisResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunVideoAnalysisShrinkRequest = RunVideoAnalysisShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.addDocumentParam)) {
            request.addDocumentParamShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.addDocumentParam, "addDocumentParam", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.excludeGenerateOptions)) {
            request.excludeGenerateOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.excludeGenerateOptions, "excludeGenerateOptions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.frameSampleMethod)) {
            request.frameSampleMethodShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.frameSampleMethod, "frameSampleMethod", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.generateOptions)) {
            request.generateOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.generateOptions, "generateOptions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.textProcessTasks)) {
            request.textProcessTasksShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.textProcessTasks, "textProcessTasks", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.videoCaptionInfo)) {
            request.videoCaptionInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.videoCaptionInfo, "videoCaptionInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.videoRoles)) {
            request.videoRolesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.videoRoles, "videoRoles", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.videoUrls)) {
            request.videoUrlsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.videoUrls, "videoUrls", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addDocumentParamShrink)) {
            body["addDocumentParam"] = request.addDocumentParamShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoRoleRecognitionVideoUrl)) {
            body["autoRoleRecognitionVideoUrl"] = request.autoRoleRecognitionVideoUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeGenerateOptionsShrink)) {
            body["excludeGenerateOptions"] = request.excludeGenerateOptionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceIdentitySimilarityMinScore)) {
            body["faceIdentitySimilarityMinScore"] = request.faceIdentitySimilarityMinScore!;
        }
        if (!TeaUtils.Client.isUnset(request.frameSampleMethodShrink)) {
            body["frameSampleMethod"] = request.frameSampleMethodShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generateOptionsShrink)) {
            body["generateOptions"] = request.generateOptionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelCustomPromptTemplate)) {
            body["modelCustomPromptTemplate"] = request.modelCustomPromptTemplate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelCustomPromptTemplateId)) {
            body["modelCustomPromptTemplateId"] = request.modelCustomPromptTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalSessionId)) {
            body["originalSessionId"] = request.originalSessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotInterval)) {
            body["snapshotInterval"] = request.snapshotInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.splitInterval)) {
            body["splitInterval"] = request.splitInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.splitType)) {
            body["splitType"] = request.splitType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textProcessTasksShrink)) {
            body["textProcessTasks"] = request.textProcessTasksShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoCaptionInfoShrink)) {
            body["videoCaptionInfo"] = request.videoCaptionInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoExtraInfo)) {
            body["videoExtraInfo"] = request.videoExtraInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoModelCustomPromptTemplate)) {
            body["videoModelCustomPromptTemplate"] = request.videoModelCustomPromptTemplate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoModelId)) {
            body["videoModelId"] = request.videoModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoRolesShrink)) {
            body["videoRoles"] = request.videoRolesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoShotFaceIdentityCount)) {
            body["videoShotFaceIdentityCount"] = request.videoShotFaceIdentityCount!;
        }
        if (!TeaUtils.Client.isUnset(request.videoUrl)) {
            body["videoUrl"] = request.videoUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoUrlsShrink)) {
            body["videoUrls"] = request.videoUrlsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunVideoAnalysis",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runVideoAnalysis",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunVideoAnalysisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runVideoAnalysis(_ workspaceId: String, _ request: RunVideoAnalysisRequest) async throws -> RunVideoAnalysisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runVideoAnalysisWithOptions(workspaceId as! String, request as! RunVideoAnalysisRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runVideoDetectShotWithOptions(_ workspaceId: String, _ tmpReq: RunVideoDetectShotRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunVideoDetectShotResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunVideoDetectShotShrinkRequest = RunVideoDetectShotShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.options)) {
            request.optionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.options, "options", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.recognitionOptions)) {
            request.recognitionOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.recognitionOptions, "recognitionOptions", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.intelliSimpPrompt)) {
            body["intelliSimpPrompt"] = request.intelliSimpPrompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intelliSimpPromptTemplateId)) {
            body["intelliSimpPromptTemplateId"] = request.intelliSimpPromptTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelCustomPromptTemplateId)) {
            body["modelCustomPromptTemplateId"] = request.modelCustomPromptTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelVlCustomPromptTemplateId)) {
            body["modelVlCustomPromptTemplateId"] = request.modelVlCustomPromptTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optionsShrink)) {
            body["options"] = request.optionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalSessionId)) {
            body["originalSessionId"] = request.originalSessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preModelId)) {
            body["preModelId"] = request.preModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recognitionOptionsShrink)) {
            body["recognitionOptions"] = request.recognitionOptionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoUrl)) {
            body["videoUrl"] = request.videoUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vlPrompt)) {
            body["vlPrompt"] = request.vlPrompt ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunVideoDetectShot",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/runVideoDetectShot",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunVideoDetectShotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runVideoDetectShot(_ workspaceId: String, _ request: RunVideoDetectShotRequest) async throws -> RunVideoDetectShotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runVideoDetectShotWithOptions(workspaceId as! String, request as! RunVideoDetectShotRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitEnterpriseVocAnalysisTaskWithOptions(_ workspaceId: String, _ tmpReq: SubmitEnterpriseVocAnalysisTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitEnterpriseVocAnalysisTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitEnterpriseVocAnalysisTaskShrinkRequest = SubmitEnterpriseVocAnalysisTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contents)) {
            request.contentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contents, "contents", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.filterTags)) {
            request.filterTagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterTags, "filterTags", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "tags", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiKey)) {
            body["apiKey"] = request.apiKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentsShrink)) {
            body["contents"] = request.contentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            body["extraInfo"] = request.extraInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileKey)) {
            body["fileKey"] = request.fileKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterTagsShrink)) {
            body["filterTags"] = request.filterTagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputFormat)) {
            body["outputFormat"] = request.outputFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTrace)) {
            body["sourceTrace"] = request.sourceTrace!;
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            body["tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDescription)) {
            body["taskDescription"] = request.taskDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitEnterpriseVocAnalysisTask",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/submitEnterpriseVocAnalysisTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitEnterpriseVocAnalysisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitEnterpriseVocAnalysisTask(_ workspaceId: String, _ request: SubmitEnterpriseVocAnalysisTaskRequest) async throws -> SubmitEnterpriseVocAnalysisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitEnterpriseVocAnalysisTaskWithOptions(workspaceId as! String, request as! SubmitEnterpriseVocAnalysisTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitEssayCorrectionTaskWithOptions(_ workspaceId: String, _ tmpReq: SubmitEssayCorrectionTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitEssayCorrectionTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitEssayCorrectionTaskShrinkRequest = SubmitEssayCorrectionTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tasks)) {
            request.tasksShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tasks, "tasks", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.grade)) {
            body["grade"] = request.grade ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otherReviewPoints)) {
            body["otherReviewPoints"] = request.otherReviewPoints ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.question)) {
            body["question"] = request.question ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            body["subject"] = request.subject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tasksShrink)) {
            body["tasks"] = request.tasksShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalScore)) {
            body["totalScore"] = request.totalScore!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitEssayCorrectionTask",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/submitEssayCorrectionTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitEssayCorrectionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitEssayCorrectionTask(_ workspaceId: String, _ request: SubmitEssayCorrectionTaskRequest) async throws -> SubmitEssayCorrectionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitEssayCorrectionTaskWithOptions(workspaceId as! String, request as! SubmitEssayCorrectionTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitTagMiningAnalysisTaskWithOptions(_ workspaceId: String, _ tmpReq: SubmitTagMiningAnalysisTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitTagMiningAnalysisTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitTagMiningAnalysisTaskShrinkRequest = SubmitTagMiningAnalysisTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contents)) {
            request.contentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contents, "contents", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "tags", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiKey)) {
            body["apiKey"] = request.apiKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessType)) {
            body["businessType"] = request.businessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentsShrink)) {
            body["contents"] = request.contentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            body["extraInfo"] = request.extraInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputFormat)) {
            body["outputFormat"] = request.outputFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            body["tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDescription)) {
            body["taskDescription"] = request.taskDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitTagMiningAnalysisTask",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/submitTagMiningAnalysisTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitTagMiningAnalysisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitTagMiningAnalysisTask(_ workspaceId: String, _ request: SubmitTagMiningAnalysisTaskRequest) async throws -> SubmitTagMiningAnalysisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitTagMiningAnalysisTaskWithOptions(workspaceId as! String, request as! SubmitTagMiningAnalysisTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitVideoAnalysisTaskWithOptions(_ workspaceId: String, _ tmpReq: SubmitVideoAnalysisTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitVideoAnalysisTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitVideoAnalysisTaskShrinkRequest = SubmitVideoAnalysisTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.addDocumentParam)) {
            request.addDocumentParamShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.addDocumentParam, "addDocumentParam", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.excludeGenerateOptions)) {
            request.excludeGenerateOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.excludeGenerateOptions, "excludeGenerateOptions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.frameSampleMethod)) {
            request.frameSampleMethodShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.frameSampleMethod, "frameSampleMethod", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.generateOptions)) {
            request.generateOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.generateOptions, "generateOptions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.textProcessTasks)) {
            request.textProcessTasksShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.textProcessTasks, "textProcessTasks", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.videoCaptionInfo)) {
            request.videoCaptionInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.videoCaptionInfo, "videoCaptionInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.videoRoles)) {
            request.videoRolesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.videoRoles, "videoRoles", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.videoUrls)) {
            request.videoUrlsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.videoUrls, "videoUrls", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addDocumentParamShrink)) {
            body["addDocumentParam"] = request.addDocumentParamShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoRoleRecognitionVideoUrl)) {
            body["autoRoleRecognitionVideoUrl"] = request.autoRoleRecognitionVideoUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deduplicationId)) {
            body["deduplicationId"] = request.deduplicationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeGenerateOptionsShrink)) {
            body["excludeGenerateOptions"] = request.excludeGenerateOptionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceIdentitySimilarityMinScore)) {
            body["faceIdentitySimilarityMinScore"] = request.faceIdentitySimilarityMinScore!;
        }
        if (!TeaUtils.Client.isUnset(request.frameSampleMethodShrink)) {
            body["frameSampleMethod"] = request.frameSampleMethodShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generateOptionsShrink)) {
            body["generateOptions"] = request.generateOptionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelCustomPromptTemplate)) {
            body["modelCustomPromptTemplate"] = request.modelCustomPromptTemplate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelCustomPromptTemplateId)) {
            body["modelCustomPromptTemplateId"] = request.modelCustomPromptTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotInterval)) {
            body["snapshotInterval"] = request.snapshotInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.splitInterval)) {
            body["splitInterval"] = request.splitInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.splitType)) {
            body["splitType"] = request.splitType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textProcessTasksShrink)) {
            body["textProcessTasks"] = request.textProcessTasksShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoCaptionInfoShrink)) {
            body["videoCaptionInfo"] = request.videoCaptionInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoExtraInfo)) {
            body["videoExtraInfo"] = request.videoExtraInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoModelCustomPromptTemplate)) {
            body["videoModelCustomPromptTemplate"] = request.videoModelCustomPromptTemplate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoModelId)) {
            body["videoModelId"] = request.videoModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoRolesShrink)) {
            body["videoRoles"] = request.videoRolesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoShotFaceIdentityCount)) {
            body["videoShotFaceIdentityCount"] = request.videoShotFaceIdentityCount!;
        }
        if (!TeaUtils.Client.isUnset(request.videoUrl)) {
            body["videoUrl"] = request.videoUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoUrlsShrink)) {
            body["videoUrls"] = request.videoUrlsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitVideoAnalysisTask",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/videoAnalysis/submitVideoAnalysisTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitVideoAnalysisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitVideoAnalysisTask(_ workspaceId: String, _ request: SubmitVideoAnalysisTaskRequest) async throws -> SubmitVideoAnalysisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitVideoAnalysisTaskWithOptions(workspaceId as! String, request as! SubmitVideoAnalysisTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitVideoDetectShotTaskWithOptions(_ workspaceId: String, _ tmpReq: SubmitVideoDetectShotTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitVideoDetectShotTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitVideoDetectShotTaskShrinkRequest = SubmitVideoDetectShotTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.options)) {
            request.optionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.options, "options", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.recognitionOptions)) {
            request.recognitionOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.recognitionOptions, "recognitionOptions", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deduplicationId)) {
            body["deduplicationId"] = request.deduplicationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intelliSimpPrompt)) {
            body["intelliSimpPrompt"] = request.intelliSimpPrompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intelliSimpPromptTemplateId)) {
            body["intelliSimpPromptTemplateId"] = request.intelliSimpPromptTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelCustomPromptTemplateId)) {
            body["modelCustomPromptTemplateId"] = request.modelCustomPromptTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelVlCustomPromptTemplateId)) {
            body["modelVlCustomPromptTemplateId"] = request.modelVlCustomPromptTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optionsShrink)) {
            body["options"] = request.optionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalSessionId)) {
            body["originalSessionId"] = request.originalSessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preModelId)) {
            body["preModelId"] = request.preModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recognitionOptionsShrink)) {
            body["recognitionOptions"] = request.recognitionOptionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoUrl)) {
            body["videoUrl"] = request.videoUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vlPrompt)) {
            body["vlPrompt"] = request.vlPrompt ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitVideoDetectShotTask",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/submitVideoDetectShotTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitVideoDetectShotTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitVideoDetectShotTask(_ workspaceId: String, _ request: SubmitVideoDetectShotTaskRequest) async throws -> SubmitVideoDetectShotTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitVideoDetectShotTaskWithOptions(workspaceId as! String, request as! SubmitVideoDetectShotTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVideoAnalysisConfigWithOptions(_ workspaceId: String, _ request: UpdateVideoAnalysisConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateVideoAnalysisConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.asyncConcurrency)) {
            body["asyncConcurrency"] = request.asyncConcurrency!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateVideoAnalysisConfig",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/videoAnalysis/updateVideoAnalysisConfig",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateVideoAnalysisConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVideoAnalysisConfig(_ workspaceId: String, _ request: UpdateVideoAnalysisConfigRequest) async throws -> UpdateVideoAnalysisConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateVideoAnalysisConfigWithOptions(workspaceId as! String, request as! UpdateVideoAnalysisConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVideoAnalysisTaskWithOptions(_ workspaceId: String, _ request: UpdateVideoAnalysisTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateVideoAnalysisTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            body["taskStatus"] = request.taskStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateVideoAnalysisTask",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/videoAnalysis/updateVideoAnalysisTask",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateVideoAnalysisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVideoAnalysisTask(_ workspaceId: String, _ request: UpdateVideoAnalysisTaskRequest) async throws -> UpdateVideoAnalysisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateVideoAnalysisTaskWithOptions(workspaceId as! String, request as! UpdateVideoAnalysisTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVideoAnalysisTasksWithOptions(_ workspaceId: String, _ tmpReq: UpdateVideoAnalysisTasksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateVideoAnalysisTasksResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateVideoAnalysisTasksShrinkRequest = UpdateVideoAnalysisTasksShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.taskIds)) {
            request.taskIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.taskIds, "taskIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskIdsShrink)) {
            body["taskIds"] = request.taskIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            body["taskStatus"] = request.taskStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateVideoAnalysisTasks",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/videoAnalysis/updateVideoAnalysisTasks",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateVideoAnalysisTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVideoAnalysisTasks(_ workspaceId: String, _ request: UpdateVideoAnalysisTasksRequest) async throws -> UpdateVideoAnalysisTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateVideoAnalysisTasksWithOptions(workspaceId as! String, request as! UpdateVideoAnalysisTasksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVideoDetectShotConfigWithOptions(_ workspaceId: String, _ request: UpdateVideoDetectShotConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateVideoDetectShotConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.asyncConcurrency)) {
            body["asyncConcurrency"] = request.asyncConcurrency!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateVideoDetectShotConfig",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/videoAnalysis/updateVideoDetectShotConfig",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateVideoDetectShotConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVideoDetectShotConfig(_ workspaceId: String, _ request: UpdateVideoDetectShotConfigRequest) async throws -> UpdateVideoDetectShotConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateVideoDetectShotConfigWithOptions(workspaceId as! String, request as! UpdateVideoDetectShotConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVideoDetectShotTaskWithOptions(_ workspaceId: String, _ request: UpdateVideoDetectShotTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateVideoDetectShotTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            body["taskStatus"] = request.taskStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateVideoDetectShotTask",
            "version": "2024-08-01",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/quanmiao/lightapp/updateVideoDetectShotTask",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateVideoDetectShotTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVideoDetectShotTask(_ workspaceId: String, _ request: UpdateVideoDetectShotTaskRequest) async throws -> UpdateVideoDetectShotTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateVideoDetectShotTaskWithOptions(workspaceId as! String, request as! UpdateVideoDetectShotTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
