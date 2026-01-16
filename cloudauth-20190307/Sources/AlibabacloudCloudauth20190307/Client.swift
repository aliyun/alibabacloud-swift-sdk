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
        self._endpointRule = "central"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("cloudauth", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func _postOSSObject(_ bucketName: String, _ data: [String: Any], _ runtime: TeaUtils.RuntimeOptions) async throws -> [String: Any] {
        try runtime.validate()
        var _runtime: [String: Any] = [
            "timeouted": "retry",
            "key": TeaUtils.Client.defaultString(runtime.key, self._key),
            "cert": TeaUtils.Client.defaultString(runtime.cert, self._cert),
            "ca": TeaUtils.Client.defaultString(runtime.ca, self._ca),
            "readTimeout": TeaUtils.Client.defaultNumber(runtime.readTimeout, self._readTimeout),
            "connectTimeout": TeaUtils.Client.defaultNumber(runtime.connectTimeout, self._connectTimeout),
            "httpProxy": TeaUtils.Client.defaultString(runtime.httpProxy, self._httpProxy),
            "httpsProxy": TeaUtils.Client.defaultString(runtime.httpsProxy, self._httpsProxy),
            "noProxy": TeaUtils.Client.defaultString(runtime.noProxy, self._noProxy),
            "socks5Proxy": TeaUtils.Client.defaultString(runtime.socks5Proxy, self._socks5Proxy),
            "socks5NetWork": TeaUtils.Client.defaultString(runtime.socks5NetWork, self._socks5NetWork),
            "maxIdleConns": TeaUtils.Client.defaultNumber(runtime.maxIdleConns, self._maxIdleConns),
            "retry": [
                "retryable": runtime.autoretry!,
                "maxAttempts": TeaUtils.Client.defaultNumber(runtime.maxAttempts, 3)
            ],
            "backoff": [
                "policy": TeaUtils.Client.defaultString(runtime.backoffPolicy, "no"),
                "period": TeaUtils.Client.defaultNumber(runtime.backoffPeriod, 1)
            ],
            "ignoreSSL": AlibabacloudOpenApi.Client.defaultAny(runtime.ignoreSSL, false),
            "tlsMinVersion": self._tlsMinVersion ?? ""
        ]
        var _lastRequest: Tea.TeaRequest? = nil
        var _lastException: Tea.TeaError? = nil
        var _now: Int32 = Tea.TeaCore.timeNow()
        var _retryTimes: Int32 = 0
        while (Tea.TeaCore.allowRetry(_runtime["retry"], _retryTimes, _now)) {
            if (_retryTimes > 0) {
                var _backoffTime: Int32 = Tea.TeaCore.getBackoffTime(_runtime["backoff"], _retryTimes)
                if (_backoffTime > 0) {
                    Tea.TeaCore.sleep(_backoffTime)
                }
            }
            _retryTimes = _retryTimes + 1
            do {
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
                _lastRequest = _request
                var _response: Tea.TeaResponse = try await Tea.TeaCore.doAction(_request, _runtime)
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
            catch {
                if (Tea.TeaCore.isRetryable(error)) {
                    _lastException = error as! Tea.RetryableError
                    continue
                }
                throw error
            }
        }
        throw Tea.UnretryableError(_lastRequest, _lastException)
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
    public func aIGCFaceVerifyWithOptions(_ request: AIGCFaceVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AIGCFaceVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.faceContrastPictureUrl)) {
            query["FaceContrastPictureUrl"] = request.faceContrastPictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketName)) {
            query["OssBucketName"] = request.ossBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossObjectName)) {
            query["OssObjectName"] = request.ossObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderNo)) {
            query["OuterOrderNo"] = request.outerOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.faceContrastPicture)) {
            body["FaceContrastPicture"] = request.faceContrastPicture ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AIGCFaceVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AIGCFaceVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aIGCFaceVerify(_ request: AIGCFaceVerifyRequest) async throws -> AIGCFaceVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await aIGCFaceVerifyWithOptions(request as! AIGCFaceVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bankMetaVerifyWithOptions(_ request: BankMetaVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BankMetaVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bankCard)) {
            query["BankCard"] = request.bankCard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            query["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identityType)) {
            query["IdentityType"] = request.identityType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyMode)) {
            query["VerifyMode"] = request.verifyMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BankMetaVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BankMetaVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bankMetaVerify(_ request: BankMetaVerifyRequest) async throws -> BankMetaVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bankMetaVerifyWithOptions(request as! BankMetaVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func compareFaceVerifyWithOptions(_ request: CompareFaceVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CompareFaceVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.crop)) {
            body["Crop"] = request.crop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderNo)) {
            body["OuterOrderNo"] = request.outerOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceCertifyId)) {
            body["SourceCertifyId"] = request.sourceCertifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceFaceContrastPicture)) {
            body["SourceFaceContrastPicture"] = request.sourceFaceContrastPicture ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceFaceContrastPictureUrl)) {
            body["SourceFaceContrastPictureUrl"] = request.sourceFaceContrastPictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceOssBucketName)) {
            body["SourceOssBucketName"] = request.sourceOssBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceOssObjectName)) {
            body["SourceOssObjectName"] = request.sourceOssObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetCertifyId)) {
            body["TargetCertifyId"] = request.targetCertifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetFaceContrastPicture)) {
            body["TargetFaceContrastPicture"] = request.targetFaceContrastPicture ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetFaceContrastPictureUrl)) {
            body["TargetFaceContrastPictureUrl"] = request.targetFaceContrastPictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetOssBucketName)) {
            body["TargetOssBucketName"] = request.targetOssBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetOssObjectName)) {
            body["TargetOssObjectName"] = request.targetOssObjectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CompareFaceVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CompareFaceVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func compareFaceVerify(_ request: CompareFaceVerifyRequest) async throws -> CompareFaceVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await compareFaceVerifyWithOptions(request as! CompareFaceVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func compareFacesWithOptions(_ request: CompareFacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CompareFacesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceImageType)) {
            body["SourceImageType"] = request.sourceImageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceImageValue)) {
            body["SourceImageValue"] = request.sourceImageValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetImageType)) {
            body["TargetImageType"] = request.targetImageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetImageValue)) {
            body["TargetImageValue"] = request.targetImageValue ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CompareFaces",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CompareFacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func compareFaces(_ request: CompareFacesRequest) async throws -> CompareFacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await compareFacesWithOptions(request as! CompareFacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func contrastFaceVerifyWithOptions(_ request: ContrastFaceVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ContrastFaceVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.model)) {
            query["Model"] = request.model ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certName)) {
            body["CertName"] = request.certName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certNo)) {
            body["CertNo"] = request.certNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certType)) {
            body["CertType"] = request.certType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certifyId)) {
            body["CertifyId"] = request.certifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crop)) {
            body["Crop"] = request.crop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceToken)) {
            body["DeviceToken"] = request.deviceToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptType)) {
            body["EncryptType"] = request.encryptType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceContrastFile)) {
            body["FaceContrastFile"] = request.faceContrastFile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceContrastPicture)) {
            body["FaceContrastPicture"] = request.faceContrastPicture ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceContrastPictureUrl)) {
            body["FaceContrastPictureUrl"] = request.faceContrastPictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            body["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            body["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketName)) {
            body["OssBucketName"] = request.ossBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossObjectName)) {
            body["OssObjectName"] = request.ossObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderNo)) {
            body["OuterOrderNo"] = request.outerOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ContrastFaceVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ContrastFaceVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func contrastFaceVerify(_ request: ContrastFaceVerifyRequest) async throws -> ContrastFaceVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await contrastFaceVerifyWithOptions(request as! ContrastFaceVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func contrastFaceVerifyAdvance(_ request: ContrastFaceVerifyAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ContrastFaceVerifyResponse {
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
            "Product": "Cloudauth",
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
        var contrastFaceVerifyReq: ContrastFaceVerifyRequest = ContrastFaceVerifyRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, contrastFaceVerifyReq)
        if (!TeaUtils.Client.isUnset(request.faceContrastFileObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.faceContrastFileObject!,
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
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any], runtime as! TeaUtils.RuntimeOptions)
            contrastFaceVerifyReq.faceContrastFile = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var contrastFaceVerifyResp: ContrastFaceVerifyResponse = try await contrastFaceVerifyWithOptions(contrastFaceVerifyReq as! ContrastFaceVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
        return contrastFaceVerifyResp as! ContrastFaceVerifyResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAntCloudAuthSceneWithOptions(_ request: CreateAntCloudAuthSceneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAntCloudAuthSceneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bindMiniProgram)) {
            query["BindMiniProgram"] = request.bindMiniProgram ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkFileBody)) {
            query["CheckFileBody"] = request.checkFileBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkFileName)) {
            query["CheckFileName"] = request.checkFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceRiskPlus)) {
            query["DeviceRiskPlus"] = request.deviceRiskPlus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.miniProgramName)) {
            query["MiniProgramName"] = request.miniProgramName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            query["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnPicCount)) {
            query["ReturnPicCount"] = request.returnPicCount!;
        }
        if (!TeaUtils.Client.isUnset(request.returnVideoLength)) {
            query["ReturnVideoLength"] = request.returnVideoLength!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneName)) {
            query["SceneName"] = request.sceneName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeImage)) {
            query["StoreImage"] = request.storeImage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAntCloudAuthScene",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAntCloudAuthSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAntCloudAuthScene(_ request: CreateAntCloudAuthSceneRequest) async throws -> CreateAntCloudAuthSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAntCloudAuthSceneWithOptions(request as! CreateAntCloudAuthSceneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAuthKeyWithOptions(_ request: CreateAuthKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAuthKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authYears)) {
            query["AuthYears"] = request.authYears!;
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.test)) {
            query["Test"] = request.test!;
        }
        if (!TeaUtils.Client.isUnset(request.userDeviceId)) {
            query["UserDeviceId"] = request.userDeviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAuthKey",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAuthKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAuthKey(_ request: CreateAuthKeyRequest) async throws -> CreateAuthKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAuthKeyWithOptions(request as! CreateAuthKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCloudauthstSceneWithOptions(_ request: CreateCloudauthstSceneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCloudauthstSceneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneName)) {
            query["SceneName"] = request.sceneName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storeImage)) {
            query["StoreImage"] = request.storeImage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCloudauthstScene",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCloudauthstSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCloudauthstScene(_ request: CreateCloudauthstSceneRequest) async throws -> CreateCloudauthstSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCloudauthstSceneWithOptions(request as! CreateCloudauthstSceneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSceneConfigWithOptions(_ request: CreateSceneConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSceneConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["sceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSceneConfig",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSceneConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSceneConfig(_ request: CreateSceneConfigRequest) async throws -> CreateSceneConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSceneConfigWithOptions(request as! CreateSceneConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVerifySettingWithOptions(_ request: CreateVerifySettingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVerifySettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            query["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.guideStep)) {
            query["GuideStep"] = request.guideStep!;
        }
        if (!TeaUtils.Client.isUnset(request.privacyStep)) {
            query["PrivacyStep"] = request.privacyStep!;
        }
        if (!TeaUtils.Client.isUnset(request.resultStep)) {
            query["ResultStep"] = request.resultStep!;
        }
        if (!TeaUtils.Client.isUnset(request.solution)) {
            query["Solution"] = request.solution ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVerifySetting",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVerifySettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVerifySetting(_ request: CreateVerifySettingRequest) async throws -> CreateVerifySettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVerifySettingWithOptions(request as! CreateVerifySettingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWhitelistSettingWithOptions(_ request: CreateWhitelistSettingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWhitelistSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certNo)) {
            query["CertNo"] = request.certNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certifyId)) {
            query["CertifyId"] = request.certifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIp)) {
            query["SourceIp"] = request.sourceIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validDay)) {
            query["ValidDay"] = request.validDay!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWhitelistSetting",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWhitelistSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWhitelistSetting(_ request: CreateWhitelistSettingRequest) async throws -> CreateWhitelistSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createWhitelistSettingWithOptions(request as! CreateWhitelistSettingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func credentialProductVerifyV2WithOptions(_ request: CredentialProductVerifyV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> CredentialProductVerifyV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credName)) {
            query["CredName"] = request.credName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credType)) {
            query["CredType"] = request.credType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantId)) {
            query["MerchantId"] = request.merchantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageFile)) {
            body["ImageFile"] = request.imageFile ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CredentialProductVerifyV2",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CredentialProductVerifyV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func credentialProductVerifyV2(_ request: CredentialProductVerifyV2Request) async throws -> CredentialProductVerifyV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await credentialProductVerifyV2WithOptions(request as! CredentialProductVerifyV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func credentialProductVerifyV2Advance(_ request: CredentialProductVerifyV2AdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CredentialProductVerifyV2Response {
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
            "Product": "Cloudauth",
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
        var credentialProductVerifyV2Req: CredentialProductVerifyV2Request = CredentialProductVerifyV2Request([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, credentialProductVerifyV2Req)
        if (!TeaUtils.Client.isUnset(request.imageFileObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.imageFileObject!,
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
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any], runtime as! TeaUtils.RuntimeOptions)
            credentialProductVerifyV2Req.imageFile = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var credentialProductVerifyV2Resp: CredentialProductVerifyV2Response = try await credentialProductVerifyV2WithOptions(credentialProductVerifyV2Req as! CredentialProductVerifyV2Request, runtime as! TeaUtils.RuntimeOptions)
        return credentialProductVerifyV2Resp as! CredentialProductVerifyV2Response
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func credentialVerifyWithOptions(_ tmpReq: CredentialVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CredentialVerifyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CredentialVerifyShrinkRequest = CredentialVerifyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.merchantDetail)) {
            request.merchantDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.merchantDetail, "MerchantDetail", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certNum)) {
            query["CertNum"] = request.certNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credName)) {
            query["CredName"] = request.credName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credType)) {
            query["CredType"] = request.credType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            query["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isCheck)) {
            query["IsCheck"] = request.isCheck ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isOCR)) {
            query["IsOCR"] = request.isOCR ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantDetailShrink)) {
            query["MerchantDetail"] = request.merchantDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantId)) {
            query["MerchantId"] = request.merchantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            query["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptModel)) {
            query["PromptModel"] = request.promptModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageContext)) {
            body["ImageContext"] = request.imageContext ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CredentialVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CredentialVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func credentialVerify(_ request: CredentialVerifyRequest) async throws -> CredentialVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await credentialVerifyWithOptions(request as! CredentialVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func credentialVerifyV2WithOptions(_ tmpReq: CredentialVerifyV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> CredentialVerifyV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CredentialVerifyV2ShrinkRequest = CredentialVerifyV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.merchantDetail)) {
            request.merchantDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.merchantDetail, "MerchantDetail", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certNum)) {
            query["CertNum"] = request.certNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credName)) {
            query["CredName"] = request.credName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credType)) {
            query["CredType"] = request.credType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            query["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isCheck)) {
            query["IsCheck"] = request.isCheck ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isOcr)) {
            query["IsOcr"] = request.isOcr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantDetailShrink)) {
            query["MerchantDetail"] = request.merchantDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantId)) {
            query["MerchantId"] = request.merchantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            query["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptModel)) {
            query["PromptModel"] = request.promptModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageContext)) {
            body["ImageContext"] = request.imageContext ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageFile)) {
            body["ImageFile"] = request.imageFile ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CredentialVerifyV2",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CredentialVerifyV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func credentialVerifyV2(_ request: CredentialVerifyV2Request) async throws -> CredentialVerifyV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await credentialVerifyV2WithOptions(request as! CredentialVerifyV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func credentialVerifyV2Advance(_ request: CredentialVerifyV2AdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CredentialVerifyV2Response {
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
            "Product": "Cloudauth",
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
        var credentialVerifyV2Req: CredentialVerifyV2Request = CredentialVerifyV2Request([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, credentialVerifyV2Req)
        if (!TeaUtils.Client.isUnset(request.imageFileObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.imageFileObject!,
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
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any], runtime as! TeaUtils.RuntimeOptions)
            credentialVerifyV2Req.imageFile = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var credentialVerifyV2Resp: CredentialVerifyV2Response = try await credentialVerifyV2WithOptions(credentialVerifyV2Req as! CredentialVerifyV2Request, runtime as! TeaUtils.RuntimeOptions)
        return credentialVerifyV2Resp as! CredentialVerifyV2Response
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deepfakeDetectWithOptions(_ request: DeepfakeDetectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeepfakeDetectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.faceInputType)) {
            query["FaceInputType"] = request.faceInputType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceUrl)) {
            query["FaceUrl"] = request.faceUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderNo)) {
            query["OuterOrderNo"] = request.outerOrderNo ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.faceBase64)) {
            body["FaceBase64"] = request.faceBase64 ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeepfakeDetect",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeepfakeDetectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deepfakeDetect(_ request: DeepfakeDetectRequest) async throws -> DeepfakeDetectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deepfakeDetectWithOptions(request as! DeepfakeDetectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAllCustomizeFlowStrategyWithOptions(_ request: DeleteAllCustomizeFlowStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAllCustomizeFlowStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAllCustomizeFlowStrategy",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAllCustomizeFlowStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAllCustomizeFlowStrategy(_ request: DeleteAllCustomizeFlowStrategyRequest) async throws -> DeleteAllCustomizeFlowStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAllCustomizeFlowStrategyWithOptions(request as! DeleteAllCustomizeFlowStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAntCloudAuthSceneWithOptions(_ request: DeleteAntCloudAuthSceneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAntCloudAuthSceneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAntCloudAuthScene",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAntCloudAuthSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAntCloudAuthScene(_ request: DeleteAntCloudAuthSceneRequest) async throws -> DeleteAntCloudAuthSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAntCloudAuthSceneWithOptions(request as! DeleteAntCloudAuthSceneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBlackListStrategyWithOptions(_ request: DeleteBlackListStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBlackListStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.productName)) {
            query["ProductName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBlackListStrategy",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBlackListStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBlackListStrategy(_ request: DeleteBlackListStrategyRequest) async throws -> DeleteBlackListStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBlackListStrategyWithOptions(request as! DeleteBlackListStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCloudauthstSceneWithOptions(_ request: DeleteCloudauthstSceneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCloudauthstSceneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCloudauthstScene",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCloudauthstSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCloudauthstScene(_ request: DeleteCloudauthstSceneRequest) async throws -> DeleteCloudauthstSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCloudauthstSceneWithOptions(request as! DeleteCloudauthstSceneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteControlStrategyWithOptions(_ request: DeleteControlStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteControlStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiName)) {
            query["ApiName"] = request.apiName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteControlStrategy",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteControlStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteControlStrategy(_ request: DeleteControlStrategyRequest) async throws -> DeleteControlStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteControlStrategyWithOptions(request as! DeleteControlStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomizeFlowStrategyWithOptions(_ request: DeleteCustomizeFlowStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCustomizeFlowStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiName)) {
            query["ApiName"] = request.apiName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCustomizeFlowStrategy",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCustomizeFlowStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomizeFlowStrategy(_ request: DeleteCustomizeFlowStrategyRequest) async throws -> DeleteCustomizeFlowStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCustomizeFlowStrategyWithOptions(request as! DeleteCustomizeFlowStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFaceVerifyResultWithOptions(_ request: DeleteFaceVerifyResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFaceVerifyResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certifyId)) {
            query["CertifyId"] = request.certifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deleteAfterQuery)) {
            query["DeleteAfterQuery"] = request.deleteAfterQuery ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFaceVerifyResult",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFaceVerifyResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFaceVerifyResult(_ request: DeleteFaceVerifyResultRequest) async throws -> DeleteFaceVerifyResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFaceVerifyResultWithOptions(request as! DeleteFaceVerifyResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSceneConfigWithOptions(_ request: DeleteSceneConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSceneConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sceneConfigId)) {
            body["sceneConfigId"] = request.sceneConfigId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSceneConfig",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSceneConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSceneConfig(_ request: DeleteSceneConfigRequest) async throws -> DeleteSceneConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSceneConfigWithOptions(request as! DeleteSceneConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWhitelistSettingWithOptions(_ request: DeleteWhitelistSettingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWhitelistSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ids)) {
            query["Ids"] = request.ids ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIp)) {
            query["SourceIp"] = request.sourceIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWhitelistSetting",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWhitelistSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWhitelistSetting(_ request: DeleteWhitelistSettingRequest) async throws -> DeleteWhitelistSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteWhitelistSettingWithOptions(request as! DeleteWhitelistSettingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAntAndCloudAuthUserStatusWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAntAndCloudAuthUserStatusResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAntAndCloudAuthUserStatus",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAntAndCloudAuthUserStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAntAndCloudAuthUserStatus() async throws -> DescribeAntAndCloudAuthUserStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAntAndCloudAuthUserStatusWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAuthVerifyWithOptions(_ request: DescribeAuthVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAuthVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certifyId)) {
            body["CertifyId"] = request.certifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAuthVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAuthVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAuthVerify(_ request: DescribeAuthVerifyRequest) async throws -> DescribeAuthVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAuthVerifyWithOptions(request as! DescribeAuthVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCardVerifyWithOptions(_ request: DescribeCardVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCardVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certifyId)) {
            query["CertifyId"] = request.certifyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCardVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCardVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCardVerify(_ request: DescribeCardVerifyRequest) async throws -> DescribeCardVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCardVerifyWithOptions(request as! DescribeCardVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudauthstSceneListWithOptions(_ request: DescribeCloudauthstSceneListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCloudauthstSceneListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCloudauthstSceneList",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCloudauthstSceneListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudauthstSceneList(_ request: DescribeCloudauthstSceneListRequest) async throws -> DescribeCloudauthstSceneListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCloudauthstSceneListWithOptions(request as! DescribeCloudauthstSceneListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeviceInfoWithOptions(_ request: DescribeDeviceInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDeviceInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiredEndDay)) {
            query["ExpiredEndDay"] = request.expiredEndDay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiredStartDay)) {
            query["ExpiredStartDay"] = request.expiredStartDay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userDeviceId)) {
            query["UserDeviceId"] = request.userDeviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDeviceInfo",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDeviceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDeviceInfo(_ request: DescribeDeviceInfoRequest) async throws -> DescribeDeviceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDeviceInfoWithOptions(request as! DescribeDeviceInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFaceGuardRiskWithOptions(_ request: DescribeFaceGuardRiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFaceGuardRiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceToken)) {
            query["DeviceToken"] = request.deviceToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderNo)) {
            query["OuterOrderNo"] = request.outerOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFaceGuardRisk",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFaceGuardRiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFaceGuardRisk(_ request: DescribeFaceGuardRiskRequest) async throws -> DescribeFaceGuardRiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFaceGuardRiskWithOptions(request as! DescribeFaceGuardRiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFaceVerifyWithOptions(_ request: DescribeFaceVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFaceVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certifyId)) {
            query["CertifyId"] = request.certifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pictureReturnType)) {
            query["PictureReturnType"] = request.pictureReturnType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFaceVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFaceVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFaceVerify(_ request: DescribeFaceVerifyRequest) async throws -> DescribeFaceVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFaceVerifyWithOptions(request as! DescribeFaceVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInfoCheckExportRecordWithOptions(_ request: DescribeInfoCheckExportRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInfoCheckExportRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInfoCheckExportRecord",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInfoCheckExportRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInfoCheckExportRecord(_ request: DescribeInfoCheckExportRecordRequest) async throws -> DescribeInfoCheckExportRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInfoCheckExportRecordWithOptions(request as! DescribeInfoCheckExportRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeListAntCloudAuthScenesWithOptions(_ request: DescribeListAntCloudAuthScenesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeListAntCloudAuthScenesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeListAntCloudAuthScenes",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeListAntCloudAuthScenesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeListAntCloudAuthScenes(_ request: DescribeListAntCloudAuthScenesRequest) async throws -> DescribeListAntCloudAuthScenesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeListAntCloudAuthScenesWithOptions(request as! DescribeListAntCloudAuthScenesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeListFaceVerifyDataWithOptions(_ request: DescribeListFaceVerifyDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeListFaceVerifyDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.gmtEnd)) {
            query["GmtEnd"] = request.gmtEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.gmtStart)) {
            query["GmtStart"] = request.gmtStart!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeListFaceVerifyData",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeListFaceVerifyDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeListFaceVerifyData(_ request: DescribeListFaceVerifyDataRequest) async throws -> DescribeListFaceVerifyDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeListFaceVerifyDataWithOptions(request as! DescribeListFaceVerifyDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeListFaceVerifyInfosWithOptions(_ request: DescribeListFaceVerifyInfosRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeListFaceVerifyInfosResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certifyId)) {
            query["CertifyId"] = request.certifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtEnd)) {
            query["GmtEnd"] = request.gmtEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.gmtStart)) {
            query["GmtStart"] = request.gmtStart!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeListFaceVerifyInfos",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeListFaceVerifyInfosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeListFaceVerifyInfos(_ request: DescribeListFaceVerifyInfosRequest) async throws -> DescribeListFaceVerifyInfosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeListFaceVerifyInfosWithOptions(request as! DescribeListFaceVerifyInfosRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMetaSearchPageListWithOptions(_ request: DescribeMetaSearchPageListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMetaSearchPageListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.api)) {
            query["Api"] = request.api ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bankCard)) {
            query["BankCard"] = request.bankCard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizCode)) {
            query["BizCode"] = request.bizCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            query["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ispName)) {
            query["IspName"] = request.ispName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.reqId)) {
            query["ReqId"] = request.reqId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.subCode)) {
            query["SubCode"] = request.subCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleNum)) {
            query["VehicleNum"] = request.vehicleNum ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMetaSearchPageList",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMetaSearchPageListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMetaSearchPageList(_ request: DescribeMetaSearchPageListRequest) async throws -> DescribeMetaSearchPageListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMetaSearchPageListWithOptions(request as! DescribeMetaSearchPageListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMetaStatisticsListWithOptions(_ request: DescribeMetaStatisticsListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMetaStatisticsListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.api)) {
            query["Api"] = request.api ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMetaStatisticsList",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMetaStatisticsListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMetaStatisticsList(_ request: DescribeMetaStatisticsListRequest) async throws -> DescribeMetaStatisticsListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMetaStatisticsListWithOptions(request as! DescribeMetaStatisticsListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMetaStatisticsPageListWithOptions(_ request: DescribeMetaStatisticsPageListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMetaStatisticsPageListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.api)) {
            query["Api"] = request.api ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMetaStatisticsPageList",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMetaStatisticsPageListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMetaStatisticsPageList(_ request: DescribeMetaStatisticsPageListRequest) async throws -> DescribeMetaStatisticsPageListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMetaStatisticsPageListWithOptions(request as! DescribeMetaStatisticsPageListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOssStatusWithOptions(_ request: DescribeOssStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeOssStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeOssStatus",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeOssStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOssStatus(_ request: DescribeOssStatusRequest) async throws -> DescribeOssStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeOssStatusWithOptions(request as! DescribeOssStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOssStatusV2WithOptions(_ request: DescribeOssStatusV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeOssStatusV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIp)) {
            query["SourceIp"] = request.sourceIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeOssStatusV2",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeOssStatusV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOssStatusV2(_ request: DescribeOssStatusV2Request) async throws -> DescribeOssStatusV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeOssStatusV2WithOptions(request as! DescribeOssStatusV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOssUploadTokenWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeOssUploadTokenResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeOssUploadToken",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeOssUploadTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOssUploadToken() async throws -> DescribeOssUploadTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeOssUploadTokenWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePageFaceVerifyDataWithOptions(_ request: DescribePageFaceVerifyDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePageFaceVerifyDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePageFaceVerifyData",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePageFaceVerifyDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePageFaceVerifyData(_ request: DescribePageFaceVerifyDataRequest) async throws -> DescribePageFaceVerifyDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePageFaceVerifyDataWithOptions(request as! DescribePageFaceVerifyDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePageSettingWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePageSettingResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePageSetting",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePageSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePageSetting() async throws -> DescribePageSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePageSettingWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeProductCodeWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeProductCodeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeProductCode",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeProductCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeProductCode() async throws -> DescribeProductCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeProductCodeWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSmartStatisticsPageListWithOptions(_ request: DescribeSmartStatisticsPageListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSmartStatisticsPageListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSmartStatisticsPageList",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSmartStatisticsPageListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSmartStatisticsPageList(_ request: DescribeSmartStatisticsPageListRequest) async throws -> DescribeSmartStatisticsPageListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSmartStatisticsPageListWithOptions(request as! DescribeSmartStatisticsPageListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyDeviceRiskStatisticsWithOptions(_ request: DescribeVerifyDeviceRiskStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVerifyDeviceRiskStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVerifyDeviceRiskStatistics",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVerifyDeviceRiskStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyDeviceRiskStatistics(_ request: DescribeVerifyDeviceRiskStatisticsRequest) async throws -> DescribeVerifyDeviceRiskStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVerifyDeviceRiskStatisticsWithOptions(request as! DescribeVerifyDeviceRiskStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyFailStatisticsWithOptions(_ request: DescribeVerifyFailStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVerifyFailStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ageGt)) {
            query["AgeGt"] = request.ageGt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.api)) {
            query["Api"] = request.api ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            query["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVerifyFailStatistics",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVerifyFailStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyFailStatistics(_ request: DescribeVerifyFailStatisticsRequest) async throws -> DescribeVerifyFailStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVerifyFailStatisticsWithOptions(request as! DescribeVerifyFailStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyPersonasDeviceModelStatisticsWithOptions(_ request: DescribeVerifyPersonasDeviceModelStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVerifyPersonasDeviceModelStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeRange)) {
            query["TimeRange"] = request.timeRange ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVerifyPersonasDeviceModelStatistics",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVerifyPersonasDeviceModelStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyPersonasDeviceModelStatistics(_ request: DescribeVerifyPersonasDeviceModelStatisticsRequest) async throws -> DescribeVerifyPersonasDeviceModelStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVerifyPersonasDeviceModelStatisticsWithOptions(request as! DescribeVerifyPersonasDeviceModelStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyPersonasOsStatisticsWithOptions(_ request: DescribeVerifyPersonasOsStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVerifyPersonasOsStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeRange)) {
            query["TimeRange"] = request.timeRange ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVerifyPersonasOsStatistics",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVerifyPersonasOsStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyPersonasOsStatistics(_ request: DescribeVerifyPersonasOsStatisticsRequest) async throws -> DescribeVerifyPersonasOsStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVerifyPersonasOsStatisticsWithOptions(request as! DescribeVerifyPersonasOsStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyPersonasProvinceStatisticsWithOptions(_ request: DescribeVerifyPersonasProvinceStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVerifyPersonasProvinceStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeRange)) {
            query["TimeRange"] = request.timeRange ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVerifyPersonasProvinceStatistics",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVerifyPersonasProvinceStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyPersonasProvinceStatistics(_ request: DescribeVerifyPersonasProvinceStatisticsRequest) async throws -> DescribeVerifyPersonasProvinceStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVerifyPersonasProvinceStatisticsWithOptions(request as! DescribeVerifyPersonasProvinceStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyPersonasSexStatisticsWithOptions(_ request: DescribeVerifyPersonasSexStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVerifyPersonasSexStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeRange)) {
            query["TimeRange"] = request.timeRange ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVerifyPersonasSexStatistics",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVerifyPersonasSexStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyPersonasSexStatistics(_ request: DescribeVerifyPersonasSexStatisticsRequest) async throws -> DescribeVerifyPersonasSexStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVerifyPersonasSexStatisticsWithOptions(request as! DescribeVerifyPersonasSexStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyResultWithOptions(_ request: DescribeVerifyResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVerifyResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVerifyResult",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVerifyResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyResult(_ request: DescribeVerifyResultRequest) async throws -> DescribeVerifyResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVerifyResultWithOptions(request as! DescribeVerifyResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifySDKWithOptions(_ request: DescribeVerifySDKRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVerifySDKResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVerifySDK",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVerifySDKResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifySDK(_ request: DescribeVerifySDKRequest) async throws -> DescribeVerifySDKResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVerifySDKWithOptions(request as! DescribeVerifySDKRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifySearchPageListWithOptions(_ request: DescribeVerifySearchPageListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVerifySearchPageListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certNo)) {
            query["CertNo"] = request.certNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certifyId)) {
            query["CertifyId"] = request.certifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hasDeviceRisk)) {
            query["HasDeviceRisk"] = request.hasDeviceRisk!;
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            query["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderNo)) {
            query["OuterOrderNo"] = request.outerOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passed)) {
            query["Passed"] = request.passed ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskBizScenario)) {
            query["RiskBizScenario"] = request.riskBizScenario!;
        }
        if (!TeaUtils.Client.isUnset(request.riskDevice)) {
            query["RiskDevice"] = request.riskDevice!;
        }
        if (!TeaUtils.Client.isUnset(request.riskDeviceToken)) {
            query["RiskDeviceToken"] = request.riskDeviceToken!;
        }
        if (!TeaUtils.Client.isUnset(request.riskGeneric)) {
            query["RiskGeneric"] = request.riskGeneric!;
        }
        if (!TeaUtils.Client.isUnset(request.riskModelMining)) {
            query["RiskModelMining"] = request.riskModelMining!;
        }
        if (!TeaUtils.Client.isUnset(request.root)) {
            query["Root"] = request.root!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.simulator)) {
            query["Simulator"] = request.simulator!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subCode)) {
            query["SubCode"] = request.subCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subCodes)) {
            query["SubCodes"] = request.subCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.virtualVideo)) {
            query["VirtualVideo"] = request.virtualVideo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVerifySearchPageList",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVerifySearchPageListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifySearchPageList(_ request: DescribeVerifySearchPageListRequest) async throws -> DescribeVerifySearchPageListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVerifySearchPageListWithOptions(request as! DescribeVerifySearchPageListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyStatisticsWithOptions(_ request: DescribeVerifyStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVerifyStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ageGt)) {
            query["AgeGt"] = request.ageGt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVerifyStatistics",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVerifyStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyStatistics(_ request: DescribeVerifyStatisticsRequest) async throws -> DescribeVerifyStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVerifyStatisticsWithOptions(request as! DescribeVerifyStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyTokenWithOptions(_ request: DescribeVerifyTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVerifyTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackSeed)) {
            query["CallbackSeed"] = request.callbackSeed ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackUrl)) {
            query["CallbackUrl"] = request.callbackUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceRetainedImageUrl)) {
            query["FaceRetainedImageUrl"] = request.faceRetainedImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.failedRedirectUrl)) {
            query["FailedRedirectUrl"] = request.failedRedirectUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardBackImageUrl)) {
            query["IdCardBackImageUrl"] = request.idCardBackImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardFrontImageUrl)) {
            query["IdCardFrontImageUrl"] = request.idCardFrontImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardNumber)) {
            query["IdCardNumber"] = request.idCardNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passedRedirectUrl)) {
            query["PassedRedirectUrl"] = request.passedRedirectUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIp)) {
            query["UserIp"] = request.userIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userPhoneNumber)) {
            query["UserPhoneNumber"] = request.userPhoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userRegistTime)) {
            query["UserRegistTime"] = request.userRegistTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVerifyToken",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVerifyTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVerifyToken(_ request: DescribeVerifyTokenRequest) async throws -> DescribeVerifyTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVerifyTokenWithOptions(request as! DescribeVerifyTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWhitelistSettingWithOptions(_ request: DescribeWhitelistSettingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWhitelistSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certNo)) {
            query["CertNo"] = request.certNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certifyId)) {
            query["CertifyId"] = request.certifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIp)) {
            query["SourceIp"] = request.sourceIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validEndDate)) {
            query["ValidEndDate"] = request.validEndDate!;
        }
        if (!TeaUtils.Client.isUnset(request.validStartDate)) {
            query["ValidStartDate"] = request.validStartDate!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeWhitelistSetting",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWhitelistSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWhitelistSetting(_ request: DescribeWhitelistSettingRequest) async throws -> DescribeWhitelistSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeWhitelistSettingWithOptions(request as! DescribeWhitelistSettingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectFaceAttributesWithOptions(_ request: DetectFaceAttributesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectFaceAttributesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            body["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.materialValue)) {
            body["MaterialValue"] = request.materialValue ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectFaceAttributes",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectFaceAttributesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectFaceAttributes(_ request: DetectFaceAttributesRequest) async throws -> DetectFaceAttributesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectFaceAttributesWithOptions(request as! DetectFaceAttributesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadVerifyRecordsWithOptions(_ request: DownloadVerifyRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DownloadVerifyRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizParam)) {
            query["BizParam"] = request.bizParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DownloadVerifyRecords",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DownloadVerifyRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadVerifyRecords(_ request: DownloadVerifyRecordsRequest) async throws -> DownloadVerifyRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await downloadVerifyRecordsWithOptions(request as! DownloadVerifyRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id2MetaPeriodVerifyWithOptions(_ request: Id2MetaPeriodVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Id2MetaPeriodVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            body["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            body["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validityEndDate)) {
            body["ValidityEndDate"] = request.validityEndDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validityStartDate)) {
            body["ValidityStartDate"] = request.validityStartDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Id2MetaPeriodVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Id2MetaPeriodVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id2MetaPeriodVerify(_ request: Id2MetaPeriodVerifyRequest) async throws -> Id2MetaPeriodVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await id2MetaPeriodVerifyWithOptions(request as! Id2MetaPeriodVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id2MetaStandardVerifyWithOptions(_ request: Id2MetaStandardVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Id2MetaStandardVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            body["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            body["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Id2MetaStandardVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Id2MetaStandardVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id2MetaStandardVerify(_ request: Id2MetaStandardVerifyRequest) async throws -> Id2MetaStandardVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await id2MetaStandardVerifyWithOptions(request as! Id2MetaStandardVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id2MetaVerifyWithOptions(_ request: Id2MetaVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Id2MetaVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            body["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            body["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Id2MetaVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Id2MetaVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id2MetaVerify(_ request: Id2MetaVerifyRequest) async throws -> Id2MetaVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await id2MetaVerifyWithOptions(request as! Id2MetaVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id2MetaVerifyWithOCRWithOptions(_ request: Id2MetaVerifyWithOCRRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Id2MetaVerifyWithOCRResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certFile)) {
            body["CertFile"] = request.certFile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certNationalFile)) {
            body["CertNationalFile"] = request.certNationalFile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certNationalUrl)) {
            body["CertNationalUrl"] = request.certNationalUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certUrl)) {
            body["CertUrl"] = request.certUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Id2MetaVerifyWithOCR",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Id2MetaVerifyWithOCRResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id2MetaVerifyWithOCR(_ request: Id2MetaVerifyWithOCRRequest) async throws -> Id2MetaVerifyWithOCRResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await id2MetaVerifyWithOCRWithOptions(request as! Id2MetaVerifyWithOCRRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id2MetaVerifyWithOCRAdvance(_ request: Id2MetaVerifyWithOCRAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Id2MetaVerifyWithOCRResponse {
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
            "Product": "Cloudauth",
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
        var id2MetaVerifyWithOCRReq: Id2MetaVerifyWithOCRRequest = Id2MetaVerifyWithOCRRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, id2MetaVerifyWithOCRReq)
        if (!TeaUtils.Client.isUnset(request.certFileObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.certFileObject!,
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
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any], runtime as! TeaUtils.RuntimeOptions)
            id2MetaVerifyWithOCRReq.certFile = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        if (!TeaUtils.Client.isUnset(request.certNationalFileObject)) {
            var tmpResp1: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp1)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.certNationalFileObject!,
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
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any], runtime as! TeaUtils.RuntimeOptions)
            id2MetaVerifyWithOCRReq.certNationalFile = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var id2MetaVerifyWithOCRResp: Id2MetaVerifyWithOCRResponse = try await id2MetaVerifyWithOCRWithOptions(id2MetaVerifyWithOCRReq as! Id2MetaVerifyWithOCRRequest, runtime as! TeaUtils.RuntimeOptions)
        return id2MetaVerifyWithOCRResp as! Id2MetaVerifyWithOCRResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id3MetaVerifyWithOptions(_ request: Id3MetaVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Id3MetaVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.crop)) {
            body["Crop"] = request.crop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceFile)) {
            body["FaceFile"] = request.faceFile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceUrl)) {
            body["FaceUrl"] = request.faceUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            body["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            body["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Id3MetaVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Id3MetaVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id3MetaVerify(_ request: Id3MetaVerifyRequest) async throws -> Id3MetaVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await id3MetaVerifyWithOptions(request as! Id3MetaVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id3MetaVerifyAdvance(_ request: Id3MetaVerifyAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Id3MetaVerifyResponse {
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
            "Product": "Cloudauth",
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
        var id3MetaVerifyReq: Id3MetaVerifyRequest = Id3MetaVerifyRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, id3MetaVerifyReq)
        if (!TeaUtils.Client.isUnset(request.faceFileObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.faceFileObject!,
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
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any], runtime as! TeaUtils.RuntimeOptions)
            id3MetaVerifyReq.faceFile = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var id3MetaVerifyResp: Id3MetaVerifyResponse = try await id3MetaVerifyWithOptions(id3MetaVerifyReq as! Id3MetaVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
        return id3MetaVerifyResp as! Id3MetaVerifyResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id3MetaVerifyWithOCRWithOptions(_ request: Id3MetaVerifyWithOCRRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Id3MetaVerifyWithOCRResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certFile)) {
            body["CertFile"] = request.certFile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certNationalFile)) {
            body["CertNationalFile"] = request.certNationalFile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certNationalUrl)) {
            body["CertNationalUrl"] = request.certNationalUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certUrl)) {
            body["CertUrl"] = request.certUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Id3MetaVerifyWithOCR",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Id3MetaVerifyWithOCRResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id3MetaVerifyWithOCR(_ request: Id3MetaVerifyWithOCRRequest) async throws -> Id3MetaVerifyWithOCRResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await id3MetaVerifyWithOCRWithOptions(request as! Id3MetaVerifyWithOCRRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id3MetaVerifyWithOCRAdvance(_ request: Id3MetaVerifyWithOCRAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Id3MetaVerifyWithOCRResponse {
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
            "Product": "Cloudauth",
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
        var id3MetaVerifyWithOCRReq: Id3MetaVerifyWithOCRRequest = Id3MetaVerifyWithOCRRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, id3MetaVerifyWithOCRReq)
        if (!TeaUtils.Client.isUnset(request.certFileObject)) {
            var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.certFileObject!,
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
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any], runtime as! TeaUtils.RuntimeOptions)
            id3MetaVerifyWithOCRReq.certFile = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        if (!TeaUtils.Client.isUnset(request.certNationalFileObject)) {
            var tmpResp1: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
            authResponse = try TeaUtils.Client.assertAsMap(tmpResp1)
            tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
            useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
            authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
            fileObj = TeaFileForm.FileField([
                "filename": authResponseBody["ObjectKey"] ?? "",
                "content": request.certNationalFileObject!,
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
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any], runtime as! TeaUtils.RuntimeOptions)
            id3MetaVerifyWithOCRReq.certNationalFile = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var id3MetaVerifyWithOCRResp: Id3MetaVerifyWithOCRResponse = try await id3MetaVerifyWithOCRWithOptions(id3MetaVerifyWithOCRReq as! Id3MetaVerifyWithOCRRequest, runtime as! TeaUtils.RuntimeOptions)
        return id3MetaVerifyWithOCRResp as! Id3MetaVerifyWithOCRResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initAuthVerifyWithOptions(_ request: InitAuthVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InitAuthVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callbackToken)) {
            body["CallbackToken"] = request.callbackToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackUrl)) {
            body["CallbackUrl"] = request.callbackUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cardPageNumber)) {
            body["CardPageNumber"] = request.cardPageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cardType)) {
            body["CardType"] = request.cardType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docScanMode)) {
            body["DocScanMode"] = request.docScanMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idSpoof)) {
            body["IdSpoof"] = request.idSpoof ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metaInfo)) {
            body["MetaInfo"] = request.metaInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderNo)) {
            body["OuterOrderNo"] = request.outerOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InitAuthVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitAuthVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initAuthVerify(_ request: InitAuthVerifyRequest) async throws -> InitAuthVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await initAuthVerifyWithOptions(request as! InitAuthVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initCardVerifyWithOptions(_ request: InitCardVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InitCardVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callbackToken)) {
            query["CallbackToken"] = request.callbackToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackUrl)) {
            query["CallbackUrl"] = request.callbackUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cardPageNumber)) {
            query["CardPageNumber"] = request.cardPageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cardType)) {
            query["CardType"] = request.cardType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docScanMode)) {
            query["DocScanMode"] = request.docScanMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metaInfo)) {
            query["MetaInfo"] = request.metaInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            query["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pictureSave)) {
            query["PictureSave"] = request.pictureSave ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyMeta)) {
            query["VerifyMeta"] = request.verifyMeta ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InitCardVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitCardVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initCardVerify(_ request: InitCardVerifyRequest) async throws -> InitCardVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await initCardVerifyWithOptions(request as! InitCardVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initFaceVerifyWithOptions(_ request: InitFaceVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InitFaceVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appQualityCheck)) {
            query["AppQualityCheck"] = request.appQualityCheck ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.birthday)) {
            query["Birthday"] = request.birthday ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackToken)) {
            query["CallbackToken"] = request.callbackToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackUrl)) {
            query["CallbackUrl"] = request.callbackUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cameraSelection)) {
            query["CameraSelection"] = request.cameraSelection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certName)) {
            query["CertName"] = request.certName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certNo)) {
            query["CertNo"] = request.certNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certType)) {
            query["CertType"] = request.certType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certifyId)) {
            query["CertifyId"] = request.certifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certifyUrlStyle)) {
            query["CertifyUrlStyle"] = request.certifyUrlStyle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certifyUrlType)) {
            query["CertifyUrlType"] = request.certifyUrlType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptType)) {
            query["EncryptType"] = request.encryptType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceContrastPictureUrl)) {
            query["FaceContrastPictureUrl"] = request.faceContrastPictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceGuardOutput)) {
            query["FaceGuardOutput"] = request.faceGuardOutput ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.h5DegradeConfirmBtn)) {
            query["H5DegradeConfirmBtn"] = request.h5DegradeConfirmBtn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metaInfo)) {
            query["MetaInfo"] = request.metaInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needMultiFaceCheck)) {
            query["NeedMultiFaceCheck"] = request.needMultiFaceCheck ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketName)) {
            query["OssBucketName"] = request.ossBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossObjectName)) {
            query["OssObjectName"] = request.ossObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderNo)) {
            query["OuterOrderNo"] = request.outerOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.procedurePriority)) {
            query["ProcedurePriority"] = request.procedurePriority ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rarelyCharacters)) {
            query["RarelyCharacters"] = request.rarelyCharacters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.readImg)) {
            query["ReadImg"] = request.readImg ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnUrl)) {
            query["ReturnUrl"] = request.returnUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.suitableType)) {
            query["SuitableType"] = request.suitableType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uiCustomUrl)) {
            query["UiCustomUrl"] = request.uiCustomUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validityDate)) {
            query["ValidityDate"] = request.validityDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoEvidence)) {
            query["VideoEvidence"] = request.videoEvidence ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voluntaryCustomizedContent)) {
            query["VoluntaryCustomizedContent"] = request.voluntaryCustomizedContent ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authId)) {
            body["AuthId"] = request.authId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crop)) {
            body["Crop"] = request.crop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceContrastPicture)) {
            body["FaceContrastPicture"] = request.faceContrastPicture ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InitFaceVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitFaceVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initFaceVerify(_ request: InitFaceVerifyRequest) async throws -> InitFaceVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await initFaceVerifyWithOptions(request as! InitFaceVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertWhiteListSettingWithOptions(_ request: InsertWhiteListSettingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertWhiteListSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certNo)) {
            query["CertNo"] = request.certNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certifyId)) {
            query["CertifyId"] = request.certifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validDay)) {
            query["ValidDay"] = request.validDay!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertWhiteListSetting",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertWhiteListSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertWhiteListSetting(_ request: InsertWhiteListSettingRequest) async throws -> InsertWhiteListSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await insertWhiteListSettingWithOptions(request as! InsertWhiteListSettingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func livenessFaceVerifyWithOptions(_ request: LivenessFaceVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LivenessFaceVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.model)) {
            query["Model"] = request.model ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certifyId)) {
            body["CertifyId"] = request.certifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crop)) {
            body["Crop"] = request.crop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceToken)) {
            body["DeviceToken"] = request.deviceToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceContrastPicture)) {
            body["FaceContrastPicture"] = request.faceContrastPicture ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceContrastPictureUrl)) {
            body["FaceContrastPictureUrl"] = request.faceContrastPictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            body["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            body["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketName)) {
            body["OssBucketName"] = request.ossBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossObjectName)) {
            body["OssObjectName"] = request.ossObjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderNo)) {
            body["OuterOrderNo"] = request.outerOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LivenessFaceVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LivenessFaceVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func livenessFaceVerify(_ request: LivenessFaceVerifyRequest) async throws -> LivenessFaceVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await livenessFaceVerifyWithOptions(request as! LivenessFaceVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobile2MetaVerifyWithOptions(_ request: Mobile2MetaVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Mobile2MetaVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            body["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            body["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Mobile2MetaVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Mobile2MetaVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobile2MetaVerify(_ request: Mobile2MetaVerifyRequest) async throws -> Mobile2MetaVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mobile2MetaVerifyWithOptions(request as! Mobile2MetaVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobile3MetaDetailStandardVerifyWithOptions(_ request: Mobile3MetaDetailStandardVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Mobile3MetaDetailStandardVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            body["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            body["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            body["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Mobile3MetaDetailStandardVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Mobile3MetaDetailStandardVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobile3MetaDetailStandardVerify(_ request: Mobile3MetaDetailStandardVerifyRequest) async throws -> Mobile3MetaDetailStandardVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mobile3MetaDetailStandardVerifyWithOptions(request as! Mobile3MetaDetailStandardVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobile3MetaDetailVerifyWithOptions(_ request: Mobile3MetaDetailVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Mobile3MetaDetailVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            body["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            body["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            body["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Mobile3MetaDetailVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Mobile3MetaDetailVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobile3MetaDetailVerify(_ request: Mobile3MetaDetailVerifyRequest) async throws -> Mobile3MetaDetailVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mobile3MetaDetailVerifyWithOptions(request as! Mobile3MetaDetailVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobile3MetaSimpleStandardVerifyWithOptions(_ request: Mobile3MetaSimpleStandardVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Mobile3MetaSimpleStandardVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            body["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            body["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            body["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Mobile3MetaSimpleStandardVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Mobile3MetaSimpleStandardVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobile3MetaSimpleStandardVerify(_ request: Mobile3MetaSimpleStandardVerifyRequest) async throws -> Mobile3MetaSimpleStandardVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mobile3MetaSimpleStandardVerifyWithOptions(request as! Mobile3MetaSimpleStandardVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobile3MetaSimpleVerifyWithOptions(_ request: Mobile3MetaSimpleVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Mobile3MetaSimpleVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            body["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            body["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            body["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Mobile3MetaSimpleVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Mobile3MetaSimpleVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobile3MetaSimpleVerify(_ request: Mobile3MetaSimpleVerifyRequest) async throws -> Mobile3MetaSimpleVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mobile3MetaSimpleVerifyWithOptions(request as! Mobile3MetaSimpleVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobileDetectWithOptions(_ request: MobileDetectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MobileDetectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobiles)) {
            body["Mobiles"] = request.mobiles ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            body["ParamType"] = request.paramType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MobileDetect",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MobileDetectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobileDetect(_ request: MobileDetectRequest) async throws -> MobileDetectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mobileDetectWithOptions(request as! MobileDetectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobileOnlineStatusWithOptions(_ request: MobileOnlineStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MobileOnlineStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            body["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            body["ParamType"] = request.paramType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MobileOnlineStatus",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MobileOnlineStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobileOnlineStatus(_ request: MobileOnlineStatusRequest) async throws -> MobileOnlineStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mobileOnlineStatusWithOptions(request as! MobileOnlineStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobileOnlineTimeWithOptions(_ request: MobileOnlineTimeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MobileOnlineTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            body["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            body["ParamType"] = request.paramType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MobileOnlineTime",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MobileOnlineTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobileOnlineTime(_ request: MobileOnlineTimeRequest) async throws -> MobileOnlineTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mobileOnlineTimeWithOptions(request as! MobileOnlineTimeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobileRecycledMetaVerifyWithOptions(_ request: MobileRecycledMetaVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MobileRecycledMetaVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.registerDate)) {
            query["RegisterDate"] = request.registerDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MobileRecycledMetaVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MobileRecycledMetaVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobileRecycledMetaVerify(_ request: MobileRecycledMetaVerifyRequest) async throws -> MobileRecycledMetaVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mobileRecycledMetaVerifyWithOptions(request as! MobileRecycledMetaVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBlackListStrategyWithOptions(_ tmpReq: ModifyBlackListStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBlackListStrategyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyBlackListStrategyShrinkRequest = ModifyBlackListStrategyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.blackListStrategy)) {
            request.blackListStrategyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.blackListStrategy, "BlackListStrategy", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.blackListStrategyShrink)) {
            query["BlackListStrategy"] = request.blackListStrategyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyBlackListStrategy",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBlackListStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBlackListStrategy(_ request: ModifyBlackListStrategyRequest) async throws -> ModifyBlackListStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBlackListStrategyWithOptions(request as! ModifyBlackListStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyControlStrategyWithOptions(_ tmpReq: ModifyControlStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyControlStrategyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyControlStrategyShrinkRequest = ModifyControlStrategyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.controlStrategyList)) {
            request.controlStrategyListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.controlStrategyList, "ControlStrategyList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.controlStrategyListShrink)) {
            query["ControlStrategyList"] = request.controlStrategyListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyControlStrategy",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyControlStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyControlStrategy(_ request: ModifyControlStrategyRequest) async throws -> ModifyControlStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyControlStrategyWithOptions(request as! ModifyControlStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCustomizeFlowStrategyListWithOptions(_ tmpReq: ModifyCustomizeFlowStrategyListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCustomizeFlowStrategyListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyCustomizeFlowStrategyListShrinkRequest = ModifyCustomizeFlowStrategyListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.strategyObject)) {
            request.strategyObjectShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.strategyObject, "StrategyObject", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strategyObjectShrink)) {
            query["StrategyObject"] = request.strategyObjectShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCustomizeFlowStrategyList",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCustomizeFlowStrategyListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCustomizeFlowStrategyList(_ request: ModifyCustomizeFlowStrategyListRequest) async throws -> ModifyCustomizeFlowStrategyListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyCustomizeFlowStrategyListWithOptions(request as! ModifyCustomizeFlowStrategyListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDeviceInfoWithOptions(_ request: ModifyDeviceInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDeviceInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiredDay)) {
            query["ExpiredDay"] = request.expiredDay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userDeviceId)) {
            query["UserDeviceId"] = request.userDeviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDeviceInfo",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDeviceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDeviceInfo(_ request: ModifyDeviceInfoRequest) async throws -> ModifyDeviceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDeviceInfoWithOptions(request as! ModifyDeviceInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pageQueryWhiteListSettingWithOptions(_ request: PageQueryWhiteListSettingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PageQueryWhiteListSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certNo)) {
            query["CertNo"] = request.certNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certifyId)) {
            query["CertifyId"] = request.certifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validEndDate)) {
            query["ValidEndDate"] = request.validEndDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validStartDate)) {
            query["ValidStartDate"] = request.validStartDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PageQueryWhiteListSetting",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PageQueryWhiteListSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pageQueryWhiteListSetting(_ request: PageQueryWhiteListSettingRequest) async throws -> PageQueryWhiteListSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pageQueryWhiteListSettingWithOptions(request as! PageQueryWhiteListSettingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBlackListStrategyWithOptions(_ request: QueryBlackListStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBlackListStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBlackListStrategy",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBlackListStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBlackListStrategy(_ request: QueryBlackListStrategyRequest) async throws -> QueryBlackListStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBlackListStrategyWithOptions(request as! QueryBlackListStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryControlStrategyWithOptions(_ request: QueryControlStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryControlStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryControlStrategy",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryControlStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryControlStrategy(_ request: QueryControlStrategyRequest) async throws -> QueryControlStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryControlStrategyWithOptions(request as! QueryControlStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCustomizeFlowStrategyWithOptions(_ request: QueryCustomizeFlowStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCustomizeFlowStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCustomizeFlowStrategy",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCustomizeFlowStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCustomizeFlowStrategy(_ request: QueryCustomizeFlowStrategyRequest) async throws -> QueryCustomizeFlowStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCustomizeFlowStrategyWithOptions(request as! QueryCustomizeFlowStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySceneConfigsWithOptions(_ request: QuerySceneConfigsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySceneConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySceneConfigs",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySceneConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySceneConfigs(_ request: QuerySceneConfigsRequest) async throws -> QuerySceneConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySceneConfigsWithOptions(request as! QuerySceneConfigsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVerifyDownloadTaskWithOptions(_ request: QueryVerifyDownloadTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryVerifyDownloadTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryVerifyDownloadTask",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryVerifyDownloadTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVerifyDownloadTask(_ request: QueryVerifyDownloadTaskRequest) async throws -> QueryVerifyDownloadTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryVerifyDownloadTaskWithOptions(request as! QueryVerifyDownloadTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVerifyFlowPackageWithOptions(_ request: QueryVerifyFlowPackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryVerifyFlowPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryVerifyFlowPackage",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryVerifyFlowPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVerifyFlowPackage(_ request: QueryVerifyFlowPackageRequest) async throws -> QueryVerifyFlowPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryVerifyFlowPackageWithOptions(request as! QueryVerifyFlowPackageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVerifyInvokeSatisticWithOptions(_ request: QueryVerifyInvokeSatisticRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryVerifyInvokeSatisticResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productProgramList)) {
            query["ProductProgramList"] = request.productProgramList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneIdList)) {
            query["SceneIdList"] = request.sceneIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.statisticsType)) {
            query["StatisticsType"] = request.statisticsType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryVerifyInvokeSatistic",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryVerifyInvokeSatisticResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVerifyInvokeSatistic(_ request: QueryVerifyInvokeSatisticRequest) async throws -> QueryVerifyInvokeSatisticResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryVerifyInvokeSatisticWithOptions(request as! QueryVerifyInvokeSatisticRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeWhiteListSettingWithOptions(_ tmpReq: RemoveWhiteListSettingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveWhiteListSettingResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveWhiteListSettingShrinkRequest = RemoveWhiteListSettingShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ids)) {
            request.idsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ids, "Ids", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.idsShrink)) {
            query["Ids"] = request.idsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            query["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveWhiteListSetting",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveWhiteListSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeWhiteListSetting(_ request: RemoveWhiteListSettingRequest) async throws -> RemoveWhiteListSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeWhiteListSettingWithOptions(request as! RemoveWhiteListSettingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAntCloudAuthSceneWithOptions(_ request: UpdateAntCloudAuthSceneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAntCloudAuthSceneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bindMiniProgram)) {
            query["BindMiniProgram"] = request.bindMiniProgram ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkFileBody)) {
            query["CheckFileBody"] = request.checkFileBody ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkFileName)) {
            query["CheckFileName"] = request.checkFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceRiskPlus)) {
            query["DeviceRiskPlus"] = request.deviceRiskPlus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.miniProgramName)) {
            query["MiniProgramName"] = request.miniProgramName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            query["Platform"] = request.platform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnPicCount)) {
            query["ReturnPicCount"] = request.returnPicCount!;
        }
        if (!TeaUtils.Client.isUnset(request.returnVideoLength)) {
            query["ReturnVideoLength"] = request.returnVideoLength!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneName)) {
            query["SceneName"] = request.sceneName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.storeImage)) {
            query["StoreImage"] = request.storeImage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAntCloudAuthScene",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAntCloudAuthSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAntCloudAuthScene(_ request: UpdateAntCloudAuthSceneRequest) async throws -> UpdateAntCloudAuthSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAntCloudAuthSceneWithOptions(request as! UpdateAntCloudAuthSceneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSceneConfigWithOptions(_ request: UpdateSceneConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSceneConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            body["sceneId"] = request.sceneId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSceneConfig",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSceneConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSceneConfig(_ request: UpdateSceneConfigRequest) async throws -> UpdateSceneConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSceneConfigWithOptions(request as! UpdateSceneConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func vehicle5ItemQueryWithOptions(_ request: Vehicle5ItemQueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Vehicle5ItemQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleNum)) {
            query["VehicleNum"] = request.vehicleNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleType)) {
            query["VehicleType"] = request.vehicleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Vehicle5ItemQuery",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Vehicle5ItemQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func vehicle5ItemQuery(_ request: Vehicle5ItemQueryRequest) async throws -> Vehicle5ItemQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await vehicle5ItemQueryWithOptions(request as! Vehicle5ItemQueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func vehicleInsureQueryWithOptions(_ request: VehicleInsureQueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VehicleInsureQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleNum)) {
            query["VehicleNum"] = request.vehicleNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleType)) {
            query["VehicleType"] = request.vehicleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vin)) {
            query["Vin"] = request.vin ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VehicleInsureQuery",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VehicleInsureQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func vehicleInsureQuery(_ request: VehicleInsureQueryRequest) async throws -> VehicleInsureQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await vehicleInsureQueryWithOptions(request as! VehicleInsureQueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func vehicleMetaVerifyWithOptions(_ request: VehicleMetaVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VehicleMetaVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            query["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleNum)) {
            query["VehicleNum"] = request.vehicleNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleType)) {
            query["VehicleType"] = request.vehicleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyMetaType)) {
            query["VerifyMetaType"] = request.verifyMetaType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VehicleMetaVerify",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VehicleMetaVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func vehicleMetaVerify(_ request: VehicleMetaVerifyRequest) async throws -> VehicleMetaVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await vehicleMetaVerifyWithOptions(request as! VehicleMetaVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func vehicleMetaVerifyV2WithOptions(_ request: VehicleMetaVerifyV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> VehicleMetaVerifyV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            query["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleNum)) {
            query["VehicleNum"] = request.vehicleNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleType)) {
            query["VehicleType"] = request.vehicleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyMetaType)) {
            query["VerifyMetaType"] = request.verifyMetaType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VehicleMetaVerifyV2",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VehicleMetaVerifyV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func vehicleMetaVerifyV2(_ request: VehicleMetaVerifyV2Request) async throws -> VehicleMetaVerifyV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await vehicleMetaVerifyV2WithOptions(request as! VehicleMetaVerifyV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func vehicleQueryWithOptions(_ request: VehicleQueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VehicleQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleNum)) {
            query["VehicleNum"] = request.vehicleNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleType)) {
            query["VehicleType"] = request.vehicleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VehicleQuery",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VehicleQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func vehicleQuery(_ request: VehicleQueryRequest) async throws -> VehicleQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await vehicleQueryWithOptions(request as! VehicleQueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyMaterialWithOptions(_ request: VerifyMaterialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyMaterialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceImageUrl)) {
            query["FaceImageUrl"] = request.faceImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardBackImageUrl)) {
            query["IdCardBackImageUrl"] = request.idCardBackImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardFrontImageUrl)) {
            query["IdCardFrontImageUrl"] = request.idCardFrontImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardNumber)) {
            query["IdCardNumber"] = request.idCardNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifyMaterial",
            "version": "2019-03-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyMaterialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyMaterial(_ request: VerifyMaterialRequest) async throws -> VerifyMaterialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifyMaterialWithOptions(request as! VerifyMaterialRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
