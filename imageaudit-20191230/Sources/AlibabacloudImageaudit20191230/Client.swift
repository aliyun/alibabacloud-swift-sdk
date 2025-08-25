import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
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
        self._endpoint = try getEndpoint("imageaudit", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func scanImageWithOptions(_ request: ScanImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScanImageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["Scene"] = request.scene ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.task)) {
            body["Task"] = request.task ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScanImage",
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
        return Tea.TeaConverter.fromMap(ScanImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scanImage(_ request: ScanImageRequest) async throws -> ScanImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await scanImageWithOptions(request as! ScanImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scanImageAdvance(_ request: ScanImageAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScanImageResponse {
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
            "Product": "imageaudit",
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
        var scanImageReq: ScanImageRequest = ScanImageRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, scanImageReq)
        if (!TeaUtils.Client.isUnset(request.task)) {
            var i0: Int = 0
            for item0 in request.task {
                if (!TeaUtils.Client.isUnset(item0.imageURLObject)) {
                    var tmpResp0: Any = try await authClient.callApi(authParams as! AlibabacloudOpenApi.Params, authReq as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
                    authResponse = try TeaUtils.Client.assertAsMap(tmpResp0)
                    tmpBody = try TeaUtils.Client.assertAsMap(authResponse["body"])
                    useAccelerate = try TeaUtils.Client.assertAsBoolean(tmpBody["UseAccelerate"])
                    authResponseBody = TeaUtils.Client.stringifyMapValue(tmpBody)
                    fileObj = TeaFileForm.FileField([
                        "filename": authResponseBody["ObjectKey"] ?? "",
                        "content": item0.imageURLObject!,
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
                    var tmp: ScanImageRequest.Task = scanImageReq.task[i0]
                    tmp.imageURL = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
                    i0 = DarabonbaNumber.Client.ltoi(DarabonbaNumber.Client.add(DarabonbaNumber.Client.itol(i0), DarabonbaNumber.Client.itol(1)))
                }
            }
        }
        var scanImageResp: ScanImageResponse = try await scanImageWithOptions(scanImageReq as! ScanImageRequest, runtime as! TeaUtils.RuntimeOptions)
        return scanImageResp as! ScanImageResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scanTextWithOptions(_ request: ScanTextRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ScanTextResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tasks)) {
            body["Tasks"] = request.tasks ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ScanText",
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
        return Tea.TeaConverter.fromMap(ScanTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func scanText(_ request: ScanTextRequest) async throws -> ScanTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await scanTextWithOptions(request as! ScanTextRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
