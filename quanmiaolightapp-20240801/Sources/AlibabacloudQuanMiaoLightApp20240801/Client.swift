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
        if (!TeaUtils.Client.isUnset(request.referenceMaterialsShrink)) {
            body["referenceMaterials"] = request.referenceMaterialsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.styleFeature)) {
            body["styleFeature"] = request.styleFeature ?? "";
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
        if (!TeaUtils.Client.isUnset(tmpReq.frameSampleMethod)) {
            request.frameSampleMethodShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.frameSampleMethod, "frameSampleMethod", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.generateOptions)) {
            request.generateOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.generateOptions, "generateOptions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.videoRoles)) {
            request.videoRolesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.videoRoles, "videoRoles", "json")
        }
        var body: [String: Any] = [:]
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
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.videoUrl)) {
            body["videoUrl"] = request.videoUrl ?? "";
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
    public func submitVideoAnalysisTaskWithOptions(_ workspaceId: String, _ tmpReq: SubmitVideoAnalysisTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitVideoAnalysisTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitVideoAnalysisTaskShrinkRequest = SubmitVideoAnalysisTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.frameSampleMethod)) {
            request.frameSampleMethodShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.frameSampleMethod, "frameSampleMethod", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.generateOptions)) {
            request.generateOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.generateOptions, "generateOptions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.videoRoles)) {
            request.videoRolesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.videoRoles, "videoRoles", "json")
        }
        var body: [String: Any] = [:]
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
        if (!TeaUtils.Client.isUnset(request.videoUrl)) {
            body["videoUrl"] = request.videoUrl ?? "";
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
}
