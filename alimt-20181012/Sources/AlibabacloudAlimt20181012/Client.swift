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
        self._signatureAlgorithm = "v2"
        self._endpointRule = "regional"
        self._endpointMap = [
            "cn-hangzhou": "mt.cn-hangzhou.aliyuncs.com",
            "ap-northeast-1": "mt.aliyuncs.com",
            "ap-northeast-2-pop": "mt.aliyuncs.com",
            "ap-south-1": "mt.aliyuncs.com",
            "ap-southeast-1": "mt.ap-southeast-1.aliyuncs.com",
            "ap-southeast-2": "mt.aliyuncs.com",
            "ap-southeast-3": "mt.aliyuncs.com",
            "ap-southeast-5": "mt.aliyuncs.com",
            "cn-beijing": "mt.aliyuncs.com",
            "cn-beijing-finance-1": "mt.aliyuncs.com",
            "cn-beijing-finance-pop": "mt.aliyuncs.com",
            "cn-beijing-gov-1": "mt.aliyuncs.com",
            "cn-beijing-nu16-b01": "mt.aliyuncs.com",
            "cn-chengdu": "mt.aliyuncs.com",
            "cn-edge-1": "mt.aliyuncs.com",
            "cn-fujian": "mt.aliyuncs.com",
            "cn-haidian-cm12-c01": "mt.aliyuncs.com",
            "cn-hangzhou-bj-b01": "mt.aliyuncs.com",
            "cn-hangzhou-finance": "mt.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "mt.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "mt.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "mt.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "mt.aliyuncs.com",
            "cn-hangzhou-test-306": "mt.aliyuncs.com",
            "cn-hongkong": "mt.aliyuncs.com",
            "cn-hongkong-finance-pop": "mt.aliyuncs.com",
            "cn-huhehaote": "mt.aliyuncs.com",
            "cn-north-2-gov-1": "mt.aliyuncs.com",
            "cn-qingdao": "mt.aliyuncs.com",
            "cn-qingdao-nebula": "mt.aliyuncs.com",
            "cn-shanghai": "mt.aliyuncs.com",
            "cn-shanghai-et15-b01": "mt.aliyuncs.com",
            "cn-shanghai-et2-b01": "mt.aliyuncs.com",
            "cn-shanghai-finance-1": "mt.aliyuncs.com",
            "cn-shanghai-inner": "mt.aliyuncs.com",
            "cn-shanghai-internal-test-1": "mt.aliyuncs.com",
            "cn-shenzhen": "mt.aliyuncs.com",
            "cn-shenzhen-finance-1": "mt.aliyuncs.com",
            "cn-shenzhen-inner": "mt.aliyuncs.com",
            "cn-shenzhen-st4-d01": "mt.aliyuncs.com",
            "cn-shenzhen-su18-b01": "mt.aliyuncs.com",
            "cn-wuhan": "mt.aliyuncs.com",
            "cn-yushanfang": "mt.aliyuncs.com",
            "cn-zhangbei-na61-b01": "mt.aliyuncs.com",
            "cn-zhangjiakou": "mt.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "mt.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "mt.aliyuncs.com",
            "eu-central-1": "mt.aliyuncs.com",
            "eu-west-1": "mt.aliyuncs.com",
            "eu-west-1-oxs": "mt.aliyuncs.com",
            "me-east-1": "mt.aliyuncs.com",
            "rus-west-1-pop": "mt.aliyuncs.com",
            "us-east-1": "mt.aliyuncs.com",
            "us-west-1": "mt.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("alimt", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createAsyncTranslateWithOptions(_ request: CreateAsyncTranslateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAsyncTranslateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            body["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formatType)) {
            body["FormatType"] = request.formatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["Scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceText)) {
            body["SourceText"] = request.sourceText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["TargetLanguage"] = request.targetLanguage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAsyncTranslate",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAsyncTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAsyncTranslate(_ request: CreateAsyncTranslateRequest) async throws -> CreateAsyncTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAsyncTranslateWithOptions(request as! CreateAsyncTranslateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDocTranslateTaskWithOptions(_ request: CreateDocTranslateTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDocTranslateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callbackUrl)) {
            body["CallbackUrl"] = request.callbackUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileUrl)) {
            body["FileUrl"] = request.fileUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["Scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["TargetLanguage"] = request.targetLanguage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDocTranslateTask",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDocTranslateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDocTranslateTask(_ request: CreateDocTranslateTaskRequest) async throws -> CreateDocTranslateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDocTranslateTaskWithOptions(request as! CreateDocTranslateTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDocTranslateTaskAdvance(_ request: CreateDocTranslateTaskAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDocTranslateTaskResponse {
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
            "product": "alimt",
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
        var createDocTranslateTaskReq: CreateDocTranslateTaskRequest = CreateDocTranslateTaskRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, createDocTranslateTaskReq)
        if (!TeaUtils.Client.isUnset(request.fileUrlObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.fileUrlObject!,
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
            createDocTranslateTaskReq.fileUrl = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var createDocTranslateTaskResp: CreateDocTranslateTaskResponse = try await createDocTranslateTaskWithOptions(createDocTranslateTaskReq as! CreateDocTranslateTaskRequest, runtime as! TeaUtils.RuntimeOptions)
        return createDocTranslateTaskResp as! CreateDocTranslateTaskResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageTranslateTaskWithOptions(_ request: CreateImageTranslateTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateImageTranslateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extra)) {
            body["Extra"] = request.extra ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["TargetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.urlList)) {
            body["UrlList"] = request.urlList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateImageTranslateTask",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateImageTranslateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageTranslateTask(_ request: CreateImageTranslateTaskRequest) async throws -> CreateImageTranslateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createImageTranslateTaskWithOptions(request as! CreateImageTranslateTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAsyncTranslateWithOptions(_ request: GetAsyncTranslateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAsyncTranslateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            body["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAsyncTranslate",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAsyncTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAsyncTranslate(_ request: GetAsyncTranslateRequest) async throws -> GetAsyncTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAsyncTranslateWithOptions(request as! GetAsyncTranslateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBatchTranslateWithOptions(_ request: GetBatchTranslateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBatchTranslateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            body["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formatType)) {
            body["FormatType"] = request.formatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["Scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceText)) {
            body["SourceText"] = request.sourceText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["TargetLanguage"] = request.targetLanguage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBatchTranslate",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBatchTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBatchTranslate(_ request: GetBatchTranslateRequest) async throws -> GetBatchTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBatchTranslateWithOptions(request as! GetBatchTranslateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDetectLanguageWithOptions(_ request: GetDetectLanguageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDetectLanguageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceText)) {
            body["SourceText"] = request.sourceText ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDetectLanguage",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDetectLanguageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDetectLanguage(_ request: GetDetectLanguageRequest) async throws -> GetDetectLanguageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDetectLanguageWithOptions(request as! GetDetectLanguageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocTranslateTaskWithOptions(_ request: GetDocTranslateTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocTranslateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocTranslateTask",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDocTranslateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocTranslateTask(_ request: GetDocTranslateTaskRequest) async throws -> GetDocTranslateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDocTranslateTaskWithOptions(request as! GetDocTranslateTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageDiagnoseWithOptions(_ request: GetImageDiagnoseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetImageDiagnoseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extra)) {
            body["Extra"] = request.extra ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetImageDiagnose",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetImageDiagnoseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageDiagnose(_ request: GetImageDiagnoseRequest) async throws -> GetImageDiagnoseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getImageDiagnoseWithOptions(request as! GetImageDiagnoseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageTranslateWithOptions(_ request: GetImageTranslateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetImageTranslateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extra)) {
            body["Extra"] = request.extra ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["TargetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetImageTranslate",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetImageTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageTranslate(_ request: GetImageTranslateRequest) async throws -> GetImageTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getImageTranslateWithOptions(request as! GetImageTranslateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageTranslateTaskWithOptions(_ request: GetImageTranslateTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetImageTranslateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetImageTranslateTask",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetImageTranslateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageTranslateTask(_ request: GetImageTranslateTaskRequest) async throws -> GetImageTranslateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getImageTranslateTaskWithOptions(request as! GetImageTranslateTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTitleDiagnoseWithOptions(_ request: GetTitleDiagnoseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTitleDiagnoseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryId)) {
            body["CategoryId"] = request.categoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extra)) {
            body["Extra"] = request.extra ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTitleDiagnose",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTitleDiagnoseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTitleDiagnose(_ request: GetTitleDiagnoseRequest) async throws -> GetTitleDiagnoseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTitleDiagnoseWithOptions(request as! GetTitleDiagnoseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTitleGenerateWithOptions(_ request: GetTitleGenerateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTitleGenerateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attributes)) {
            body["Attributes"] = request.attributes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.categoryId)) {
            body["CategoryId"] = request.categoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extra)) {
            body["Extra"] = request.extra ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hotWords)) {
            body["HotWords"] = request.hotWords ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTitleGenerate",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTitleGenerateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTitleGenerate(_ request: GetTitleGenerateRequest) async throws -> GetTitleGenerateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTitleGenerateWithOptions(request as! GetTitleGenerateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTitleIntelligenceWithOptions(_ request: GetTitleIntelligenceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTitleIntelligenceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catLevelThreeId)) {
            body["CatLevelThreeId"] = request.catLevelThreeId!;
        }
        if (!TeaUtils.Client.isUnset(request.catLevelTwoId)) {
            body["CatLevelTwoId"] = request.catLevelTwoId!;
        }
        if (!TeaUtils.Client.isUnset(request.extra)) {
            body["Extra"] = request.extra ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keywords)) {
            body["Keywords"] = request.keywords ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            body["Platform"] = request.platform ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTitleIntelligence",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTitleIntelligenceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTitleIntelligence(_ request: GetTitleIntelligenceRequest) async throws -> GetTitleIntelligenceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTitleIntelligenceWithOptions(request as! GetTitleIntelligenceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTranslateImageBatchResultWithOptions(_ request: GetTranslateImageBatchResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTranslateImageBatchResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTranslateImageBatchResult",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTranslateImageBatchResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTranslateImageBatchResult(_ request: GetTranslateImageBatchResultRequest) async throws -> GetTranslateImageBatchResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTranslateImageBatchResultWithOptions(request as! GetTranslateImageBatchResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTranslateReportWithOptions(_ request: GetTranslateReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTranslateReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiName)) {
            query["ApiName"] = request.apiName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            query["BeginTime"] = request.beginTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.group)) {
            query["Group"] = request.group ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTranslateReport",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTranslateReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTranslateReport(_ request: GetTranslateReportRequest) async throws -> GetTranslateReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTranslateReportWithOptions(request as! GetTranslateReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openAlimtServiceWithOptions(_ request: OpenAlimtServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OpenAlimtServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OpenAlimtService",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OpenAlimtServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openAlimtService(_ request: OpenAlimtServiceRequest) async throws -> OpenAlimtServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await openAlimtServiceWithOptions(request as! OpenAlimtServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateWithOptions(_ request: TranslateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TranslateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.context)) {
            query["Context"] = request.context ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.formatType)) {
            body["FormatType"] = request.formatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["Scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceText)) {
            body["SourceText"] = request.sourceText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["TargetLanguage"] = request.targetLanguage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Translate",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translate(_ request: TranslateRequest) async throws -> TranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await translateWithOptions(request as! TranslateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateCertificateWithOptions(_ request: TranslateCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TranslateCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certificateType)) {
            body["CertificateType"] = request.certificateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultType)) {
            body["ResultType"] = request.resultType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["TargetLanguage"] = request.targetLanguage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TranslateCertificate",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TranslateCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateCertificate(_ request: TranslateCertificateRequest) async throws -> TranslateCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await translateCertificateWithOptions(request as! TranslateCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateCertificateAdvance(_ request: TranslateCertificateAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TranslateCertificateResponse {
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
            "product": "alimt",
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
        var translateCertificateReq: TranslateCertificateRequest = TranslateCertificateRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, translateCertificateReq)
        if (!TeaUtils.Client.isUnset(request.imageUrlObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageUrlObject!,
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
            translateCertificateReq.imageUrl = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var translateCertificateResp: TranslateCertificateResponse = try await translateCertificateWithOptions(translateCertificateReq as! TranslateCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
        return translateCertificateResp as! TranslateCertificateResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateECommerceWithOptions(_ request: TranslateECommerceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TranslateECommerceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.context)) {
            query["Context"] = request.context ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.formatType)) {
            body["FormatType"] = request.formatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["Scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceText)) {
            body["SourceText"] = request.sourceText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["TargetLanguage"] = request.targetLanguage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TranslateECommerce",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TranslateECommerceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateECommerce(_ request: TranslateECommerceRequest) async throws -> TranslateECommerceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await translateECommerceWithOptions(request as! TranslateECommerceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateGeneralWithOptions(_ request: TranslateGeneralRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TranslateGeneralResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.context)) {
            query["Context"] = request.context ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.formatType)) {
            body["FormatType"] = request.formatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["Scene"] = request.scene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceText)) {
            body["SourceText"] = request.sourceText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["TargetLanguage"] = request.targetLanguage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TranslateGeneral",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TranslateGeneralResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateGeneral(_ request: TranslateGeneralRequest) async throws -> TranslateGeneralResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await translateGeneralWithOptions(request as! TranslateGeneralRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateImageWithOptions(_ request: TranslateImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TranslateImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ext)) {
            body["Ext"] = request.ext ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.field)) {
            body["Field"] = request.field ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageBase64)) {
            body["ImageBase64"] = request.imageBase64 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["TargetLanguage"] = request.targetLanguage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TranslateImage",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TranslateImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateImage(_ request: TranslateImageRequest) async throws -> TranslateImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await translateImageWithOptions(request as! TranslateImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateImageBatchWithOptions(_ request: TranslateImageBatchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TranslateImageBatchResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customTaskId)) {
            body["CustomTaskId"] = request.customTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ext)) {
            body["Ext"] = request.ext ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.field)) {
            body["Field"] = request.field ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrls)) {
            body["ImageUrls"] = request.imageUrls ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["TargetLanguage"] = request.targetLanguage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TranslateImageBatch",
            "version": "2018-10-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TranslateImageBatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func translateImageBatch(_ request: TranslateImageBatchRequest) async throws -> TranslateImageBatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await translateImageBatchWithOptions(request as! TranslateImageBatchRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
