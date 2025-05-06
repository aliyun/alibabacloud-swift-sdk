import Foundation
import Tea
import TeaUtils
import AlibabaCloudOssSdk
import AlibabacloudOpenPlatform20191219
import AlibabaCloudOSSUtil
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = ""
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("farui", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createTextFileWithOptions(_ WorkspaceId: String, _ request: CreateTextFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTextFileResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTime)) {
            body["CreateTime"] = request.createTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textFileName)) {
            body["TextFileName"] = request.textFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textFileUrl)) {
            body["TextFileUrl"] = request.textFileUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTextFile",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/data/textFile",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTextFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTextFile(_ WorkspaceId: String, _ request: CreateTextFileRequest) async throws -> CreateTextFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTextFileWithOptions(WorkspaceId as! String, request as! CreateTextFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTextFileAdvance(_ WorkspaceId: String, _ request: CreateTextFileAdvanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTextFileResponse {
        var accessKeyId: String = try await self._credential!.getAccessKeyId()
        var accessKeySecret: String = try await self._credential!.getAccessKeySecret()
        var securityToken: String = try await self._credential!.getSecurityToken()
        var credentialType: String = self._credential!.getType()
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
        var authClient: AlibabacloudOpenPlatform20191219.Client = try AlibabacloudOpenPlatform20191219.Client(authConfig)
        var authRequest: AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest = AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest([
            "product": "FaRui",
            "regionId": self._regionId ?? ""
        ])
        var authResponse: AlibabacloudOpenPlatform20191219.AuthorizeFileUploadResponse = AlibabacloudOpenPlatform20191219.AuthorizeFileUploadResponse([:])
        var ossConfig: AlibabaCloudOssSdk.Config = AlibabaCloudOssSdk.Config([
            "accessKeyId": accessKeyId as! String,
            "accessKeySecret": accessKeySecret as! String,
            "type": "access_key",
            "protocol": self._protocol ?? "",
            "regionId": self._regionId ?? ""
        ])
        var ossClient: AlibabaCloudOssSdk.Client = try AlibabaCloudOssSdk.Client(ossConfig)
        var fileObj: TeaFileForm.FileField = TeaFileForm.FileField([:])
        var ossHeader: AlibabaCloudOssSdk.PostObjectRequest.Header = AlibabaCloudOssSdk.PostObjectRequest.Header([:])
        var uploadRequest: AlibabaCloudOssSdk.PostObjectRequest = AlibabaCloudOssSdk.PostObjectRequest([:])
        var ossRuntime: AlibabaCloudOSSUtil.RuntimeOptions = AlibabaCloudOSSUtil.RuntimeOptions([:])
        AlibabaCloudOpenApiUtil.Client.convert(runtime, ossRuntime)
        var createTextFileReq: CreateTextFileRequest = CreateTextFileRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, createTextFileReq)
        if (!TeaUtils.Client.isUnset(request.textFileUrlObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.textFileUrlObject!,
                "contentType": ""
            ])
            ossHeader = AlibabaCloudOssSdk.PostObjectRequest.Header([
                "accessKeyId": authResponse.body!.accessKeyId ?? "",
                "policy": authResponse.body!.encodedPolicy ?? "",
                "signature": authResponse.body!.signature ?? "",
                "key": authResponse.body!.objectKey ?? "",
                "file": fileObj as! TeaFileForm.FileField,
                "successActionStatus": "201"
            ])
            uploadRequest = AlibabaCloudOssSdk.PostObjectRequest([
                "bucketName": authResponse.body!.bucket ?? "",
                "header": ossHeader as! AlibabaCloudOssSdk.PostObjectRequest.Header
            ])
            try await ossClient.postObject(uploadRequest as! AlibabaCloudOssSdk.PostObjectRequest, ossRuntime as! AlibabaCloudOSSUtil.RuntimeOptions)
            createTextFileReq.textFileUrl = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var createTextFileResp: CreateTextFileResponse = try await createTextFileWithOptions(WorkspaceId as! String, createTextFileReq as! CreateTextFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
        return createTextFileResp as! CreateTextFileResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runContractResultGenerationWithOptions(_ workspaceId: String, _ tmpReq: RunContractResultGenerationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunContractResultGenerationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunContractResultGenerationShrinkRequest = RunContractResultGenerationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.assistant)) {
            request.assistantShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.assistant, "assistant", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["appId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assistantShrink)) {
            body["assistant"] = request.assistantShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunContractResultGeneration",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/farui/contract/result/genarate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunContractResultGenerationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runContractResultGeneration(_ workspaceId: String, _ request: RunContractResultGenerationRequest) async throws -> RunContractResultGenerationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runContractResultGenerationWithOptions(workspaceId as! String, request as! RunContractResultGenerationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runContractRuleGenerationWithOptions(_ workspaceId: String, _ tmpReq: RunContractRuleGenerationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunContractRuleGenerationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunContractRuleGenerationShrinkRequest = RunContractRuleGenerationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.assistant)) {
            request.assistantShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.assistant, "assistant", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["appId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assistantShrink)) {
            body["assistant"] = request.assistantShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunContractRuleGeneration",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/farui/contract/rule/genarate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunContractRuleGenerationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runContractRuleGeneration(_ workspaceId: String, _ request: RunContractRuleGenerationRequest) async throws -> RunContractRuleGenerationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runContractRuleGenerationWithOptions(workspaceId as! String, request as! RunContractRuleGenerationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runLegalAdviceConsultationWithOptions(_ workspaceId: String, _ tmpReq: RunLegalAdviceConsultationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunLegalAdviceConsultationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunLegalAdviceConsultationShrinkRequest = RunLegalAdviceConsultationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.assistant)) {
            request.assistantShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.assistant, "assistant", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.thread)) {
            request.threadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.thread, "thread", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["appId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assistantShrink)) {
            body["assistant"] = request.assistantShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.threadShrink)) {
            body["thread"] = request.threadShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunLegalAdviceConsultation",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/farui/legalAdvice/consult",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunLegalAdviceConsultationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runLegalAdviceConsultation(_ workspaceId: String, _ request: RunLegalAdviceConsultationRequest) async throws -> RunLegalAdviceConsultationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runLegalAdviceConsultationWithOptions(workspaceId as! String, request as! RunLegalAdviceConsultationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runSearchCaseFullTextWithOptions(_ workspaceId: String, _ tmpReq: RunSearchCaseFullTextRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunSearchCaseFullTextResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunSearchCaseFullTextShrinkRequest = RunSearchCaseFullTextShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filterCondition)) {
            request.filterConditionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterCondition, "filterCondition", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.pageParam)) {
            request.pageParamShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.pageParam, "pageParam", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.queryKeywords)) {
            request.queryKeywordsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.queryKeywords, "queryKeywords", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sortKeyAndDirection)) {
            request.sortKeyAndDirectionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sortKeyAndDirection, "sortKeyAndDirection", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.thread)) {
            request.threadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.thread, "thread", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["appId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterConditionShrink)) {
            body["filterCondition"] = request.filterConditionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageParamShrink)) {
            body["pageParam"] = request.pageParamShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryKeywordsShrink)) {
            body["queryKeywords"] = request.queryKeywordsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referLevel)) {
            body["referLevel"] = request.referLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortKeyAndDirectionShrink)) {
            body["sortKeyAndDirection"] = request.sortKeyAndDirectionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.threadShrink)) {
            body["thread"] = request.threadShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunSearchCaseFullText",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/farui/search/case/fulltext",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunSearchCaseFullTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runSearchCaseFullText(_ workspaceId: String, _ request: RunSearchCaseFullTextRequest) async throws -> RunSearchCaseFullTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runSearchCaseFullTextWithOptions(workspaceId as! String, request as! RunSearchCaseFullTextRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runSearchLawQueryWithOptions(_ workspaceId: String, _ tmpReq: RunSearchLawQueryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunSearchLawQueryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RunSearchLawQueryShrinkRequest = RunSearchLawQueryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filterCondition)) {
            request.filterConditionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterCondition, "filterCondition", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.pageParam)) {
            request.pageParamShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.pageParam, "pageParam", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.queryKeywords)) {
            request.queryKeywordsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.queryKeywords, "queryKeywords", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.thread)) {
            request.threadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.thread, "thread", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["appId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterConditionShrink)) {
            body["filterCondition"] = request.filterConditionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageParamShrink)) {
            body["pageParam"] = request.pageParamShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryKeywordsShrink)) {
            body["queryKeywords"] = request.queryKeywordsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.threadShrink)) {
            body["thread"] = request.threadShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunSearchLawQuery",
            "version": "2024-06-28",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/farui/search/law/query",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunSearchLawQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runSearchLawQuery(_ workspaceId: String, _ request: RunSearchLawQueryRequest) async throws -> RunSearchLawQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runSearchLawQueryWithOptions(workspaceId as! String, request as! RunSearchLawQueryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
