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
        self._endpointRule = "central"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("cloudauth", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
            "product": "Cloudauth",
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
        var contrastFaceVerifyReq: ContrastFaceVerifyRequest = ContrastFaceVerifyRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, contrastFaceVerifyReq)
        if (!TeaUtils.Client.isUnset(request.faceContrastFileObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.faceContrastFileObject!,
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
            contrastFaceVerifyReq.faceContrastFile = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var contrastFaceVerifyResp: ContrastFaceVerifyResponse = try await contrastFaceVerifyWithOptions(contrastFaceVerifyReq as! ContrastFaceVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
        return contrastFaceVerifyResp as! ContrastFaceVerifyResponse
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
    public func credentialVerifyWithOptions(_ request: CredentialVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CredentialVerifyResponse {
        try TeaUtils.Client.validateModel(request)
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
        if (!TeaUtils.Client.isUnset(request.merchantId)) {
            query["MerchantId"] = request.merchantId ?? "";
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
    public func id2MetaVerifyWithOptions(_ request: Id2MetaVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Id2MetaVerifyResponse {
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
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
    public func mobile3MetaDetailVerifyWithOptions(_ request: Mobile3MetaDetailVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Mobile3MetaDetailVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            query["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
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
    public func mobile3MetaSimpleVerifyWithOptions(_ request: Mobile3MetaSimpleVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Mobile3MetaSimpleVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            query["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
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
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobiles)) {
            query["Mobiles"] = request.mobiles ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["ParamType"] = request.paramType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
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
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["ParamType"] = request.paramType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
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
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["ParamType"] = request.paramType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
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
