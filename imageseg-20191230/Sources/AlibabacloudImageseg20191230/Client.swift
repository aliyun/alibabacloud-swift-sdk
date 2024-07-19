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
        self._endpointRule = "regional"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("imageseg", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func changeSkyWithOptions(_ request: ChangeSkyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeSkyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            query["ImageURL"] = request.imageURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replaceImageURL)) {
            query["ReplaceImageURL"] = request.replaceImageURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeSky",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeSkyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeSky(_ request: ChangeSkyRequest) async throws -> ChangeSkyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeSkyWithOptions(request as! ChangeSkyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeSkyAdvance(_ request: ChangeSkyAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeSkyResponse {
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
            "product": "imageseg",
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
        var changeSkyReq: ChangeSkyRequest = ChangeSkyRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, changeSkyReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageURLObject!,
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
            changeSkyReq.imageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        if (!TeaUtils.Client.isUnset(request.replaceImageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.replaceImageURLObject!,
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
            changeSkyReq.replaceImageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var changeSkyResp: ChangeSkyResponse = try await changeSkyWithOptions(changeSkyReq as! ChangeSkyRequest, runtime as! TeaUtils.RuntimeOptions)
        return changeSkyResp as! ChangeSkyResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAsyncJobResultWithOptions(_ request: GetAsyncJobResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAsyncJobResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            body["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAsyncJobResult",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
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
    public func parseFaceWithOptions(_ request: ParseFaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ParseFaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            query["ImageURL"] = request.imageURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ParseFace",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ParseFaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func parseFace(_ request: ParseFaceRequest) async throws -> ParseFaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await parseFaceWithOptions(request as! ParseFaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func parseFaceAdvance(_ request: ParseFaceAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ParseFaceResponse {
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
            "product": "imageseg",
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
        var parseFaceReq: ParseFaceRequest = ParseFaceRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, parseFaceReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageURLObject!,
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
            parseFaceReq.imageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var parseFaceResp: ParseFaceResponse = try await parseFaceWithOptions(parseFaceReq as! ParseFaceRequest, runtime as! TeaUtils.RuntimeOptions)
        return parseFaceResp as! ParseFaceResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refineMaskWithOptions(_ request: RefineMaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefineMaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            body["ImageURL"] = request.imageURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maskImageURL)) {
            body["MaskImageURL"] = request.maskImageURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefineMask",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefineMaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refineMask(_ request: RefineMaskRequest) async throws -> RefineMaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refineMaskWithOptions(request as! RefineMaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refineMaskAdvance(_ request: RefineMaskAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefineMaskResponse {
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
            "product": "imageseg",
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
        var refineMaskReq: RefineMaskRequest = RefineMaskRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, refineMaskReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageURLObject!,
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
            refineMaskReq.imageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        if (!TeaUtils.Client.isUnset(request.maskImageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.maskImageURLObject!,
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
            refineMaskReq.maskImageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var refineMaskResp: RefineMaskResponse = try await refineMaskWithOptions(refineMaskReq as! RefineMaskRequest, runtime as! TeaUtils.RuntimeOptions)
        return refineMaskResp as! RefineMaskResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentBodyWithOptions(_ request: SegmentBodyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentBodyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            query["ImageURL"] = request.imageURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnForm)) {
            query["ReturnForm"] = request.returnForm ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentBody",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentBodyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentBody(_ request: SegmentBodyRequest) async throws -> SegmentBodyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentBodyWithOptions(request as! SegmentBodyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentBodyAdvance(_ request: SegmentBodyAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentBodyResponse {
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
            "product": "imageseg",
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
        var segmentBodyReq: SegmentBodyRequest = SegmentBodyRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentBodyReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageURLObject!,
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
            segmentBodyReq.imageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var segmentBodyResp: SegmentBodyResponse = try await segmentBodyWithOptions(segmentBodyReq as! SegmentBodyRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentBodyResp as! SegmentBodyResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentClothWithOptions(_ request: SegmentClothRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentClothResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clothClass)) {
            query["ClothClass"] = request.clothClass ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            query["ImageURL"] = request.imageURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outMode)) {
            query["OutMode"] = request.outMode!;
        }
        if (!TeaUtils.Client.isUnset(request.returnForm)) {
            query["ReturnForm"] = request.returnForm ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentCloth",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentClothResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentCloth(_ request: SegmentClothRequest) async throws -> SegmentClothResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentClothWithOptions(request as! SegmentClothRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentClothAdvance(_ request: SegmentClothAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentClothResponse {
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
            "product": "imageseg",
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
        var segmentClothReq: SegmentClothRequest = SegmentClothRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentClothReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageURLObject!,
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
            segmentClothReq.imageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var segmentClothResp: SegmentClothResponse = try await segmentClothWithOptions(segmentClothReq as! SegmentClothRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentClothResp as! SegmentClothResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentCommodityWithOptions(_ request: SegmentCommodityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentCommodityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            query["ImageURL"] = request.imageURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnForm)) {
            query["ReturnForm"] = request.returnForm ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentCommodity",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentCommodityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentCommodity(_ request: SegmentCommodityRequest) async throws -> SegmentCommodityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentCommodityWithOptions(request as! SegmentCommodityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentCommodityAdvance(_ request: SegmentCommodityAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentCommodityResponse {
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
            "product": "imageseg",
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
        var segmentCommodityReq: SegmentCommodityRequest = SegmentCommodityRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentCommodityReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageURLObject!,
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
            segmentCommodityReq.imageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var segmentCommodityResp: SegmentCommodityResponse = try await segmentCommodityWithOptions(segmentCommodityReq as! SegmentCommodityRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentCommodityResp as! SegmentCommodityResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentCommonImageWithOptions(_ request: SegmentCommonImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentCommonImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            query["ImageURL"] = request.imageURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnForm)) {
            query["ReturnForm"] = request.returnForm ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentCommonImage",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentCommonImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentCommonImage(_ request: SegmentCommonImageRequest) async throws -> SegmentCommonImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentCommonImageWithOptions(request as! SegmentCommonImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentCommonImageAdvance(_ request: SegmentCommonImageAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentCommonImageResponse {
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
            "product": "imageseg",
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
        var segmentCommonImageReq: SegmentCommonImageRequest = SegmentCommonImageRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentCommonImageReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageURLObject!,
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
            segmentCommonImageReq.imageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var segmentCommonImageResp: SegmentCommonImageResponse = try await segmentCommonImageWithOptions(segmentCommonImageReq as! SegmentCommonImageRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentCommonImageResp as! SegmentCommonImageResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentFoodWithOptions(_ request: SegmentFoodRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentFoodResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            query["ImageURL"] = request.imageURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnForm)) {
            query["ReturnForm"] = request.returnForm ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentFood",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentFoodResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentFood(_ request: SegmentFoodRequest) async throws -> SegmentFoodResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentFoodWithOptions(request as! SegmentFoodRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentFoodAdvance(_ request: SegmentFoodAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentFoodResponse {
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
            "product": "imageseg",
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
        var segmentFoodReq: SegmentFoodRequest = SegmentFoodRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentFoodReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageURLObject!,
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
            segmentFoodReq.imageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var segmentFoodResp: SegmentFoodResponse = try await segmentFoodWithOptions(segmentFoodReq as! SegmentFoodRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentFoodResp as! SegmentFoodResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHDBodyWithOptions(_ request: SegmentHDBodyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentHDBodyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            query["ImageURL"] = request.imageURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentHDBody",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentHDBodyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHDBody(_ request: SegmentHDBodyRequest) async throws -> SegmentHDBodyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentHDBodyWithOptions(request as! SegmentHDBodyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHDBodyAdvance(_ request: SegmentHDBodyAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentHDBodyResponse {
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
            "product": "imageseg",
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
        var segmentHDBodyReq: SegmentHDBodyRequest = SegmentHDBodyRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentHDBodyReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageURLObject!,
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
            segmentHDBodyReq.imageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var segmentHDBodyResp: SegmentHDBodyResponse = try await segmentHDBodyWithOptions(segmentHDBodyReq as! SegmentHDBodyRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentHDBodyResp as! SegmentHDBodyResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHDCommonImageWithOptions(_ request: SegmentHDCommonImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentHDCommonImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["ImageUrl"] = request.imageUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentHDCommonImage",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentHDCommonImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHDCommonImage(_ request: SegmentHDCommonImageRequest) async throws -> SegmentHDCommonImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentHDCommonImageWithOptions(request as! SegmentHDCommonImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHDCommonImageAdvance(_ request: SegmentHDCommonImageAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentHDCommonImageResponse {
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
            "product": "imageseg",
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
        var segmentHDCommonImageReq: SegmentHDCommonImageRequest = SegmentHDCommonImageRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentHDCommonImageReq)
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
            segmentHDCommonImageReq.imageUrl = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var segmentHDCommonImageResp: SegmentHDCommonImageResponse = try await segmentHDCommonImageWithOptions(segmentHDCommonImageReq as! SegmentHDCommonImageRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentHDCommonImageResp as! SegmentHDCommonImageResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHDSkyWithOptions(_ request: SegmentHDSkyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentHDSkyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            body["ImageURL"] = request.imageURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentHDSky",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentHDSkyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHDSky(_ request: SegmentHDSkyRequest) async throws -> SegmentHDSkyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentHDSkyWithOptions(request as! SegmentHDSkyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHDSkyAdvance(_ request: SegmentHDSkyAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentHDSkyResponse {
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
            "product": "imageseg",
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
        var segmentHDSkyReq: SegmentHDSkyRequest = SegmentHDSkyRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentHDSkyReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageURLObject!,
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
            segmentHDSkyReq.imageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var segmentHDSkyResp: SegmentHDSkyResponse = try await segmentHDSkyWithOptions(segmentHDSkyReq as! SegmentHDSkyRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentHDSkyResp as! SegmentHDSkyResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHairWithOptions(_ request: SegmentHairRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentHairResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            query["ImageURL"] = request.imageURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentHair",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentHairResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHair(_ request: SegmentHairRequest) async throws -> SegmentHairResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentHairWithOptions(request as! SegmentHairRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHairAdvance(_ request: SegmentHairAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentHairResponse {
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
            "product": "imageseg",
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
        var segmentHairReq: SegmentHairRequest = SegmentHairRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentHairReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageURLObject!,
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
            segmentHairReq.imageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var segmentHairResp: SegmentHairResponse = try await segmentHairWithOptions(segmentHairReq as! SegmentHairRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentHairResp as! SegmentHairResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHeadWithOptions(_ request: SegmentHeadRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentHeadResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            query["ImageURL"] = request.imageURL ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnForm)) {
            query["ReturnForm"] = request.returnForm ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentHead",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentHeadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHead(_ request: SegmentHeadRequest) async throws -> SegmentHeadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentHeadWithOptions(request as! SegmentHeadRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentHeadAdvance(_ request: SegmentHeadAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentHeadResponse {
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
            "product": "imageseg",
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
        var segmentHeadReq: SegmentHeadRequest = SegmentHeadRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentHeadReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageURLObject!,
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
            segmentHeadReq.imageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var segmentHeadResp: SegmentHeadResponse = try await segmentHeadWithOptions(segmentHeadReq as! SegmentHeadRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentHeadResp as! SegmentHeadResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentSceneWithOptions(_ request: SegmentSceneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentSceneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            query["ImageURL"] = request.imageURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentScene",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentScene(_ request: SegmentSceneRequest) async throws -> SegmentSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentSceneWithOptions(request as! SegmentSceneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentSceneAdvance(_ request: SegmentSceneAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentSceneResponse {
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
            "product": "imageseg",
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
        var segmentSceneReq: SegmentSceneRequest = SegmentSceneRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentSceneReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageURLObject!,
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
            segmentSceneReq.imageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var segmentSceneResp: SegmentSceneResponse = try await segmentSceneWithOptions(segmentSceneReq as! SegmentSceneRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentSceneResp as! SegmentSceneResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentSkinWithOptions(_ request: SegmentSkinRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentSkinResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.URL)) {
            body["URL"] = request.URL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentSkin",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentSkinResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentSkin(_ request: SegmentSkinRequest) async throws -> SegmentSkinResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentSkinWithOptions(request as! SegmentSkinRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentSkinAdvance(_ request: SegmentSkinAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentSkinResponse {
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
            "product": "imageseg",
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
        var segmentSkinReq: SegmentSkinRequest = SegmentSkinRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentSkinReq)
        if (!TeaUtils.Client.isUnset(request.URLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.URLObject!,
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
            segmentSkinReq.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var segmentSkinResp: SegmentSkinResponse = try await segmentSkinWithOptions(segmentSkinReq as! SegmentSkinRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentSkinResp as! SegmentSkinResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentSkyWithOptions(_ request: SegmentSkyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentSkyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageURL)) {
            query["ImageURL"] = request.imageURL ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentSky",
            "version": "2019-12-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentSkyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentSky(_ request: SegmentSkyRequest) async throws -> SegmentSkyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentSkyWithOptions(request as! SegmentSkyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentSkyAdvance(_ request: SegmentSkyAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentSkyResponse {
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
            "product": "imageseg",
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
        var segmentSkyReq: SegmentSkyRequest = SegmentSkyRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentSkyReq)
        if (!TeaUtils.Client.isUnset(request.imageURLObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.imageURLObject!,
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
            segmentSkyReq.imageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var segmentSkyResp: SegmentSkyResponse = try await segmentSkyWithOptions(segmentSkyReq as! SegmentSkyRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentSkyResp as! SegmentSkyResponse
    }
}
