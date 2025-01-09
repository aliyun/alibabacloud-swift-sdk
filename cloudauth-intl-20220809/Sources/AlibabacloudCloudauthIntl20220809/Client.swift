import Foundation
import Tea
import TeaUtils
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
    public func initializeWithOptions(_ request: InitializeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InitializeResponse {
        try TeaUtils.Client.validateModel(request)
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
        if (!TeaUtils.Client.isUnset(request.crop)) {
            query["Crop"] = request.crop ?? "";
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
