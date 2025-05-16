import Foundation
import Tea
import TeaUtils
import AlibabaCloudOssSdk
import AlibabacloudOpenPlatform20191219
import AlibabaCloudOSSUtil
import TeaFileForm
import DarabonbaNumber
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = "regional"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("imageprocess", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func analyzeChestVesselWithOptions(_ request: AnalyzeChestVesselRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AnalyzeChestVesselResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AnalyzeChestVessel",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AnalyzeChestVesselResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func analyzeChestVessel(_ request: AnalyzeChestVesselRequest) async throws -> AnalyzeChestVesselResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await analyzeChestVesselWithOptions(request as! AnalyzeChestVesselRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func analyzeChestVesselAdvance(_ request: AnalyzeChestVesselAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AnalyzeChestVesselResponse {
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
            "product": "imageprocess",
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
        var analyzeChestVesselReq: AnalyzeChestVesselRequest = AnalyzeChestVesselRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, analyzeChestVesselReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: AnalyzeChestVesselRequest.URLList = analyzeChestVesselReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var analyzeChestVesselResp: AnalyzeChestVesselResponse = try await analyzeChestVesselWithOptions(analyzeChestVesselReq as! AnalyzeChestVesselRequest, runtime as! TeaUtils.RuntimeOptions)
        return analyzeChestVesselResp as! AnalyzeChestVesselResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func calcBMDWithOptions(_ request: CalcBMDRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CalcBMDResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CalcBMD",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CalcBMDResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func calcBMD(_ request: CalcBMDRequest) async throws -> CalcBMDResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await calcBMDWithOptions(request as! CalcBMDRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func calcBMDAdvance(_ request: CalcBMDAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CalcBMDResponse {
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
            "product": "imageprocess",
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
        var calcBMDReq: CalcBMDRequest = CalcBMDRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, calcBMDReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: CalcBMDRequest.URLList = calcBMDReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var calcBMDResp: CalcBMDResponse = try await calcBMDWithOptions(calcBMDReq as! CalcBMDRequest, runtime as! TeaUtils.RuntimeOptions)
        return calcBMDResp as! CalcBMDResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func calcCACSWithOptions(_ request: CalcCACSRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CalcCACSResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CalcCACS",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CalcCACSResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func calcCACS(_ request: CalcCACSRequest) async throws -> CalcCACSResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await calcCACSWithOptions(request as! CalcCACSRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func calcCACSAdvance(_ request: CalcCACSAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CalcCACSResponse {
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
            "product": "imageprocess",
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
        var calcCACSReq: CalcCACSRequest = CalcCACSRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, calcCACSReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: CalcCACSRequest.URLList = calcCACSReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var calcCACSResp: CalcCACSResponse = try await calcCACSWithOptions(calcCACSReq as! CalcCACSRequest, runtime as! TeaUtils.RuntimeOptions)
        return calcCACSResp as! CalcCACSResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectCovid19CadWithOptions(_ request: DetectCovid19CadRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectCovid19CadResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectCovid19Cad",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectCovid19CadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectCovid19Cad(_ request: DetectCovid19CadRequest) async throws -> DetectCovid19CadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectCovid19CadWithOptions(request as! DetectCovid19CadRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectCovid19CadAdvance(_ request: DetectCovid19CadAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectCovid19CadResponse {
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
            "product": "imageprocess",
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
        var detectCovid19CadReq: DetectCovid19CadRequest = DetectCovid19CadRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, detectCovid19CadReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: DetectCovid19CadRequest.URLList = detectCovid19CadReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var detectCovid19CadResp: DetectCovid19CadResponse = try await detectCovid19CadWithOptions(detectCovid19CadReq as! DetectCovid19CadRequest, runtime as! TeaUtils.RuntimeOptions)
        return detectCovid19CadResp as! DetectCovid19CadResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectLiverSteatosisWithOptions(_ request: DetectLiverSteatosisRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectLiverSteatosisResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectLiverSteatosis",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectLiverSteatosisResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectLiverSteatosis(_ request: DetectLiverSteatosisRequest) async throws -> DetectLiverSteatosisResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectLiverSteatosisWithOptions(request as! DetectLiverSteatosisRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectLiverSteatosisAdvance(_ request: DetectLiverSteatosisAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectLiverSteatosisResponse {
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
            "product": "imageprocess",
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
        var detectLiverSteatosisReq: DetectLiverSteatosisRequest = DetectLiverSteatosisRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, detectLiverSteatosisReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: DetectLiverSteatosisRequest.URLList = detectLiverSteatosisReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var detectLiverSteatosisResp: DetectLiverSteatosisResponse = try await detectLiverSteatosisWithOptions(detectLiverSteatosisReq as! DetectLiverSteatosisRequest, runtime as! TeaUtils.RuntimeOptions)
        return detectLiverSteatosisResp as! DetectLiverSteatosisResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectLungNoduleWithOptions(_ request: DetectLungNoduleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectLungNoduleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.threshold)) {
            body["Threshold"] = request.threshold!;
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectLungNodule",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectLungNoduleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectLungNodule(_ request: DetectLungNoduleRequest) async throws -> DetectLungNoduleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectLungNoduleWithOptions(request as! DetectLungNoduleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectLungNoduleAdvance(_ request: DetectLungNoduleAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectLungNoduleResponse {
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
            "product": "imageprocess",
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
        var detectLungNoduleReq: DetectLungNoduleRequest = DetectLungNoduleRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, detectLungNoduleReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: DetectLungNoduleRequest.URLList = detectLungNoduleReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var detectLungNoduleResp: DetectLungNoduleResponse = try await detectLungNoduleWithOptions(detectLungNoduleReq as! DetectLungNoduleRequest, runtime as! TeaUtils.RuntimeOptions)
        return detectLungNoduleResp as! DetectLungNoduleResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectLymphWithOptions(_ request: DetectLymphRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectLymphResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectLymph",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectLymphResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectLymph(_ request: DetectLymphRequest) async throws -> DetectLymphResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectLymphWithOptions(request as! DetectLymphRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectLymphAdvance(_ request: DetectLymphAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectLymphResponse {
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
            "product": "imageprocess",
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
        var detectLymphReq: DetectLymphRequest = DetectLymphRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, detectLymphReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: DetectLymphRequest.URLList = detectLymphReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var detectLymphResp: DetectLymphResponse = try await detectLymphWithOptions(detectLymphReq as! DetectLymphRequest, runtime as! TeaUtils.RuntimeOptions)
        return detectLymphResp as! DetectLymphResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectPancWithOptions(_ request: DetectPancRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectPancResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectPanc",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectPancResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectPanc(_ request: DetectPancRequest) async throws -> DetectPancResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectPancWithOptions(request as! DetectPancRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectPancAdvance(_ request: DetectPancAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectPancResponse {
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
            "product": "imageprocess",
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
        var detectPancReq: DetectPancRequest = DetectPancRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, detectPancReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: DetectPancRequest.URLList = detectPancReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var detectPancResp: DetectPancResponse = try await detectPancWithOptions(detectPancReq as! DetectPancRequest, runtime as! TeaUtils.RuntimeOptions)
        return detectPancResp as! DetectPancResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectRibFractureWithOptions(_ request: DetectRibFractureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectRibFractureResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectRibFracture",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectRibFractureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectRibFracture(_ request: DetectRibFractureRequest) async throws -> DetectRibFractureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectRibFractureWithOptions(request as! DetectRibFractureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectRibFractureAdvance(_ request: DetectRibFractureAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectRibFractureResponse {
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
            "product": "imageprocess",
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
        var detectRibFractureReq: DetectRibFractureRequest = DetectRibFractureRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, detectRibFractureReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: DetectRibFractureRequest.URLList = detectRibFractureReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var detectRibFractureResp: DetectRibFractureResponse = try await detectRibFractureWithOptions(detectRibFractureReq as! DetectRibFractureRequest, runtime as! TeaUtils.RuntimeOptions)
        return detectRibFractureResp as! DetectRibFractureResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectSkinDiseaseWithOptions(_ request: DetectSkinDiseaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectSkinDiseaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectSkinDisease",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectSkinDiseaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectSkinDisease(_ request: DetectSkinDiseaseRequest) async throws -> DetectSkinDiseaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectSkinDiseaseWithOptions(request as! DetectSkinDiseaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectSkinDiseaseAdvance(_ request: DetectSkinDiseaseAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectSkinDiseaseResponse {
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
            "product": "imageprocess",
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
        var detectSkinDiseaseReq: DetectSkinDiseaseRequest = DetectSkinDiseaseRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, detectSkinDiseaseReq)
        if (!TeaUtils.Client.isUnset(request.urlObject)) {
            authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
            ossConfig.accessKeyId = authResponse.body!.accessKeyId
            ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
            ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
            fileObj = TeaFileForm.FileField([
                "filename": authResponse.body!.objectKey ?? "",
                "content": request.urlObject!,
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
            detectSkinDiseaseReq.url = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
        }
        var detectSkinDiseaseResp: DetectSkinDiseaseResponse = try await detectSkinDiseaseWithOptions(detectSkinDiseaseReq as! DetectSkinDiseaseRequest, runtime as! TeaUtils.RuntimeOptions)
        return detectSkinDiseaseResp as! DetectSkinDiseaseResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func feedbackSessionWithOptions(_ request: FeedbackSessionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FeedbackSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.feedback)) {
            body["Feedback"] = request.feedback ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FeedbackSession",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FeedbackSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func feedbackSession(_ request: FeedbackSessionRequest) async throws -> FeedbackSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await feedbackSessionWithOptions(request as! FeedbackSessionRequest, runtime as! TeaUtils.RuntimeOptions)
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
            "version": "2020-03-20",
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
    public func predictCVDWithOptions(_ request: PredictCVDRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PredictCVDResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PredictCVD",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PredictCVDResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func predictCVD(_ request: PredictCVDRequest) async throws -> PredictCVDResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await predictCVDWithOptions(request as! PredictCVDRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func predictCVDAdvance(_ request: PredictCVDAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PredictCVDResponse {
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
            "product": "imageprocess",
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
        var predictCVDReq: PredictCVDRequest = PredictCVDRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, predictCVDReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: PredictCVDRequest.URLList = predictCVDReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var predictCVDResp: PredictCVDResponse = try await predictCVDWithOptions(predictCVDReq as! PredictCVDRequest, runtime as! TeaUtils.RuntimeOptions)
        return predictCVDResp as! PredictCVDResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runCTRegistrationWithOptions(_ request: RunCTRegistrationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunCTRegistrationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.floatingList)) {
            body["FloatingList"] = request.floatingList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referenceList)) {
            body["ReferenceList"] = request.referenceList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunCTRegistration",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunCTRegistrationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runCTRegistration(_ request: RunCTRegistrationRequest) async throws -> RunCTRegistrationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runCTRegistrationWithOptions(request as! RunCTRegistrationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runCTRegistrationAdvance(_ request: RunCTRegistrationAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunCTRegistrationResponse {
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
            "product": "imageprocess",
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
        var runCTRegistrationReq: RunCTRegistrationRequest = RunCTRegistrationRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, runCTRegistrationReq)
        if (!TeaUtils.Client.isUnset(request.floatingList)) {
            var i0: Int = 0
            for item0 in request.floatingList {
                if (!TeaUtils.Client.isUnset(item0.floatingURLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.floatingURLObject!,
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
                    var tmp: RunCTRegistrationRequest.FloatingList = runCTRegistrationReq.floatingList[i0]
                    tmp.floatingURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        if (!TeaUtils.Client.isUnset(request.referenceList)) {
            var i1: Int = 0
            for item0 in request.referenceList {
                if (!TeaUtils.Client.isUnset(item0.referenceURLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.referenceURLObject!,
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
                    tmp = runCTRegistrationReq.referenceList[i1]
                    tmp.referenceURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i1 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i1), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var runCTRegistrationResp: RunCTRegistrationResponse = try await runCTRegistrationWithOptions(runCTRegistrationReq as! RunCTRegistrationRequest, runtime as! TeaUtils.RuntimeOptions)
        return runCTRegistrationResp as! RunCTRegistrationResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runMedQAWithOptions(_ request: RunMedQARequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunMedQAResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.answerImageDataList)) {
            body["AnswerImageDataList"] = request.answerImageDataList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.answerImageURLList)) {
            body["AnswerImageURLList"] = request.answerImageURLList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.answerTextList)) {
            body["AnswerTextList"] = request.answerTextList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.department)) {
            body["Department"] = request.department ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.questionType)) {
            body["QuestionType"] = request.questionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunMedQA",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunMedQAResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runMedQA(_ request: RunMedQARequest) async throws -> RunMedQAResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runMedQAWithOptions(request as! RunMedQARequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runMedQAAdvance(_ request: RunMedQAAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunMedQAResponse {
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
            "product": "imageprocess",
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
        var runMedQAReq: RunMedQARequest = RunMedQARequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, runMedQAReq)
        if (!TeaUtils.Client.isUnset(request.answerImageURLList)) {
            var i0: Int = 0
            for item0 in request.answerImageURLList {
                if (!TeaUtils.Client.isUnset(item0.answerImageURLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.answerImageURLObject!,
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
                    var tmp: RunMedQARequest.AnswerImageURLList = runMedQAReq.answerImageURLList[i0]
                    tmp.answerImageURL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var runMedQAResp: RunMedQAResponse = try await runMedQAWithOptions(runMedQAReq as! RunMedQARequest, runtime as! TeaUtils.RuntimeOptions)
        return runMedQAResp as! RunMedQAResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenCRCWithOptions(_ request: ScreenCRCRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScreenCRCResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScreenCRC",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScreenCRCResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenCRC(_ request: ScreenCRCRequest) async throws -> ScreenCRCResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await screenCRCWithOptions(request as! ScreenCRCRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenCRCAdvance(_ request: ScreenCRCAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScreenCRCResponse {
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
            "product": "imageprocess",
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
        var screenCRCReq: ScreenCRCRequest = ScreenCRCRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, screenCRCReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: ScreenCRCRequest.URLList = screenCRCReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var screenCRCResp: ScreenCRCResponse = try await screenCRCWithOptions(screenCRCReq as! ScreenCRCRequest, runtime as! TeaUtils.RuntimeOptions)
        return screenCRCResp as! ScreenCRCResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenChestCTWithOptions(_ request: ScreenChestCTRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScreenChestCTResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mask)) {
            body["Mask"] = request.mask!;
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            body["Verbose"] = request.verbose!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScreenChestCT",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScreenChestCTResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenChestCT(_ request: ScreenChestCTRequest) async throws -> ScreenChestCTResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await screenChestCTWithOptions(request as! ScreenChestCTRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenChestCTAdvance(_ request: ScreenChestCTAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScreenChestCTResponse {
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
            "product": "imageprocess",
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
        var screenChestCTReq: ScreenChestCTRequest = ScreenChestCTRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, screenChestCTReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: ScreenChestCTRequest.URLList = screenChestCTReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var screenChestCTResp: ScreenChestCTResponse = try await screenChestCTWithOptions(screenChestCTReq as! ScreenChestCTRequest, runtime as! TeaUtils.RuntimeOptions)
        return screenChestCTResp as! ScreenChestCTResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenECWithOptions(_ request: ScreenECRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScreenECResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScreenEC",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScreenECResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenEC(_ request: ScreenECRequest) async throws -> ScreenECResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await screenECWithOptions(request as! ScreenECRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenECAdvance(_ request: ScreenECAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScreenECResponse {
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
            "product": "imageprocess",
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
        var screenECReq: ScreenECRequest = ScreenECRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, screenECReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: ScreenECRequest.URLList = screenECReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var screenECResp: ScreenECResponse = try await screenECWithOptions(screenECReq as! ScreenECRequest, runtime as! TeaUtils.RuntimeOptions)
        return screenECResp as! ScreenECResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenGCWithOptions(_ request: ScreenGCRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScreenGCResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScreenGC",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScreenGCResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenGC(_ request: ScreenGCRequest) async throws -> ScreenGCResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await screenGCWithOptions(request as! ScreenGCRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenGCAdvance(_ request: ScreenGCAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScreenGCResponse {
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
            "product": "imageprocess",
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
        var screenGCReq: ScreenGCRequest = ScreenGCRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, screenGCReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: ScreenGCRequest.URLList = screenGCReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var screenGCResp: ScreenGCResponse = try await screenGCWithOptions(screenGCReq as! ScreenGCRequest, runtime as! TeaUtils.RuntimeOptions)
        return screenGCResp as! ScreenGCResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenLCWithOptions(_ request: ScreenLCRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScreenLCResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScreenLC",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ScreenLCResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenLC(_ request: ScreenLCRequest) async throws -> ScreenLCResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await screenLCWithOptions(request as! ScreenLCRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func screenLCAdvance(_ request: ScreenLCAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScreenLCResponse {
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
            "product": "imageprocess",
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
        var screenLCReq: ScreenLCRequest = ScreenLCRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, screenLCReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: ScreenLCRequest.URLList = screenLCReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var screenLCResp: ScreenLCResponse = try await screenLCWithOptions(screenLCReq as! ScreenLCRequest, runtime as! TeaUtils.RuntimeOptions)
        return screenLCResp as! ScreenLCResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentLymphNodeWithOptions(_ request: SegmentLymphNodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentLymphNodeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyPart)) {
            body["BodyPart"] = request.bodyPart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentLymphNode",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentLymphNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentLymphNode(_ request: SegmentLymphNodeRequest) async throws -> SegmentLymphNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentLymphNodeWithOptions(request as! SegmentLymphNodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentLymphNodeAdvance(_ request: SegmentLymphNodeAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentLymphNodeResponse {
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
            "product": "imageprocess",
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
        var segmentLymphNodeReq: SegmentLymphNodeRequest = SegmentLymphNodeRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentLymphNodeReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: SegmentLymphNodeRequest.URLList = segmentLymphNodeReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var segmentLymphNodeResp: SegmentLymphNodeResponse = try await segmentLymphNodeWithOptions(segmentLymphNodeReq as! SegmentLymphNodeRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentLymphNodeResp as! SegmentLymphNodeResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentOARWithOptions(_ request: SegmentOARRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentOARResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyPart)) {
            body["BodyPart"] = request.bodyPart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contrast)) {
            body["Contrast"] = request.contrast!;
        }
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maskList)) {
            body["MaskList"] = request.maskList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SegmentOAR",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SegmentOARResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentOAR(_ request: SegmentOARRequest) async throws -> SegmentOARResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await segmentOARWithOptions(request as! SegmentOARRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func segmentOARAdvance(_ request: SegmentOARAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SegmentOARResponse {
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
            "product": "imageprocess",
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
        var segmentOARReq: SegmentOARRequest = SegmentOARRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, segmentOARReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: SegmentOARRequest.URLList = segmentOARReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var segmentOARResp: SegmentOARResponse = try await segmentOARWithOptions(segmentOARReq as! SegmentOARRequest, runtime as! TeaUtils.RuntimeOptions)
        return segmentOARResp as! SegmentOARResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func targetVolumeSegmentWithOptions(_ request: TargetVolumeSegmentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TargetVolumeSegmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cancerType)) {
            body["CancerType"] = request.cancerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataFormat)) {
            body["DataFormat"] = request.dataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            body["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgName)) {
            body["OrgName"] = request.orgName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetVolumeType)) {
            body["TargetVolumeType"] = request.targetVolumeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            body["URLList"] = request.URLList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TargetVolumeSegment",
            "version": "2020-03-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TargetVolumeSegmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func targetVolumeSegment(_ request: TargetVolumeSegmentRequest) async throws -> TargetVolumeSegmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await targetVolumeSegmentWithOptions(request as! TargetVolumeSegmentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func targetVolumeSegmentAdvance(_ request: TargetVolumeSegmentAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TargetVolumeSegmentResponse {
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
            "product": "imageprocess",
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
        var targetVolumeSegmentReq: TargetVolumeSegmentRequest = TargetVolumeSegmentRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, targetVolumeSegmentReq)
        if (!TeaUtils.Client.isUnset(request.URLList)) {
            var i0: Int = 0
            for item0 in request.URLList {
                if (!TeaUtils.Client.isUnset(item0.URLObject)) {
                    authResponse = try await authClient.authorizeFileUploadWithOptions(authRequest as! AlibabacloudOpenPlatform20191219.AuthorizeFileUploadRequest, runtime as! TeaUtils.RuntimeOptions)
                    ossConfig.accessKeyId = authResponse.body!.accessKeyId
                    ossConfig.endpoint = AlibabaCloudOpenApiUtil.Client.getEndpoint(authResponse.body!.endpoint, authResponse.body!.useAccelerate, self._endpointType)
                    ossClient = try AlibabaCloudOssSdk.Client(ossConfig)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponse.body!.objectKey ?? "",
                        "content": item0.URLObject!,
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
                    var tmp: TargetVolumeSegmentRequest.URLList = targetVolumeSegmentReq.URLList[i0]
                    tmp.URL = "http://" + (authResponse.body!.bucket ?? "") + "." + (authResponse.body!.endpoint ?? "") + "/" + (authResponse.body!.objectKey ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var targetVolumeSegmentResp: TargetVolumeSegmentResponse = try await targetVolumeSegmentWithOptions(targetVolumeSegmentReq as! TargetVolumeSegmentRequest, runtime as! TeaUtils.RuntimeOptions)
        return targetVolumeSegmentResp as! TargetVolumeSegmentResponse
    }
}
