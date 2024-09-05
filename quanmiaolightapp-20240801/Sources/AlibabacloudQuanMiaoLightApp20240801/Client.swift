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
        if (!TeaUtils.Client.isUnset(request.customPrompt)) {
            body["customPrompt"] = request.customPrompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
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
    public func runVideoAnalysisWithOptions(_ workspaceId: String, _ tmpReq: RunVideoAnalysisRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunVideoAnalysisResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunVideoAnalysisShrinkRequest = RunVideoAnalysisShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.generateOptions)) {
            request.generateOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.generateOptions, "generateOptions", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.generateOptionsShrink)) {
            body["generateOptions"] = request.generateOptionsShrink ?? "";
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
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoModelCustomPromptTemplate)) {
            body["videoModelCustomPromptTemplate"] = request.videoModelCustomPromptTemplate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoModelId)) {
            body["videoModelId"] = request.videoModelId ?? "";
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
}
