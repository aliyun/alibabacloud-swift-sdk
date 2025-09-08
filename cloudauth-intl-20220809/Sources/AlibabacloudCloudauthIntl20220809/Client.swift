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
        self._endpoint = try getEndpoint("cloudauth-intl", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addressCompareIntlWithOptions(_ request: AddressCompareIntlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddressCompareIntlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defaultCountry)) {
            query["DefaultCountry"] = request.defaultCountry ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text1)) {
            query["Text1"] = request.text1 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text2)) {
            query["Text2"] = request.text2 ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddressCompareIntl",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddressCompareIntlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addressCompareIntl(_ request: AddressCompareIntlRequest) async throws -> AddressCompareIntlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addressCompareIntlWithOptions(request as! AddressCompareIntlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addressVerifyIntlWithOptions(_ request: AddressVerifyIntlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddressVerifyIntlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressType)) {
            query["AddressType"] = request.addressType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultCity)) {
            query["DefaultCity"] = request.defaultCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultCountry)) {
            query["DefaultCountry"] = request.defaultCountry ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultDistrict)) {
            query["DefaultDistrict"] = request.defaultDistrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultProvince)) {
            query["DefaultProvince"] = request.defaultProvince ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.latitude)) {
            query["Latitude"] = request.latitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.longitude)) {
            query["Longitude"] = request.longitude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            query["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyType)) {
            query["VerifyType"] = request.verifyType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddressVerifyIntl",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddressVerifyIntlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addressVerifyIntl(_ request: AddressVerifyIntlRequest) async throws -> AddressVerifyIntlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addressVerifyIntlWithOptions(request as! AddressVerifyIntlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addressVerifyV2IntlWithOptions(_ request: AddressVerifyV2IntlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddressVerifyV2IntlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceToken)) {
            query["DeviceToken"] = request.deviceToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regCountry)) {
            query["RegCountry"] = request.regCountry ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            query["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyType)) {
            query["VerifyType"] = request.verifyType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddressVerifyV2Intl",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddressVerifyV2IntlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addressVerifyV2Intl(_ request: AddressVerifyV2IntlRequest) async throws -> AddressVerifyV2IntlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addressVerifyV2IntlWithOptions(request as! AddressVerifyV2IntlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bankMetaVerifyIntlWithOptions(_ request: BankMetaVerifyIntlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BankMetaVerifyIntlResponse {
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
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
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
            "action": "BankMetaVerifyIntl",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BankMetaVerifyIntlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bankMetaVerifyIntl(_ request: BankMetaVerifyIntlRequest) async throws -> BankMetaVerifyIntlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bankMetaVerifyIntlWithOptions(request as! BankMetaVerifyIntlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cardOcrWithOptions(_ request: CardOcrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CardOcrResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docType)) {
            query["DocType"] = request.docType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idFaceQuality)) {
            query["IdFaceQuality"] = request.idFaceQuality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idOcrPictureUrl)) {
            query["IdOcrPictureUrl"] = request.idOcrPictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantUserId)) {
            query["MerchantUserId"] = request.merchantUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ocr)) {
            query["Ocr"] = request.ocr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spoof)) {
            query["Spoof"] = request.spoof ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.idOcrPictureBase64)) {
            body["IdOcrPictureBase64"] = request.idOcrPictureBase64 ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CardOcr",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CardOcrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cardOcr(_ request: CardOcrRequest) async throws -> CardOcrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cardOcrWithOptions(request as! CardOcrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkResultWithOptions(_ request: CheckResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extraImageControlList)) {
            query["ExtraImageControlList"] = request.extraImageControlList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isReturnImage)) {
            query["IsReturnImage"] = request.isReturnImage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnFiveCategorySpoofResult)) {
            query["ReturnFiveCategorySpoofResult"] = request.returnFiveCategorySpoofResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionId)) {
            query["TransactionId"] = request.transactionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckResult",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkResult(_ request: CheckResultRequest) async throws -> CheckResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkResultWithOptions(request as! CheckResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkVerifyLogWithOptions(_ request: CheckVerifyLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckVerifyLogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            body["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionId)) {
            body["TransactionId"] = request.transactionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckVerifyLog",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckVerifyLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkVerifyLog(_ request: CheckVerifyLogRequest) async throws -> CheckVerifyLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkVerifyLogWithOptions(request as! CheckVerifyLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func credentialRecognitionIntlWithOptions(_ request: CredentialRecognitionIntlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CredentialRecognitionIntlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docType)) {
            query["DocType"] = request.docType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fraudCheck)) {
            query["FraudCheck"] = request.fraudCheck ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ocrArea)) {
            query["OcrArea"] = request.ocrArea ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialOcrPictureBase64)) {
            body["CredentialOcrPictureBase64"] = request.credentialOcrPictureBase64 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credentialOcrPictureUrl)) {
            body["CredentialOcrPictureUrl"] = request.credentialOcrPictureUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CredentialRecognitionIntl",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CredentialRecognitionIntlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func credentialRecognitionIntl(_ request: CredentialRecognitionIntlRequest) async throws -> CredentialRecognitionIntlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await credentialRecognitionIntlWithOptions(request as! CredentialRecognitionIntlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func credentialVerifyIntlWithOptions(_ request: CredentialVerifyIntlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CredentialVerifyIntlResponse {
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
            "action": "CredentialVerifyIntl",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CredentialVerifyIntlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func credentialVerifyIntl(_ request: CredentialVerifyIntlRequest) async throws -> CredentialVerifyIntlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await credentialVerifyIntlWithOptions(request as! CredentialVerifyIntlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func credentialVerifyIntlAdvance(_ request: CredentialVerifyIntlAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CredentialVerifyIntlResponse {
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
            "Product": "Cloudauth-intl",
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
        var credentialVerifyIntlReq: CredentialVerifyIntlRequest = CredentialVerifyIntlRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(request, credentialVerifyIntlReq)
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
            try await _postOSSObject(authResponseBody["Bucket"] ?? "", ossHeader as! [String: Any])
            credentialVerifyIntlReq.imageFile = "http://" + (authResponseBody["Bucket"] ?? "") + "." + (authResponseBody["Endpoint"] ?? "") + "/" + (authResponseBody["ObjectKey"] ?? "")
        }
        var credentialVerifyIntlResp: CredentialVerifyIntlResponse = try await credentialVerifyIntlWithOptions(credentialVerifyIntlReq as! CredentialVerifyIntlRequest, runtime as! TeaUtils.RuntimeOptions)
        return credentialVerifyIntlResp as! CredentialVerifyIntlResponse
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deepfakeDetectIntlWithOptions(_ request: DeepfakeDetectIntlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeepfakeDetectIntlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.faceInputType)) {
            query["FaceInputType"] = request.faceInputType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceUrl)) {
            query["FaceUrl"] = request.faceUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneCode)) {
            query["SceneCode"] = request.sceneCode ?? "";
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
            "action": "DeepfakeDetectIntl",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeepfakeDetectIntlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deepfakeDetectIntl(_ request: DeepfakeDetectIntlRequest) async throws -> DeepfakeDetectIntlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deepfakeDetectIntlWithOptions(request as! DeepfakeDetectIntlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVerifyResultWithOptions(_ request: DeleteVerifyResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVerifyResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteAfterQuery)) {
            query["DeleteAfterQuery"] = request.deleteAfterQuery ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deleteType)) {
            query["DeleteType"] = request.deleteType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionId)) {
            query["TransactionId"] = request.transactionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVerifyResult",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVerifyResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVerifyResult(_ request: DeleteVerifyResultRequest) async throws -> DeleteVerifyResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteVerifyResultWithOptions(request as! DeleteVerifyResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func docOcrWithOptions(_ request: DocOcrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DocOcrResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cardSide)) {
            query["CardSide"] = request.cardSide ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docType)) {
            query["DocType"] = request.docType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idFaceQuality)) {
            query["IdFaceQuality"] = request.idFaceQuality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idOcrPictureUrl)) {
            query["IdOcrPictureUrl"] = request.idOcrPictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idThreshold)) {
            query["IdThreshold"] = request.idThreshold ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantUserId)) {
            query["MerchantUserId"] = request.merchantUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ocr)) {
            query["Ocr"] = request.ocr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spoof)) {
            query["Spoof"] = request.spoof ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.idOcrPictureBase64)) {
            body["IdOcrPictureBase64"] = request.idOcrPictureBase64 ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DocOcr",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DocOcrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func docOcr(_ request: DocOcrRequest) async throws -> DocOcrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await docOcrWithOptions(request as! DocOcrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func docOcrMaxWithOptions(_ request: DocOcrMaxRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DocOcrMaxResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docPage)) {
            body["DocPage"] = request.docPage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docType)) {
            body["DocType"] = request.docType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idOcrPictureBase64)) {
            body["IdOcrPictureBase64"] = request.idOcrPictureBase64 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idOcrPictureUrl)) {
            body["IdOcrPictureUrl"] = request.idOcrPictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idSpoof)) {
            body["IdSpoof"] = request.idSpoof ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idThreshold)) {
            body["IdThreshold"] = request.idThreshold ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            body["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantUserId)) {
            body["MerchantUserId"] = request.merchantUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ocrModel)) {
            body["OcrModel"] = request.ocrModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["Prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneCode)) {
            body["SceneCode"] = request.sceneCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spoof)) {
            body["Spoof"] = request.spoof ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DocOcrMax",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DocOcrMaxResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func docOcrMax(_ request: DocOcrMaxRequest) async throws -> DocOcrMaxResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await docOcrMaxWithOptions(request as! DocOcrMaxRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ekycVerifyWithOptions(_ request: EkycVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EkycVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorize)) {
            query["Authorize"] = request.authorize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crop)) {
            query["Crop"] = request.crop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docName)) {
            query["DocName"] = request.docName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docNo)) {
            query["DocNo"] = request.docNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docType)) {
            query["DocType"] = request.docType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.facePictureUrl)) {
            query["FacePictureUrl"] = request.facePictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idOcrPictureUrl)) {
            query["IdOcrPictureUrl"] = request.idOcrPictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idThreshold)) {
            query["IdThreshold"] = request.idThreshold ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantUserId)) {
            query["MerchantUserId"] = request.merchantUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.facePictureBase64)) {
            body["FacePictureBase64"] = request.facePictureBase64 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idOcrPictureBase64)) {
            body["IdOcrPictureBase64"] = request.idOcrPictureBase64 ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EkycVerify",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EkycVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ekycVerify(_ request: EkycVerifyRequest) async throws -> EkycVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await ekycVerifyWithOptions(request as! EkycVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func faceCompareWithOptions(_ request: FaceCompareRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FaceCompareResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceFacePictureUrl)) {
            query["SourceFacePictureUrl"] = request.sourceFacePictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetFacePictureUrl)) {
            query["TargetFacePictureUrl"] = request.targetFacePictureUrl ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceFacePicture)) {
            body["SourceFacePicture"] = request.sourceFacePicture ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetFacePicture)) {
            body["TargetFacePicture"] = request.targetFacePicture ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FaceCompare",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FaceCompareResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func faceCompare(_ request: FaceCompareRequest) async throws -> FaceCompareResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await faceCompareWithOptions(request as! FaceCompareRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func faceGuardRiskWithOptions(_ request: FaceGuardRiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FaceGuardRiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceToken)) {
            query["DeviceToken"] = request.deviceToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FaceGuardRisk",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FaceGuardRiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func faceGuardRisk(_ request: FaceGuardRiskRequest) async throws -> FaceGuardRiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await faceGuardRiskWithOptions(request as! FaceGuardRiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func faceLivenessWithOptions(_ request: FaceLivenessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FaceLivenessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.crop)) {
            query["Crop"] = request.crop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.facePictureUrl)) {
            query["FacePictureUrl"] = request.facePictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceQuality)) {
            query["FaceQuality"] = request.faceQuality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantUserId)) {
            query["MerchantUserId"] = request.merchantUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.occlusion)) {
            query["Occlusion"] = request.occlusion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.facePictureBase64)) {
            body["FacePictureBase64"] = request.facePictureBase64 ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FaceLiveness",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FaceLivenessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func faceLiveness(_ request: FaceLivenessRequest) async throws -> FaceLivenessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await faceLivenessWithOptions(request as! FaceLivenessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fraudResultCallBackWithOptions(_ request: FraudResultCallBackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FraudResultCallBackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certifyId)) {
            query["CertifyId"] = request.certifyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extParams)) {
            query["ExtParams"] = request.extParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultCode)) {
            query["ResultCode"] = request.resultCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyDeployEnv)) {
            query["VerifyDeployEnv"] = request.verifyDeployEnv ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FraudResultCallBack",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FraudResultCallBackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fraudResultCallBack(_ request: FraudResultCallBackRequest) async throws -> FraudResultCallBackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await fraudResultCallBackWithOptions(request as! FraudResultCallBackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id2MetaPeriodVerifyIntlWithOptions(_ request: Id2MetaPeriodVerifyIntlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Id2MetaPeriodVerifyIntlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.docName)) {
            body["DocName"] = request.docName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docNo)) {
            body["DocNo"] = request.docNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docType)) {
            body["DocType"] = request.docType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            body["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantUserId)) {
            body["MerchantUserId"] = request.merchantUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneCode)) {
            body["SceneCode"] = request.sceneCode ?? "";
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
            "action": "Id2MetaPeriodVerifyIntl",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Id2MetaPeriodVerifyIntlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id2MetaPeriodVerifyIntl(_ request: Id2MetaPeriodVerifyIntlRequest) async throws -> Id2MetaPeriodVerifyIntlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await id2MetaPeriodVerifyIntlWithOptions(request as! Id2MetaPeriodVerifyIntlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id2MetaVerifyIntlWithOptions(_ request: Id2MetaVerifyIntlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Id2MetaVerifyIntlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifyNum)) {
            query["IdentifyNum"] = request.identifyNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Id2MetaVerifyIntl",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Id2MetaVerifyIntlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func id2MetaVerifyIntl(_ request: Id2MetaVerifyIntlRequest) async throws -> Id2MetaVerifyIntlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await id2MetaVerifyIntlWithOptions(request as! Id2MetaVerifyIntlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initializeWithOptions(_ tmpReq: InitializeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InitializeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InitializeShrinkRequest = InitializeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.docPageConfig)) {
            request.docPageConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.docPageConfig, "DocPageConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appQualityCheck)) {
            query["AppQualityCheck"] = request.appQualityCheck ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorize)) {
            query["Authorize"] = request.authorize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackToken)) {
            query["CallbackToken"] = request.callbackToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackUrl)) {
            query["CallbackUrl"] = request.callbackUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chameleonFrameEnable)) {
            query["ChameleonFrameEnable"] = request.chameleonFrameEnable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crop)) {
            query["Crop"] = request.crop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dateOfBirth)) {
            query["DateOfBirth"] = request.dateOfBirth ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dateOfExpiry)) {
            query["DateOfExpiry"] = request.dateOfExpiry ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docName)) {
            query["DocName"] = request.docName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docNo)) {
            query["DocNo"] = request.docNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docPageConfigShrink)) {
            query["DocPageConfig"] = request.docPageConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docScanMode)) {
            query["DocScanMode"] = request.docScanMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docType)) {
            query["DocType"] = request.docType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.docVideo)) {
            query["DocVideo"] = request.docVideo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.documentNumber)) {
            query["DocumentNumber"] = request.documentNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.editOcrResult)) {
            query["EditOcrResult"] = request.editOcrResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.experienceCode)) {
            query["ExperienceCode"] = request.experienceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.facePictureUrl)) {
            query["FacePictureUrl"] = request.facePictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idFaceQuality)) {
            query["IdFaceQuality"] = request.idFaceQuality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idSpoof)) {
            query["IdSpoof"] = request.idSpoof ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idThreshold)) {
            query["IdThreshold"] = request.idThreshold ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.languageConfig)) {
            query["LanguageConfig"] = request.languageConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.MRTDInput)) {
            query["MRTDInput"] = request.MRTDInput ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantUserId)) {
            query["MerchantUserId"] = request.merchantUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metaInfo)) {
            query["MetaInfo"] = request.metaInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            query["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ocr)) {
            query["Ocr"] = request.ocr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pages)) {
            query["Pages"] = request.pages ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.procedurePriority)) {
            query["ProcedurePriority"] = request.procedurePriority ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productFlow)) {
            query["ProductFlow"] = request.productFlow ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnUrl)) {
            query["ReturnUrl"] = request.returnUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneCode)) {
            query["SceneCode"] = request.sceneCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityLevel)) {
            query["SecurityLevel"] = request.securityLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showAlbumIcon)) {
            query["ShowAlbumIcon"] = request.showAlbumIcon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showGuidePage)) {
            query["ShowGuidePage"] = request.showGuidePage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showOcrResult)) {
            query["ShowOcrResult"] = request.showOcrResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.styleConfig)) {
            query["StyleConfig"] = request.styleConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useNFC)) {
            query["UseNFC"] = request.useNFC ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.facePictureBase64)) {
            body["FacePictureBase64"] = request.facePictureBase64 ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Initialize",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitializeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initialize(_ request: InitializeRequest) async throws -> InitializeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await initializeWithOptions(request as! InitializeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func keepaliveIntlWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> KeepaliveIntlResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "KeepaliveIntl",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(KeepaliveIntlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func keepaliveIntl() async throws -> KeepaliveIntlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await keepaliveIntlWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobile2MetaVerifyIntlWithOptions(_ request: Mobile2MetaVerifyIntlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Mobile2MetaVerifyIntlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            body["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            body["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Mobile2MetaVerifyIntl",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Mobile2MetaVerifyIntlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobile2MetaVerifyIntl(_ request: Mobile2MetaVerifyIntlRequest) async throws -> Mobile2MetaVerifyIntlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mobile2MetaVerifyIntlWithOptions(request as! Mobile2MetaVerifyIntlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobile3MetaVerifyIntlWithOptions(_ request: Mobile3MetaVerifyIntlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> Mobile3MetaVerifyIntlResponse {
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
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Mobile3MetaVerifyIntl",
            "version": "2022-08-09",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Mobile3MetaVerifyIntlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mobile3MetaVerifyIntl(_ request: Mobile3MetaVerifyIntlRequest) async throws -> Mobile3MetaVerifyIntlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await mobile3MetaVerifyIntlWithOptions(request as! Mobile3MetaVerifyIntlRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
