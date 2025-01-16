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
        self._endpoint = try getEndpoint("aicontent", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func aITeacherExpansionPracticeTaskGenerateWithOptions(_ request: AITeacherExpansionPracticeTaskGenerateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AITeacherExpansionPracticeTaskGenerateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.grade)) {
            body["grade"] = request.grade ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keySentences)) {
            body["keySentences"] = request.keySentences ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.keyWords)) {
            body["keyWords"] = request.keyWords ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.learningObject)) {
            body["learningObject"] = request.learningObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textContent)) {
            body["textContent"] = request.textContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textbook)) {
            body["textbook"] = request.textbook ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AITeacherExpansionPracticeTaskGenerate",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/expansionPractice/generateTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AITeacherExpansionPracticeTaskGenerateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aITeacherExpansionPracticeTaskGenerate(_ request: AITeacherExpansionPracticeTaskGenerateRequest) async throws -> AITeacherExpansionPracticeTaskGenerateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await aITeacherExpansionPracticeTaskGenerateWithOptions(request as! AITeacherExpansionPracticeTaskGenerateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aITeacherSyncPracticeTaskGenerateWithOptions(_ request: AITeacherSyncPracticeTaskGenerateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AITeacherSyncPracticeTaskGenerateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.grade)) {
            body["grade"] = request.grade ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keySentences)) {
            body["keySentences"] = request.keySentences ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.keyWords)) {
            body["keyWords"] = request.keyWords ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.learningObject)) {
            body["learningObject"] = request.learningObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textContent)) {
            body["textContent"] = request.textContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textbook)) {
            body["textbook"] = request.textbook ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AITeacherSyncPracticeTaskGenerate",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/syncPractice/generateTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AITeacherSyncPracticeTaskGenerateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aITeacherSyncPracticeTaskGenerate(_ request: AITeacherSyncPracticeTaskGenerateRequest) async throws -> AITeacherSyncPracticeTaskGenerateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await aITeacherSyncPracticeTaskGenerateWithOptions(request as! AITeacherSyncPracticeTaskGenerateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aliyunConsoleOpenApiQueryAliyunConsoleServcieListWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AliyunConsoleOpenApiQueryAliyunConsoleServcieList",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aliyunconsole/queryAliyunConsoleServcieList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aliyunConsoleOpenApiQueryAliyunConsoleServcieList() async throws -> AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await aliyunConsoleOpenApiQueryAliyunConsoleServcieListWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aliyunConsoleOpenApiQueryAliyunConsoleServiceListWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AliyunConsoleOpenApiQueryAliyunConsoleServiceList",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aliyunconsole/queryAliyunConsoleServiceList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aliyunConsoleOpenApiQueryAliyunConsoleServiceList() async throws -> AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await aliyunConsoleOpenApiQueryAliyunConsoleServiceListWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherExpansionDialogueWithOptions(_ request: ExecuteAITeacherExpansionDialogueRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteAITeacherExpansionDialogueResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.background)) {
            body["background"] = request.background ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialogueTasks)) {
            body["dialogueTasks"] = request.dialogueTasks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.languageCode)) {
            body["languageCode"] = request.languageCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.records)) {
            body["records"] = request.records ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.roleInfo)) {
            body["roleInfo"] = request.roleInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.startSentence)) {
            body["startSentence"] = request.startSentence ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteAITeacherExpansionDialogue",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/expansionPractice/executeExpansionTraining",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteAITeacherExpansionDialogueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherExpansionDialogue(_ request: ExecuteAITeacherExpansionDialogueRequest) async throws -> ExecuteAITeacherExpansionDialogueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeAITeacherExpansionDialogueWithOptions(request as! ExecuteAITeacherExpansionDialogueRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherExpansionDialogueRefineWithOptions(_ request: ExecuteAITeacherExpansionDialogueRefineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteAITeacherExpansionDialogueRefineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.background)) {
            body["background"] = request.background ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialogueTasks)) {
            body["dialogueTasks"] = request.dialogueTasks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.languageCode)) {
            body["languageCode"] = request.languageCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.records)) {
            body["records"] = request.records ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.roleInfo)) {
            body["roleInfo"] = request.roleInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.startSentence)) {
            body["startSentence"] = request.startSentence ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteAITeacherExpansionDialogueRefine",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/expansionPractice/refineByContext",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteAITeacherExpansionDialogueRefineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherExpansionDialogueRefine(_ request: ExecuteAITeacherExpansionDialogueRefineRequest) async throws -> ExecuteAITeacherExpansionDialogueRefineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeAITeacherExpansionDialogueRefineWithOptions(request as! ExecuteAITeacherExpansionDialogueRefineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherExpansionDialogueTranslateWithOptions(_ request: ExecuteAITeacherExpansionDialogueTranslateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteAITeacherExpansionDialogueTranslateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.background)) {
            body["background"] = request.background ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialogueTasks)) {
            body["dialogueTasks"] = request.dialogueTasks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.records)) {
            body["records"] = request.records ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.roleInfo)) {
            body["roleInfo"] = request.roleInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.startSentence)) {
            body["startSentence"] = request.startSentence ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteAITeacherExpansionDialogueTranslate",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/expansionPractice/translate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteAITeacherExpansionDialogueTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherExpansionDialogueTranslate(_ request: ExecuteAITeacherExpansionDialogueTranslateRequest) async throws -> ExecuteAITeacherExpansionDialogueTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeAITeacherExpansionDialogueTranslateWithOptions(request as! ExecuteAITeacherExpansionDialogueTranslateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherGrammarCheckWithOptions(_ request: ExecuteAITeacherGrammarCheckRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteAITeacherGrammarCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteAITeacherGrammarCheck",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/common/grammarChecking",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteAITeacherGrammarCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherGrammarCheck(_ request: ExecuteAITeacherGrammarCheckRequest) async throws -> ExecuteAITeacherGrammarCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeAITeacherGrammarCheckWithOptions(request as! ExecuteAITeacherGrammarCheckRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherSyncDialogueWithOptions(_ request: ExecuteAITeacherSyncDialogueRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteAITeacherSyncDialogueResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dialogueTasks)) {
            body["dialogueTasks"] = request.dialogueTasks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.languageCode)) {
            body["languageCode"] = request.languageCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.records)) {
            body["records"] = request.records ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteAITeacherSyncDialogue",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/syncPractice/executeSyncTraining",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteAITeacherSyncDialogueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherSyncDialogue(_ request: ExecuteAITeacherSyncDialogueRequest) async throws -> ExecuteAITeacherSyncDialogueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeAITeacherSyncDialogueWithOptions(request as! ExecuteAITeacherSyncDialogueRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherSyncDialogueTranslateWithOptions(_ request: ExecuteAITeacherSyncDialogueTranslateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteAITeacherSyncDialogueTranslateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dialogueTasks)) {
            body["dialogueTasks"] = request.dialogueTasks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.records)) {
            body["records"] = request.records ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteAITeacherSyncDialogueTranslate",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/syncPractice/translate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteAITeacherSyncDialogueTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherSyncDialogueTranslate(_ request: ExecuteAITeacherSyncDialogueTranslateRequest) async throws -> ExecuteAITeacherSyncDialogueTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeAITeacherSyncDialogueTranslateWithOptions(request as! ExecuteAITeacherSyncDialogueTranslateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantDialogueWithOptions(_ request: ExecuteTextbookAssistantDialogueRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteTextbookAssistantDialogueResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authToken)) {
            body["authToken"] = request.authToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chatId)) {
            body["chatId"] = request.chatId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenario)) {
            body["scenario"] = request.scenario ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userMessage)) {
            body["userMessage"] = request.userMessage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteTextbookAssistantDialogue",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/textbookAssistant/dialogue/ExecuteDialogue",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteTextbookAssistantDialogueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantDialogue(_ request: ExecuteTextbookAssistantDialogueRequest) async throws -> ExecuteTextbookAssistantDialogueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeTextbookAssistantDialogueWithOptions(request as! ExecuteTextbookAssistantDialogueRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantDifficultyWithOptions(_ request: ExecuteTextbookAssistantDifficultyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteTextbookAssistantDifficultyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.action)) {
            body["action"] = request.action ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assistant)) {
            body["assistant"] = request.assistant ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authToken)) {
            body["authToken"] = request.authToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chatId)) {
            body["chatId"] = request.chatId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenario)) {
            body["scenario"] = request.scenario ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteTextbookAssistantDifficulty",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/textbookAssistant/dialogue/ExecuteDifficulty",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteTextbookAssistantDifficultyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantDifficulty(_ request: ExecuteTextbookAssistantDifficultyRequest) async throws -> ExecuteTextbookAssistantDifficultyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeTextbookAssistantDifficultyWithOptions(request as! ExecuteTextbookAssistantDifficultyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantGrammarCheckWithOptions(_ request: ExecuteTextbookAssistantGrammarCheckRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteTextbookAssistantGrammarCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authToken)) {
            body["authToken"] = request.authToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chatId)) {
            body["chatId"] = request.chatId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenario)) {
            body["scenario"] = request.scenario ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.user)) {
            body["user"] = request.user ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteTextbookAssistantGrammarCheck",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/textbookAssistant/dialogue/ExecuteGrammarCheck",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteTextbookAssistantGrammarCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantGrammarCheck(_ request: ExecuteTextbookAssistantGrammarCheckRequest) async throws -> ExecuteTextbookAssistantGrammarCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeTextbookAssistantGrammarCheckWithOptions(request as! ExecuteTextbookAssistantGrammarCheckRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantRefineByContextWithOptions(_ request: ExecuteTextbookAssistantRefineByContextRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteTextbookAssistantRefineByContextResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authToken)) {
            body["authToken"] = request.authToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chatId)) {
            body["chatId"] = request.chatId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenario)) {
            body["scenario"] = request.scenario ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.user)) {
            body["user"] = request.user ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteTextbookAssistantRefineByContext",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/textbookAssistant/dialogue/RefineByContext",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteTextbookAssistantRefineByContextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantRefineByContext(_ request: ExecuteTextbookAssistantRefineByContextRequest) async throws -> ExecuteTextbookAssistantRefineByContextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeTextbookAssistantRefineByContextWithOptions(request as! ExecuteTextbookAssistantRefineByContextRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantRetryConversationWithOptions(_ request: ExecuteTextbookAssistantRetryConversationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteTextbookAssistantRetryConversationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assistant)) {
            body["assistant"] = request.assistant ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authToken)) {
            body["authToken"] = request.authToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chatId)) {
            body["chatId"] = request.chatId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenario)) {
            body["scenario"] = request.scenario ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteTextbookAssistantRetryConversation",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/textbookAssistant/dialogue/RetryConversation",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteTextbookAssistantRetryConversationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantRetryConversation(_ request: ExecuteTextbookAssistantRetryConversationRequest) async throws -> ExecuteTextbookAssistantRetryConversationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeTextbookAssistantRetryConversationWithOptions(request as! ExecuteTextbookAssistantRetryConversationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantStartConversationWithOptions(_ request: ExecuteTextbookAssistantStartConversationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteTextbookAssistantStartConversationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.articleId)) {
            body["articleId"] = request.articleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authToken)) {
            body["authToken"] = request.authToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenario)) {
            body["scenario"] = request.scenario ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteTextbookAssistantStartConversation",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/textbookAssistant/dialogue/StartConversation",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteTextbookAssistantStartConversationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantStartConversation(_ request: ExecuteTextbookAssistantStartConversationRequest) async throws -> ExecuteTextbookAssistantStartConversationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeTextbookAssistantStartConversationWithOptions(request as! ExecuteTextbookAssistantStartConversationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantSuggestionWithOptions(_ request: ExecuteTextbookAssistantSuggestionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteTextbookAssistantSuggestionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assistant)) {
            body["assistant"] = request.assistant ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authToken)) {
            body["authToken"] = request.authToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chatId)) {
            body["chatId"] = request.chatId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenario)) {
            body["scenario"] = request.scenario ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteTextbookAssistantSuggestion",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/textbookAssistant/dialogue/Suggestion",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteTextbookAssistantSuggestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantSuggestion(_ request: ExecuteTextbookAssistantSuggestionRequest) async throws -> ExecuteTextbookAssistantSuggestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeTextbookAssistantSuggestionWithOptions(request as! ExecuteTextbookAssistantSuggestionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantTranslateWithOptions(_ request: ExecuteTextbookAssistantTranslateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteTextbookAssistantTranslateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assistant)) {
            body["assistant"] = request.assistant ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authToken)) {
            body["authToken"] = request.authToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chatId)) {
            body["chatId"] = request.chatId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenario)) {
            body["scenario"] = request.scenario ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteTextbookAssistantTranslate",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/textbookAssistant/dialogue/ExecuteTranslate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteTextbookAssistantTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeTextbookAssistantTranslate(_ request: ExecuteTextbookAssistantTranslateRequest) async throws -> ExecuteTextbookAssistantTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeTextbookAssistantTranslateWithOptions(request as! ExecuteTextbookAssistantTranslateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAITeacherExpansionDialogueSuggestionWithOptions(_ request: GetAITeacherExpansionDialogueSuggestionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAITeacherExpansionDialogueSuggestionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.background)) {
            body["background"] = request.background ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialogueTasks)) {
            body["dialogueTasks"] = request.dialogueTasks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.languageCode)) {
            body["languageCode"] = request.languageCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.records)) {
            body["records"] = request.records ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.roleInfo)) {
            body["roleInfo"] = request.roleInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.startSentence)) {
            body["startSentence"] = request.startSentence ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAITeacherExpansionDialogueSuggestion",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/expansionPractice/suggestion",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAITeacherExpansionDialogueSuggestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAITeacherExpansionDialogueSuggestion(_ request: GetAITeacherExpansionDialogueSuggestionRequest) async throws -> GetAITeacherExpansionDialogueSuggestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAITeacherExpansionDialogueSuggestionWithOptions(request as! GetAITeacherExpansionDialogueSuggestionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAITeacherSyncDialogueSuggestionWithOptions(_ request: GetAITeacherSyncDialogueSuggestionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAITeacherSyncDialogueSuggestionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dialogueTasks)) {
            body["dialogueTasks"] = request.dialogueTasks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.languageCode)) {
            body["languageCode"] = request.languageCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.records)) {
            body["records"] = request.records ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAITeacherSyncDialogueSuggestion",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/syncPractice/suggestion",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAITeacherSyncDialogueSuggestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAITeacherSyncDialogueSuggestion(_ request: GetAITeacherSyncDialogueSuggestionRequest) async throws -> GetAITeacherSyncDialogueSuggestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAITeacherSyncDialogueSuggestionWithOptions(request as! GetAITeacherSyncDialogueSuggestionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTextbookAssistantTokenWithOptions(_ request: GetTextbookAssistantTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTextbookAssistantTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["deviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["model"] = request.model ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTextbookAssistantToken",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/textbookAssistant/teachingResource/GetToken",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTextbookAssistantTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTextbookAssistantToken(_ request: GetTextbookAssistantTokenRequest) async throws -> GetTextbookAssistantTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTextbookAssistantTokenWithOptions(request as! GetTextbookAssistantTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTextbookAssistantArticlesWithOptions(_ request: ListTextbookAssistantArticlesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTextbookAssistantArticlesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authToken)) {
            body["authToken"] = request.authToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            body["directoryId"] = request.directoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTextbookAssistantArticles",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/textbookAssistant/teachingResource/ListArticles",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTextbookAssistantArticlesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTextbookAssistantArticles(_ request: ListTextbookAssistantArticlesRequest) async throws -> ListTextbookAssistantArticlesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTextbookAssistantArticlesWithOptions(request as! ListTextbookAssistantArticlesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTextbookAssistantBookDirectoriesWithOptions(_ request: ListTextbookAssistantBookDirectoriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTextbookAssistantBookDirectoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authToken)) {
            body["authToken"] = request.authToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bookId)) {
            body["bookId"] = request.bookId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenario)) {
            body["scenario"] = request.scenario ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTextbookAssistantBookDirectories",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/textbookAssistant/teachingResource/ListBookDirectories",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTextbookAssistantBookDirectoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTextbookAssistantBookDirectories(_ request: ListTextbookAssistantBookDirectoriesRequest) async throws -> ListTextbookAssistantBookDirectoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTextbookAssistantBookDirectoriesWithOptions(request as! ListTextbookAssistantBookDirectoriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTextbookAssistantBooksWithOptions(_ request: ListTextbookAssistantBooksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTextbookAssistantBooksResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authToken)) {
            body["authToken"] = request.authToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bookId)) {
            body["bookId"] = request.bookId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grade)) {
            body["grade"] = request.grade ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volume)) {
            body["volume"] = request.volume ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTextbookAssistantBooks",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/textbookAssistant/teachingResource/ListBooks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTextbookAssistantBooksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTextbookAssistantBooks(_ request: ListTextbookAssistantBooksRequest) async throws -> ListTextbookAssistantBooksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTextbookAssistantBooksWithOptions(request as! ListTextbookAssistantBooksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTextbookAssistantGradeVolumesWithOptions(_ request: ListTextbookAssistantGradeVolumesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTextbookAssistantGradeVolumesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authToken)) {
            body["authToken"] = request.authToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenario)) {
            body["scenario"] = request.scenario ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTextbookAssistantGradeVolumes",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/textbookAssistant/teachingResource/ListGradeVolumes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTextbookAssistantGradeVolumesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTextbookAssistantGradeVolumes(_ request: ListTextbookAssistantGradeVolumesRequest) async throws -> ListTextbookAssistantGradeVolumesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTextbookAssistantGradeVolumesWithOptions(request as! ListTextbookAssistantGradeVolumesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageAddInferenceJobWithOptions(_ request: PersonalizedTextToImageAddInferenceJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PersonalizedTextToImageAddInferenceJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageNumber)) {
            body["imageNumber"] = request.imageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["imageUrl"] = request.imageUrl ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seed)) {
            body["seed"] = request.seed!;
        }
        if (!TeaUtils.Client.isUnset(request.strength)) {
            body["strength"] = request.strength!;
        }
        if (!TeaUtils.Client.isUnset(request.trainSteps)) {
            body["trainSteps"] = request.trainSteps!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PersonalizedTextToImageAddInferenceJob",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/addPreModelInferenceJob",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PersonalizedTextToImageAddInferenceJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageAddInferenceJob(_ request: PersonalizedTextToImageAddInferenceJobRequest) async throws -> PersonalizedTextToImageAddInferenceJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedTextToImageAddInferenceJobWithOptions(request as! PersonalizedTextToImageAddInferenceJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageQueryImageAssetWithOptions(_ request: PersonalizedTextToImageQueryImageAssetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PersonalizedTextToImageQueryImageAssetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encodeFormat)) {
            query["encodeFormat"] = request.encodeFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["imageId"] = request.imageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PersonalizedTextToImageQueryImageAsset",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryImageAssetFromImageId",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "any"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PersonalizedTextToImageQueryImageAssetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageQueryImageAsset(_ request: PersonalizedTextToImageQueryImageAssetRequest) async throws -> PersonalizedTextToImageQueryImageAssetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedTextToImageQueryImageAssetWithOptions(request as! PersonalizedTextToImageQueryImageAssetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageQueryPreModelInferenceJobInfoWithOptions(_ request: PersonalizedTextToImageQueryPreModelInferenceJobInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PersonalizedTextToImageQueryPreModelInferenceJobInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.inferenceJobId)) {
            query["inferenceJobId"] = request.inferenceJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PersonalizedTextToImageQueryPreModelInferenceJobInfo",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryPreModelInferenceJobInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PersonalizedTextToImageQueryPreModelInferenceJobInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageQueryPreModelInferenceJobInfo(_ request: PersonalizedTextToImageQueryPreModelInferenceJobInfoRequest) async throws -> PersonalizedTextToImageQueryPreModelInferenceJobInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedTextToImageQueryPreModelInferenceJobInfoWithOptions(request as! PersonalizedTextToImageQueryPreModelInferenceJobInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgAddInferenceJobWithOptions(_ request: Personalizedtxt2imgAddInferenceJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgAddInferenceJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageNumber)) {
            body["imageNumber"] = request.imageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seed)) {
            body["seed"] = request.seed!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgAddInferenceJob",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/addInferenceJob",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgAddInferenceJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgAddInferenceJob(_ request: Personalizedtxt2imgAddInferenceJobRequest) async throws -> Personalizedtxt2imgAddInferenceJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgAddInferenceJobWithOptions(request as! Personalizedtxt2imgAddInferenceJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgAddModelTrainJobWithOptions(_ request: Personalizedtxt2imgAddModelTrainJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgAddModelTrainJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["imageUrl"] = request.imageUrl ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            body["objectType"] = request.objectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trainSteps)) {
            body["trainSteps"] = request.trainSteps!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgAddModelTrainJob",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/addModelTrainJob",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgAddModelTrainJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgAddModelTrainJob(_ request: Personalizedtxt2imgAddModelTrainJobRequest) async throws -> Personalizedtxt2imgAddModelTrainJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgAddModelTrainJobWithOptions(request as! Personalizedtxt2imgAddModelTrainJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryImageAssetWithOptions(_ request: Personalizedtxt2imgQueryImageAssetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgQueryImageAssetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encodeFormat)) {
            query["encodeFormat"] = request.encodeFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["imageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            query["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptId)) {
            query["promptId"] = request.promptId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgQueryImageAsset",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryImageAsset",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "any"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgQueryImageAssetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryImageAsset(_ request: Personalizedtxt2imgQueryImageAssetRequest) async throws -> Personalizedtxt2imgQueryImageAssetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgQueryImageAssetWithOptions(request as! Personalizedtxt2imgQueryImageAssetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryInferenceJobInfoWithOptions(_ request: Personalizedtxt2imgQueryInferenceJobInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgQueryInferenceJobInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.inferenceJobId)) {
            query["inferenceJobId"] = request.inferenceJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgQueryInferenceJobInfo",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryInferenceJobInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgQueryInferenceJobInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryInferenceJobInfo(_ request: Personalizedtxt2imgQueryInferenceJobInfoRequest) async throws -> Personalizedtxt2imgQueryInferenceJobInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgQueryInferenceJobInfoWithOptions(request as! Personalizedtxt2imgQueryInferenceJobInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryModelTrainJobListWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgQueryModelTrainJobListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgQueryModelTrainJobList",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryModelTrainJobList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgQueryModelTrainJobListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryModelTrainJobList() async throws -> Personalizedtxt2imgQueryModelTrainJobListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgQueryModelTrainJobListWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryModelTrainStatusWithOptions(_ request: Personalizedtxt2imgQueryModelTrainStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgQueryModelTrainStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            query["modelId"] = request.modelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgQueryModelTrainStatus",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryModelTrainStatus",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgQueryModelTrainStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryModelTrainStatus(_ request: Personalizedtxt2imgQueryModelTrainStatusRequest) async throws -> Personalizedtxt2imgQueryModelTrainStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgQueryModelTrainStatusWithOptions(request as! Personalizedtxt2imgQueryModelTrainStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
