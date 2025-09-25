import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = ""
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("dianjin", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func _postOSSObject(_ bucketName: String, _ data: [String: Any]) async throws -> [String: Any] {
        var _request: Tea.TeaRequest = Tea.TeaRequest()
        var form: [String: Any] = try TeaUtils.Client.assertAsMap(data)
        var boundary: String = TeaFileForm.Client.getBoundary()
        var host: String = try TeaUtils.Client.assertAsString(form["host"])
        _request.protocol_ = "HTTPS"
        _request.method = "POST"
        _request.pathname = "/"
        _request.headers = [
            "host": host as! String,
            "date": TeaUtils.Client.getDateUTCString(),
            "user-agent": TeaUtils.Client.getUserAgent("")
        ]
        _request.headers["content-type"] = "multipart/form-data; boundary=" + (boundary as! String);
        _request.body = TeaFileForm.Client.toFileForm(form, boundary)
        var _lastRequest: Tea.TeaRequest = _request
        var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request)
        var respMap: [String: Any]? = nil
        var bodyStr: String = try await TeaUtils.Client.readAsString(_response.body)
        if (TeaUtils.Client.is4xx(_response.statusCode) || TeaUtils.Client.is5xx(_response.statusCode)) {
            respMap = DarabonbaXML.Client.parseXml(bodyStr, nil)
            var err: [String: Any] = try TeaUtils.Client.assertAsMap(respMap["Error"])
            throw Tea.ReuqestError([
                "code": err["Code"]!,
                "message": err["Message"]!,
                "data": [
                    "httpCode": _response.statusCode,
                    "requestId": err["RequestId"]!,
                    "hostId": err["HostId"]!
                ]
            ])
        }
        respMap = DarabonbaXML.Client.parseXml(bodyStr, nil)
        return Tea.TeaConverter.merge([:], respMap)
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
    public func createAnnualDocSummaryTaskWithOptions(_ workspaceId: String, _ request: CreateAnnualDocSummaryTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAnnualDocSummaryTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.anaYears)) {
            body["anaYears"] = request.anaYears ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.docInfos)) {
            body["docInfos"] = request.docInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.enableTable)) {
            body["enableTable"] = request.enableTable!;
        }
        if (!TeaUtils.Client.isUnset(request.instruction)) {
            body["instruction"] = request.instruction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAnnualDocSummaryTask",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/task/summary/doc/annual",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAnnualDocSummaryTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAnnualDocSummaryTask(_ workspaceId: String, _ request: CreateAnnualDocSummaryTaskRequest) async throws -> CreateAnnualDocSummaryTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAnnualDocSummaryTaskWithOptions(workspaceId as! String, request as! CreateAnnualDocSummaryTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDialogWithOptions(_ workspaceId: String, _ request: CreateDialogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDialogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channel)) {
            body["channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableLibrary)) {
            body["enableLibrary"] = request.enableLibrary!;
        }
        if (!TeaUtils.Client.isUnset(request.metaData)) {
            body["metaData"] = request.metaData ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.playCode)) {
            body["playCode"] = request.playCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qaLibraryList)) {
            body["qaLibraryList"] = request.qaLibraryList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.selfDirected)) {
            body["selfDirected"] = request.selfDirected!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDialog",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/virtualHuman/dialog/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDialogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDialog(_ workspaceId: String, _ request: CreateDialogRequest) async throws -> CreateDialogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDialogWithOptions(workspaceId as! String, request as! CreateDialogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDialogAnalysisTaskWithOptions(_ workspaceId: String, _ request: CreateDialogAnalysisTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDialogAnalysisTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.analysisNodes)) {
            body["analysisNodes"] = request.analysisNodes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.conversationList)) {
            body["conversationList"] = request.conversationList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.metaData)) {
            body["metaData"] = request.metaData ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.playCode)) {
            body["playCode"] = request.playCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDialogAnalysisTask",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/virtualHuman/dialog/analysis/submit",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDialogAnalysisTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDialogAnalysisTask(_ workspaceId: String, _ request: CreateDialogAnalysisTaskRequest) async throws -> CreateDialogAnalysisTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDialogAnalysisTaskWithOptions(workspaceId as! String, request as! CreateDialogAnalysisTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDocsSummaryTaskWithOptions(_ workspaceId: String, _ request: CreateDocsSummaryTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDocsSummaryTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docInfos)) {
            body["docInfos"] = request.docInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.enableTable)) {
            body["enableTable"] = request.enableTable!;
        }
        if (!TeaUtils.Client.isUnset(request.instruction)) {
            body["instruction"] = request.instruction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDocsSummaryTask",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/task/summary/docs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDocsSummaryTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDocsSummaryTask(_ workspaceId: String, _ request: CreateDocsSummaryTaskRequest) async throws -> CreateDocsSummaryTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDocsSummaryTaskWithOptions(workspaceId as! String, request as! CreateDocsSummaryTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFinReportSummaryTaskWithOptions(_ workspaceId: String, _ request: CreateFinReportSummaryTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFinReportSummaryTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docId)) {
            body["docId"] = request.docId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableTable)) {
            body["enableTable"] = request.enableTable!;
        }
        if (!TeaUtils.Client.isUnset(request.endPage)) {
            body["endPage"] = request.endPage!;
        }
        if (!TeaUtils.Client.isUnset(request.instruction)) {
            body["instruction"] = request.instruction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            body["libraryId"] = request.libraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startPage)) {
            body["startPage"] = request.startPage!;
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["taskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFinReportSummaryTask",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/task/summary",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFinReportSummaryTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFinReportSummaryTask(_ workspaceId: String, _ request: CreateFinReportSummaryTaskRequest) async throws -> CreateFinReportSummaryTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createFinReportSummaryTaskWithOptions(workspaceId as! String, request as! CreateFinReportSummaryTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLibraryWithOptions(_ workspaceId: String, _ request: CreateLibraryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLibraryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexSetting)) {
            body["indexSetting"] = request.indexSetting!;
        }
        if (!TeaUtils.Client.isUnset(request.libraryName)) {
            body["libraryName"] = request.libraryName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLibrary",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLibraryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLibrary(_ workspaceId: String, _ request: CreateLibraryRequest) async throws -> CreateLibraryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createLibraryWithOptions(workspaceId as! String, request as! CreateLibraryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPdfTranslateTaskWithOptions(_ workspaceId: String, _ request: CreatePdfTranslateTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePdfTranslateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docId)) {
            body["docId"] = request.docId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.knowledge)) {
            body["knowledge"] = request.knowledge ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            body["libraryId"] = request.libraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.translateTo)) {
            body["translateTo"] = request.translateTo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePdfTranslateTask",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/task/pdfTranslate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePdfTranslateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPdfTranslateTask(_ workspaceId: String, _ request: CreatePdfTranslateTaskRequest) async throws -> CreatePdfTranslateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPdfTranslateTaskWithOptions(workspaceId as! String, request as! CreatePdfTranslateTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPredefinedDocumentWithOptions(_ workspaceId: String, _ request: CreatePredefinedDocumentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePredefinedDocumentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chunks)) {
            body["chunks"] = request.chunks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            body["libraryId"] = request.libraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metadata)) {
            body["metadata"] = request.metadata ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePredefinedDocument",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/document/createPredefinedDocument",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePredefinedDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPredefinedDocument(_ workspaceId: String, _ request: CreatePredefinedDocumentRequest) async throws -> CreatePredefinedDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPredefinedDocumentWithOptions(workspaceId as! String, request as! CreatePredefinedDocumentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQualityCheckTaskWithOptions(_ workspaceId: String, _ request: CreateQualityCheckTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateQualityCheckTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.conversationList)) {
            body["conversationList"] = request.conversationList!;
        }
        if (!TeaUtils.Client.isUnset(request.gmtService)) {
            body["gmtService"] = request.gmtService ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metaData)) {
            body["metaData"] = request.metaData ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.qualityGroup)) {
            body["qualityGroup"] = request.qualityGroup ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateQualityCheckTask",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/qualitycheck/task/submit",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateQualityCheckTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQualityCheckTask(_ workspaceId: String, _ request: CreateQualityCheckTaskRequest) async throws -> CreateQualityCheckTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createQualityCheckTaskWithOptions(workspaceId as! String, request as! CreateQualityCheckTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDocumentWithOptions(_ workspaceId: String, _ request: DeleteDocumentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDocumentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docIds)) {
            body["docIds"] = request.docIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            body["libraryId"] = request.libraryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDocument",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/document/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDocument(_ workspaceId: String, _ request: DeleteDocumentRequest) async throws -> DeleteDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDocumentWithOptions(workspaceId as! String, request as! DeleteDocumentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLibraryWithOptions(_ workspaceId: String, _ request: DeleteLibraryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLibraryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            query["libraryId"] = request.libraryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLibrary",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/delete",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLibraryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLibrary(_ workspaceId: String, _ request: DeleteLibraryRequest) async throws -> DeleteLibraryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteLibraryWithOptions(workspaceId as! String, request as! DeleteLibraryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func evictTaskWithOptions(_ workspaceId: String, _ request: EvictTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EvictTaskResponse {
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
            "action": "EvictTask",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/task/evict",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EvictTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func evictTask(_ workspaceId: String, _ request: EvictTaskRequest) async throws -> EvictTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await evictTaskWithOptions(workspaceId as! String, request as! EvictTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func genDocQaResultWithOptions(_ workspaceId: String, _ request: GenDocQaResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenDocQaResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docId)) {
            body["docId"] = request.docId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            body["libraryId"] = request.libraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenDocQaResult",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/virtualHuman/qa/parse",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenDocQaResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func genDocQaResult(_ workspaceId: String, _ request: GenDocQaResultRequest) async throws -> GenDocQaResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await genDocQaResultWithOptions(workspaceId as! String, request as! GenDocQaResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppConfigWithOptions(_ workspaceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAppConfigResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAppConfig",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/app/config",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAppConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppConfig(_ workspaceId: String) async throws -> GetAppConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAppConfigWithOptions(workspaceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatQuestionRespWithOptions(_ workspaceId: String, _ request: GetChatQuestionRespRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChatQuestionRespResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchId)) {
            body["batchId"] = request.batchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChatQuestionResp",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/virtualHuman/chat/query",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChatQuestionRespResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatQuestionResp(_ workspaceId: String, _ request: GetChatQuestionRespRequest) async throws -> GetChatQuestionRespResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getChatQuestionRespWithOptions(workspaceId as! String, request as! GetChatQuestionRespRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDialogAnalysisResultWithOptions(_ workspaceId: String, _ request: GetDialogAnalysisResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDialogAnalysisResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.asc)) {
            body["asc"] = request.asc!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionIds)) {
            body["sessionIds"] = request.sessionIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useUrl)) {
            body["useUrl"] = request.useUrl!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDialogAnalysisResult",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/virtualHuman/dialog/analysis",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDialogAnalysisResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDialogAnalysisResult(_ workspaceId: String, _ request: GetDialogAnalysisResultRequest) async throws -> GetDialogAnalysisResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDialogAnalysisResultWithOptions(workspaceId as! String, request as! GetDialogAnalysisResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDialogDetailWithOptions(_ workspaceId: String, _ request: GetDialogDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDialogDetailResponse {
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
            "action": "GetDialogDetail",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/virtualHuman/dialog/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDialogDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDialogDetail(_ workspaceId: String, _ request: GetDialogDetailRequest) async throws -> GetDialogDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDialogDetailWithOptions(workspaceId as! String, request as! GetDialogDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDialogLogWithOptions(_ workspaceId: String, _ request: GetDialogLogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDialogLogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDialogLog",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/dialog/log",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDialogLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDialogLog(_ workspaceId: String, _ request: GetDialogLogRequest) async throws -> GetDialogLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDialogLogWithOptions(workspaceId as! String, request as! GetDialogLogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentChunkListWithOptions(_ workspaceId: String, _ request: GetDocumentChunkListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocumentChunkListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chunkIdList)) {
            body["chunkIdList"] = request.chunkIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.docId)) {
            body["docId"] = request.docId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            body["libraryId"] = request.libraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            body["order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            body["orderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchQuery)) {
            body["searchQuery"] = request.searchQuery ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocumentChunkList",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/getDocumentChunk",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocumentChunkListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentChunkList(_ workspaceId: String, _ request: GetDocumentChunkListRequest) async throws -> GetDocumentChunkListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDocumentChunkListWithOptions(workspaceId as! String, request as! GetDocumentChunkListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentListWithOptions(_ workspaceId: String, _ request: GetDocumentListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocumentListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            query["libraryId"] = request.libraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocumentList",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/listDocument",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocumentListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentList(_ workspaceId: String, _ request: GetDocumentListRequest) async throws -> GetDocumentListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDocumentListWithOptions(workspaceId as! String, request as! GetDocumentListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentUrlWithOptions(_ workspaceId: String, _ request: GetDocumentUrlRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocumentUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.documentId)) {
            query["documentId"] = request.documentId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocumentUrl",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/document/url",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocumentUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentUrl(_ workspaceId: String, _ request: GetDocumentUrlRequest) async throws -> GetDocumentUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDocumentUrlWithOptions(workspaceId as! String, request as! GetDocumentUrlRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFilterDocumentListWithOptions(_ workspaceId: String, _ request: GetFilterDocumentListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFilterDocumentListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.and)) {
            body["and"] = request.and ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.docIdList)) {
            body["docIdList"] = request.docIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            body["libraryId"] = request.libraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.or)) {
            body["or"] = request.or ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFilterDocumentList",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/filterDocument",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFilterDocumentListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFilterDocumentList(_ workspaceId: String, _ request: GetFilterDocumentListRequest) async throws -> GetFilterDocumentListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFilterDocumentListWithOptions(workspaceId as! String, request as! GetFilterDocumentListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHistoryListByBizTypeWithOptions(_ workspaceId: String, _ request: GetHistoryListByBizTypeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHistoryListByBizTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["bizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["bizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHistoryListByBizType",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/history/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHistoryListByBizTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHistoryListByBizType(_ workspaceId: String, _ request: GetHistoryListByBizTypeRequest) async throws -> GetHistoryListByBizTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHistoryListByBizTypeWithOptions(workspaceId as! String, request as! GetHistoryListByBizTypeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLibraryWithOptions(_ workspaceId: String, _ request: GetLibraryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLibraryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            query["libraryId"] = request.libraryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLibrary",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/get",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLibraryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLibrary(_ workspaceId: String, _ request: GetLibraryRequest) async throws -> GetLibraryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLibraryWithOptions(workspaceId as! String, request as! GetLibraryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLibraryListWithOptions(_ workspaceId: String, _ request: GetLibraryListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLibraryListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["query"] = request.query ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLibraryList",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLibraryListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLibraryList(_ workspaceId: String, _ request: GetLibraryListRequest) async throws -> GetLibraryListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLibraryListWithOptions(workspaceId as! String, request as! GetLibraryListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getParseResultWithOptions(_ workspaceId: String, _ request: GetParseResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetParseResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docId)) {
            body["docId"] = request.docId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            body["libraryId"] = request.libraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useUrlResult)) {
            body["useUrlResult"] = request.useUrlResult!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetParseResult",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/document/getParseResult",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetParseResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getParseResult(_ workspaceId: String, _ request: GetParseResultRequest) async throws -> GetParseResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getParseResultWithOptions(workspaceId as! String, request as! GetParseResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQualityCheckTaskResultWithOptions(_ workspaceId: String, _ request: GetQualityCheckTaskResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQualityCheckTaskResultResponse {
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
            "action": "GetQualityCheckTaskResult",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/qualitycheck/task/query",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQualityCheckTaskResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQualityCheckTaskResult(_ workspaceId: String, _ request: GetQualityCheckTaskResultRequest) async throws -> GetQualityCheckTaskResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQualityCheckTaskResultWithOptions(workspaceId as! String, request as! GetQualityCheckTaskResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSummaryTaskResultWithOptions(_ workspaceId: String, _ request: GetSummaryTaskResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSummaryTaskResultResponse {
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
            "action": "GetSummaryTaskResult",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/task/summary/result",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSummaryTaskResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSummaryTaskResult(_ workspaceId: String, _ request: GetSummaryTaskResultRequest) async throws -> GetSummaryTaskResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSummaryTaskResultWithOptions(workspaceId as! String, request as! GetSummaryTaskResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskResultWithOptions(_ workspaceId: String, _ request: GetTaskResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTaskResultResponse {
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
            "action": "GetTaskResult",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/task/result",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTaskResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskResult(_ workspaceId: String, _ request: GetTaskResultRequest) async throws -> GetTaskResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTaskResultWithOptions(workspaceId as! String, request as! GetTaskResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskStatusWithOptions(_ workspaceId: String, _ request: GetTaskStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTaskStatusResponse {
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
            "action": "GetTaskStatus",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/task/status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTaskStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskStatus(_ workspaceId: String, _ request: GetTaskStatusRequest) async throws -> GetTaskStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTaskStatusWithOptions(workspaceId as! String, request as! GetTaskStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokePluginWithOptions(_ workspaceId: String, _ request: InvokePluginRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> InvokePluginResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["params"] = request.params ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.pluginId)) {
            body["pluginId"] = request.pluginId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvokePlugin",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/plugin/invoke",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvokePluginResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invokePlugin(_ workspaceId: String, _ request: InvokePluginRequest) async throws -> InvokePluginResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await invokePluginWithOptions(workspaceId as! String, request as! InvokePluginRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func previewDocumentWithOptions(_ workspaceId: String, _ request: PreviewDocumentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PreviewDocumentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.documentId)) {
            query["documentId"] = request.documentId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PreviewDocument",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/document/preview",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PreviewDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func previewDocument(_ workspaceId: String, _ request: PreviewDocumentRequest) async throws -> PreviewDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await previewDocumentWithOptions(workspaceId as! String, request as! PreviewDocumentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reIndexWithOptions(_ workspaceId: String, _ request: ReIndexRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReIndexResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.documentId)) {
            query["documentId"] = request.documentId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReIndex",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/document/reIndex",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReIndexResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reIndex(_ workspaceId: String, _ request: ReIndexRequest) async throws -> ReIndexResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await reIndexWithOptions(workspaceId as! String, request as! ReIndexRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func realTimeDialogWithOptions(_ workspaceId: String, _ request: RealTimeDialogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RealTimeDialogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.analysis)) {
            body["analysis"] = request.analysis!;
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["bizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conversationModel)) {
            body["conversationModel"] = request.conversationModel ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dialogMemoryTurns)) {
            body["dialogMemoryTurns"] = request.dialogMemoryTurns!;
        }
        if (!TeaUtils.Client.isUnset(request.metaData)) {
            body["metaData"] = request.metaData ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.opType)) {
            body["opType"] = request.opType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recommend)) {
            body["recommend"] = request.recommend!;
        }
        if (!TeaUtils.Client.isUnset(request.scriptContentPlayed)) {
            body["scriptContentPlayed"] = request.scriptContentPlayed ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.userVad)) {
            body["userVad"] = request.userVad!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RealTimeDialog",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/realtime/dialog/chat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RealTimeDialogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func realTimeDialog(_ workspaceId: String, _ request: RealTimeDialogRequest) async throws -> RealTimeDialogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await realTimeDialogWithOptions(workspaceId as! String, request as! RealTimeDialogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func realtimeDialogAssistWithOptions(_ workspaceId: String, _ request: RealtimeDialogAssistRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RealtimeDialogAssistResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.analysis)) {
            body["analysis"] = request.analysis!;
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["bizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conversationModel)) {
            body["conversationModel"] = request.conversationModel ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dialogMemoryTurns)) {
            body["dialogMemoryTurns"] = request.dialogMemoryTurns!;
        }
        if (!TeaUtils.Client.isUnset(request.hangUpDialog)) {
            body["hangUpDialog"] = request.hangUpDialog!;
        }
        if (!TeaUtils.Client.isUnset(request.metaData)) {
            body["metaData"] = request.metaData ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RealtimeDialogAssist",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/realtime/dialog/assist",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RealtimeDialogAssistResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func realtimeDialogAssist(_ workspaceId: String, _ request: RealtimeDialogAssistRequest) async throws -> RealtimeDialogAssistResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await realtimeDialogAssistWithOptions(workspaceId as! String, request as! RealtimeDialogAssistRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebuildTaskWithOptions(_ workspaceId: String, _ request: RebuildTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RebuildTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskIds)) {
            body["taskIds"] = request.taskIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RebuildTask",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/task/rebuild",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RebuildTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebuildTask(_ workspaceId: String, _ request: RebuildTaskRequest) async throws -> RebuildTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await rebuildTaskWithOptions(workspaceId as! String, request as! RebuildTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recallDocumentWithOptions(_ workspaceId: String, _ request: RecallDocumentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RecallDocumentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filters)) {
            body["filters"] = request.filters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rearrangement)) {
            body["rearrangement"] = request.rearrangement!;
        }
        if (!TeaUtils.Client.isUnset(request.topK)) {
            body["topK"] = request.topK!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecallDocument",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/recallDocument",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecallDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recallDocument(_ workspaceId: String, _ request: RecallDocumentRequest) async throws -> RecallDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await recallDocumentWithOptions(workspaceId as! String, request as! RecallDocumentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeIntentionWithOptions(_ workspaceId: String, _ request: RecognizeIntentionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeIntentionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.analysis)) {
            body["analysis"] = request.analysis!;
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["bizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conversation)) {
            body["conversation"] = request.conversation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.globalIntentionList)) {
            body["globalIntentionList"] = request.globalIntentionList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hierarchicalIntentionList)) {
            body["hierarchicalIntentionList"] = request.hierarchicalIntentionList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.intentionDomainCode)) {
            body["intentionDomainCode"] = request.intentionDomainCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intentionList)) {
            body["intentionList"] = request.intentionList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.opType)) {
            body["opType"] = request.opType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recommend)) {
            body["recommend"] = request.recommend!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeIntention",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/recog/intent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeIntentionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeIntention(_ workspaceId: String, _ request: RecognizeIntentionRequest) async throws -> RecognizeIntentionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await recognizeIntentionWithOptions(workspaceId as! String, request as! RecognizeIntentionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runAgentWithOptions(_ workspaceId: String, _ request: RunAgentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.botId)) {
            body["botId"] = request.botId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.threadId)) {
            body["threadId"] = request.threadId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useDraft)) {
            body["useDraft"] = request.useDraft!;
        }
        if (!TeaUtils.Client.isUnset(request.userContent)) {
            body["userContent"] = request.userContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userInputs)) {
            body["userInputs"] = request.userInputs ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            body["versionId"] = request.versionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunAgent",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/bot/thread/run",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runAgent(_ workspaceId: String, _ request: RunAgentRequest) async throws -> RunAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runAgentWithOptions(workspaceId as! String, request as! RunAgentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runChatResultGenerationWithOptions(_ workspaceId: String, _ request: RunChatResultGenerationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunChatResultGenerationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.inferenceParameters)) {
            body["inferenceParameters"] = request.inferenceParameters ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.messages)) {
            body["messages"] = request.messages ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.tools)) {
            body["tools"] = request.tools ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunChatResultGeneration",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/run/chat/generation",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunChatResultGenerationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runChatResultGeneration(_ workspaceId: String, _ request: RunChatResultGenerationRequest) async throws -> RunChatResultGenerationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runChatResultGenerationWithOptions(workspaceId as! String, request as! RunChatResultGenerationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runLibraryChatGenerationWithOptions(_ workspaceId: String, _ request: RunLibraryChatGenerationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunLibraryChatGenerationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docIdList)) {
            body["docIdList"] = request.docIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.enableFollowUp)) {
            body["enableFollowUp"] = request.enableFollowUp!;
        }
        if (!TeaUtils.Client.isUnset(request.enableMultiQuery)) {
            body["enableMultiQuery"] = request.enableMultiQuery!;
        }
        if (!TeaUtils.Client.isUnset(request.enableOpenQa)) {
            body["enableOpenQa"] = request.enableOpenQa!;
        }
        if (!TeaUtils.Client.isUnset(request.followUpLlm)) {
            body["followUpLlm"] = request.followUpLlm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            body["libraryId"] = request.libraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.llmType)) {
            body["llmType"] = request.llmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.multiQueryLlm)) {
            body["multiQueryLlm"] = request.multiQueryLlm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryCriteria)) {
            body["queryCriteria"] = request.queryCriteria!;
        }
        if (!TeaUtils.Client.isUnset(request.rerankType)) {
            body["rerankType"] = request.rerankType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.subQueryList)) {
            body["subQueryList"] = request.subQueryList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.textSearchParameter)) {
            body["textSearchParameter"] = request.textSearchParameter!;
        }
        if (!TeaUtils.Client.isUnset(request.topK)) {
            body["topK"] = request.topK!;
        }
        if (!TeaUtils.Client.isUnset(request.vectorSearchParameter)) {
            body["vectorSearchParameter"] = request.vectorSearchParameter!;
        }
        if (!TeaUtils.Client.isUnset(request.withDocumentReference)) {
            body["withDocumentReference"] = request.withDocumentReference!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunLibraryChatGeneration",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/run/library/chat/generation",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunLibraryChatGenerationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runLibraryChatGeneration(_ workspaceId: String, _ request: RunLibraryChatGenerationRequest) async throws -> RunLibraryChatGenerationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runLibraryChatGenerationWithOptions(workspaceId as! String, request as! RunLibraryChatGenerationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitChatQuestionWithOptions(_ workspaceId: String, _ request: SubmitChatQuestionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitChatQuestionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gmtService)) {
            body["gmtService"] = request.gmtService ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.liveScriptContent)) {
            body["liveScriptContent"] = request.liveScriptContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openSmallTalk)) {
            body["openSmallTalk"] = request.openSmallTalk!;
        }
        if (!TeaUtils.Client.isUnset(request.questionList)) {
            body["questionList"] = request.questionList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitChatQuestion",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/virtualHuman/chat/submit",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitChatQuestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitChatQuestion(_ workspaceId: String, _ request: SubmitChatQuestionRequest) async throws -> SubmitChatQuestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitChatQuestionWithOptions(workspaceId as! String, request as! SubmitChatQuestionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDocumentWithOptions(_ workspaceId: String, _ request: UpdateDocumentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDocumentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docId)) {
            body["docId"] = request.docId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            body["libraryId"] = request.libraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.meta)) {
            body["meta"] = request.meta ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDocument",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/document/updateDocument",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDocument(_ workspaceId: String, _ request: UpdateDocumentRequest) async throws -> UpdateDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDocumentWithOptions(workspaceId as! String, request as! UpdateDocumentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDocumentChunkWithOptions(_ workspaceId: String, _ request: UpdateDocumentChunkRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDocumentChunkResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chunks)) {
            body["chunks"] = request.chunks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            body["libraryId"] = request.libraryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDocumentChunk",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/updateDocumentChunk",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDocumentChunkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDocumentChunk(_ workspaceId: String, _ request: UpdateDocumentChunkRequest) async throws -> UpdateDocumentChunkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDocumentChunkWithOptions(workspaceId as! String, request as! UpdateDocumentChunkRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLibraryWithOptions(_ workspaceId: String, _ request: UpdateLibraryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLibraryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexSetting)) {
            body["indexSetting"] = request.indexSetting!;
        }
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            body["libraryId"] = request.libraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.libraryName)) {
            body["libraryName"] = request.libraryName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLibrary",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/update",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLibraryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLibrary(_ workspaceId: String, _ request: UpdateLibraryRequest) async throws -> UpdateLibraryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateLibraryWithOptions(workspaceId as! String, request as! UpdateLibraryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQaLibraryWithOptions(_ workspaceId: String, _ request: UpdateQaLibraryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateQaLibraryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.parseQaResults)) {
            body["parseQaResults"] = request.parseQaResults ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.qaLibraryId)) {
            body["qaLibraryId"] = request.qaLibraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateQaLibrary",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/virtualHuman/qa/upload",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateQaLibraryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQaLibrary(_ workspaceId: String, _ request: UpdateQaLibraryRequest) async throws -> UpdateQaLibraryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateQaLibraryWithOptions(workspaceId as! String, request as! UpdateQaLibraryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadDocumentWithOptions(_ workspaceId: String, _ request: UploadDocumentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadDocumentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            body["fileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.libraryId)) {
            body["libraryId"] = request.libraryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadDocument",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/api/library/document/upload",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadDocument(_ workspaceId: String, _ request: UploadDocumentRequest) async throws -> UploadDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await uploadDocumentWithOptions(workspaceId as! String, request as! UploadDocumentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadDocumentAdvance(_ workspaceId: String, _ request: UploadDocumentAdvanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadDocumentResponse {
        var credentialModel: AlibabaCloudCredentials.CredentialModel? = nil
        if (TeaUtils.Client.isUnset(self._credential)) {
            throw Tea.ReuqestError([
                "code": "InvalidCredentials",
                "message": "Please set up the credentials correctly. If you are setting them through environment variables, please ensure that ALIBABA_CLOUD_ACCESS_KEY_ID and ALIBABA_CLOUD_ACCESS_KEY_SECRET are set correctly. See https://help.aliyun.com/zh/sdk/developer-reference/configure-the-alibaba-cloud-accesskey-environment-variable-on-linux-macos-and-windows-systems for more details."
            ])
        }
        credentialModel = try await self._credential!.getCredential()
        var accessKeyId: String = credentialModel.accessKeyId ?? ""
        var accessKeySecret: String = credentialModel.accessKeySecret ?? ""
        var securityToken: String = credentialModel.securityToken ?? ""
        var credentialType: String = credentialModel.type ?? ""
        var openPlatformEndpoint: String = self._openPlatformEndpoint ?? ""
        if (TeaUtils.Client.empty(openPlatformEndpoint)) {
            openPlatformEndpoint = "openplatform.aliyuncs.com"
        }
        if (TeaUtils.Client.isUnset(credentialType)) {
            credentialType = "access_key"
        }
        var authConfig: AlibabacloudOpenApi.Config = AlibabacloudOpenApi.Config([
            "accessKeyId": accessKeyId as! String,
            "accessKeySecret": accessKeySecret as! String,
            "securityToken": securityToken as! String,
            "type": credentialType as! String,
            "endpoint": openPlatformEndpoint as! String,
            "protocol": self._protocol ?? "",
            "regionId": self._regionId ?? ""
        ])
        var authClient: AlibabacloudOpenApi.Client = try AlibabacloudOpenApi.Client(authConfig)
        var authRequest: [String: String] = [
            "Product": "DianJin",
            "RegionId": self._regionId ?? ""
        ]
        var authReq: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(authRequest)
        ])
        var authParams: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeFileUpload",
            "version": "2019-12-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var authResponse: [String: Any] = [:]
        var fileObj: TeaFileForm.FileField = TeaFileForm.FileField([:])
        var ossHeader: [String: Any] = [:]
        var tmpBody: [String: Any] = [:]
        var useAccelerate: Bool = false
        var authResponseBody: [String: String] = [:]
        var uploadDocumentReq: UploadDocumentRequest = UploadDocumentRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, uploadDocumentReq)
        if (!TeaUtils.Client.isUnset(request.fileUrlObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.fileUrlObject!,
                "contentType": ""
            ])
            ossHeader = [
                "host": (authResponseBody["Bucket"] ?? "") + "." + (AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponseBody["Endpoint"], useAccelerate, self._endpointType)),
                "OSSAccessKeyId": authResponseBody["AccessKeyId"] ?? "",
                "policy": authResponseBody["EncodedPolicy"] ?? "",
                "Signature": authResponseBody["Signature"] ?? "",
                "key": authResponseBody["ObjectKey"] ?? "",
                "file": fileObj as! TeaFileForm.FileField,
                "success_action_status": "201"
            ]
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any])
            uploadDocumentReq.fileUrl = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var uploadDocumentResp: UploadDocumentResponse = try await uploadDocumentWithOptions(workspaceId as! String, uploadDocumentReq as! UploadDocumentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
        return uploadDocumentResp as! UploadDocumentResponse
    }
}
