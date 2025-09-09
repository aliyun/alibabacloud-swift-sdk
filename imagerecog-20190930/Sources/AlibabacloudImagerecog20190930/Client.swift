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
        self._endpointRule = "regional"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("imagerecog", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func classifyingRubbishWithOptions(_ request: ClassifyingRubbishRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ClassifyingRubbishResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            body["ImageURL"] = request.imageURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ClassifyingRubbish",
            "version": "2019-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ClassifyingRubbishResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func classifyingRubbish(_ request: ClassifyingRubbishRequest) async throws -> ClassifyingRubbishResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await classifyingRubbishWithOptions(request as! ClassifyingRubbishRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func classifyingRubbishAdvance(_ request: ClassifyingRubbishAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ClassifyingRubbishResponse {
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
            "Product": "imagerecog",
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
        var classifyingRubbishReq: ClassifyingRubbishRequest = ClassifyingRubbishRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, classifyingRubbishReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.imageURLObject!,
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
            classifyingRubbishReq.imageURL = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var classifyingRubbishResp: ClassifyingRubbishResponse = try await classifyingRubbishWithOptions(classifyingRubbishReq as! ClassifyingRubbishRequest, runtime as! TeaUtils.RuntimeOptions)
        return classifyingRubbishResp as! ClassifyingRubbishResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageElementsWithOptions(_ request: DetectImageElementsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectImageElementsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectImageElements",
            "version": "2019-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectImageElementsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageElements(_ request: DetectImageElementsRequest) async throws -> DetectImageElementsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectImageElementsWithOptions(request as! DetectImageElementsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageElementsAdvance(_ request: DetectImageElementsAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectImageElementsResponse {
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
            "Product": "imagerecog",
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
        var detectImageElementsReq: DetectImageElementsRequest = DetectImageElementsRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, detectImageElementsReq)
        if (!TeaUtils.Client.isUnset(request.urlObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.urlObject!,
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
            detectImageElementsReq.url = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var detectImageElementsResp: DetectImageElementsResponse = try await detectImageElementsWithOptions(detectImageElementsReq as! DetectImageElementsRequest, runtime as! TeaUtils.RuntimeOptions)
        return detectImageElementsResp as! DetectImageElementsResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func evaluateCertificateQualityWithOptions(_ request: EvaluateCertificateQualityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EvaluateCertificateQualityResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            body["ImageURL"] = request.imageURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EvaluateCertificateQuality",
            "version": "2019-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EvaluateCertificateQualityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func evaluateCertificateQuality(_ request: EvaluateCertificateQualityRequest) async throws -> EvaluateCertificateQualityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await evaluateCertificateQualityWithOptions(request as! EvaluateCertificateQualityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func evaluateCertificateQualityAdvance(_ request: EvaluateCertificateQualityAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EvaluateCertificateQualityResponse {
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
            "Product": "imagerecog",
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
        var evaluateCertificateQualityReq: EvaluateCertificateQualityRequest = EvaluateCertificateQualityRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, evaluateCertificateQualityReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.imageURLObject!,
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
            evaluateCertificateQualityReq.imageURL = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var evaluateCertificateQualityResp: EvaluateCertificateQualityResponse = try await evaluateCertificateQualityWithOptions(evaluateCertificateQualityReq as! EvaluateCertificateQualityRequest, runtime as! TeaUtils.RuntimeOptions)
        return evaluateCertificateQualityResp as! EvaluateCertificateQualityResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAsyncJobResultWithOptions(_ request: GetAsyncJobResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAsyncJobResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAsyncJobResult",
            "version": "2019-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAsyncJobResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAsyncJobResult(_ request: GetAsyncJobResultRequest) async throws -> GetAsyncJobResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAsyncJobResultWithOptions(request as! GetAsyncJobResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeFoodWithOptions(_ request: RecognizeFoodRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeFoodResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            body["ImageURL"] = request.imageURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeFood",
            "version": "2019-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeFoodResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeFood(_ request: RecognizeFoodRequest) async throws -> RecognizeFoodResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeFoodWithOptions(request as! RecognizeFoodRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeFoodAdvance(_ request: RecognizeFoodAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeFoodResponse {
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
            "Product": "imagerecog",
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
        var recognizeFoodReq: RecognizeFoodRequest = RecognizeFoodRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, recognizeFoodReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.imageURLObject!,
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
            recognizeFoodReq.imageURL = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var recognizeFoodResp: RecognizeFoodResponse = try await recognizeFoodWithOptions(recognizeFoodReq as! RecognizeFoodRequest, runtime as! TeaUtils.RuntimeOptions)
        return recognizeFoodResp as! RecognizeFoodResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeImageColorWithOptions(_ request: RecognizeImageColorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeImageColorResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.colorCount)) {
            body["ColorCount"] = request.colorCount!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeImageColor",
            "version": "2019-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeImageColorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeImageColor(_ request: RecognizeImageColorRequest) async throws -> RecognizeImageColorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeImageColorWithOptions(request as! RecognizeImageColorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeImageColorAdvance(_ request: RecognizeImageColorAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeImageColorResponse {
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
            "Product": "imagerecog",
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
        var recognizeImageColorReq: RecognizeImageColorRequest = RecognizeImageColorRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, recognizeImageColorReq)
        if (!TeaUtils.Client.isUnset(request.urlObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.urlObject!,
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
            recognizeImageColorReq.url = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var recognizeImageColorResp: RecognizeImageColorResponse = try await recognizeImageColorWithOptions(recognizeImageColorReq as! RecognizeImageColorRequest, runtime as! TeaUtils.RuntimeOptions)
        return recognizeImageColorResp as! RecognizeImageColorResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeImageStyleWithOptions(_ request: RecognizeImageStyleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeImageStyleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeImageStyle",
            "version": "2019-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeImageStyleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeImageStyle(_ request: RecognizeImageStyleRequest) async throws -> RecognizeImageStyleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeImageStyleWithOptions(request as! RecognizeImageStyleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeImageStyleAdvance(_ request: RecognizeImageStyleAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeImageStyleResponse {
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
            "Product": "imagerecog",
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
        var recognizeImageStyleReq: RecognizeImageStyleRequest = RecognizeImageStyleRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, recognizeImageStyleReq)
        if (!TeaUtils.Client.isUnset(request.urlObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.urlObject!,
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
            recognizeImageStyleReq.url = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var recognizeImageStyleResp: RecognizeImageStyleResponse = try await recognizeImageStyleWithOptions(recognizeImageStyleReq as! RecognizeImageStyleRequest, runtime as! TeaUtils.RuntimeOptions)
        return recognizeImageStyleResp as! RecognizeImageStyleResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeSceneWithOptions(_ request: RecognizeSceneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeSceneResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            body["ImageURL"] = request.imageURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeScene",
            "version": "2019-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeScene(_ request: RecognizeSceneRequest) async throws -> RecognizeSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeSceneWithOptions(request as! RecognizeSceneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeSceneAdvance(_ request: RecognizeSceneAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeSceneResponse {
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
            "Product": "imagerecog",
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
        var recognizeSceneReq: RecognizeSceneRequest = RecognizeSceneRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, recognizeSceneReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.imageURLObject!,
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
            recognizeSceneReq.imageURL = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var recognizeSceneResp: RecognizeSceneResponse = try await recognizeSceneWithOptions(recognizeSceneReq as! RecognizeSceneRequest, runtime as! TeaUtils.RuntimeOptions)
        return recognizeSceneResp as! RecognizeSceneResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func taggingAdImageWithOptions(_ request: TaggingAdImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TaggingAdImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            body["ImageURL"] = request.imageURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TaggingAdImage",
            "version": "2019-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TaggingAdImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func taggingAdImage(_ request: TaggingAdImageRequest) async throws -> TaggingAdImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await taggingAdImageWithOptions(request as! TaggingAdImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func taggingAdImageAdvance(_ request: TaggingAdImageAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TaggingAdImageResponse {
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
            "Product": "imagerecog",
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
        var taggingAdImageReq: TaggingAdImageRequest = TaggingAdImageRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, taggingAdImageReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.imageURLObject!,
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
            taggingAdImageReq.imageURL = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var taggingAdImageResp: TaggingAdImageResponse = try await taggingAdImageWithOptions(taggingAdImageReq as! TaggingAdImageRequest, runtime as! TeaUtils.RuntimeOptions)
        return taggingAdImageResp as! TaggingAdImageResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func taggingImageWithOptions(_ request: TaggingImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TaggingImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            body["ImageURL"] = request.imageURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TaggingImage",
            "version": "2019-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TaggingImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func taggingImage(_ request: TaggingImageRequest) async throws -> TaggingImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await taggingImageWithOptions(request as! TaggingImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func taggingImageAdvance(_ request: TaggingImageAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TaggingImageResponse {
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
            "Product": "imagerecog",
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
        var taggingImageReq: TaggingImageRequest = TaggingImageRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, taggingImageReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.imageURLObject!,
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
            taggingImageReq.imageURL = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var taggingImageResp: TaggingImageResponse = try await taggingImageWithOptions(taggingImageReq as! TaggingImageRequest, runtime as! TeaUtils.RuntimeOptions)
        return taggingImageResp as! TaggingImageResponse
    }
}
