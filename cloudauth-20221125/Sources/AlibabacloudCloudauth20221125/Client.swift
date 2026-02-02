import Foundation
import Tea
import TeaUtils
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
    public func entElementVerifyWithOptions(_ request: EntElementVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EntElementVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entName)) {
            query["EntName"] = request.entName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.infoVerifyType)) {
            query["InfoVerifyType"] = request.infoVerifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalPersonCertNo)) {
            query["LegalPersonCertNo"] = request.legalPersonCertNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalPersonName)) {
            query["LegalPersonName"] = request.legalPersonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.licenseNo)) {
            query["LicenseNo"] = request.licenseNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantUserId)) {
            query["MerchantUserId"] = request.merchantUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneCode)) {
            query["SceneCode"] = request.sceneCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userAuthorization)) {
            query["UserAuthorization"] = request.userAuthorization ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EntElementVerify",
            "version": "2022-11-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EntElementVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entElementVerify(_ request: EntElementVerifyRequest) async throws -> EntElementVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await entElementVerifyWithOptions(request as! EntElementVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entElementVerifyPROWithOptions(_ request: EntElementVerifyPRORequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EntElementVerifyPROResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entName)) {
            query["EntName"] = request.entName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.infoVerifyType)) {
            query["InfoVerifyType"] = request.infoVerifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalPersonCertNo)) {
            query["LegalPersonCertNo"] = request.legalPersonCertNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalPersonName)) {
            query["LegalPersonName"] = request.legalPersonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.licenseNo)) {
            query["LicenseNo"] = request.licenseNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantUserId)) {
            query["MerchantUserId"] = request.merchantUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneCode)) {
            query["SceneCode"] = request.sceneCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userAuthorization)) {
            query["UserAuthorization"] = request.userAuthorization ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EntElementVerifyPRO",
            "version": "2022-11-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EntElementVerifyPROResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entElementVerifyPRO(_ request: EntElementVerifyPRORequest) async throws -> EntElementVerifyPROResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await entElementVerifyPROWithOptions(request as! EntElementVerifyPRORequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entElementVerifyV2WithOptions(_ request: EntElementVerifyV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> EntElementVerifyV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entName)) {
            query["EntName"] = request.entName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.infoVerifyType)) {
            query["InfoVerifyType"] = request.infoVerifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalPersonCertNo)) {
            query["LegalPersonCertNo"] = request.legalPersonCertNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalPersonName)) {
            query["LegalPersonName"] = request.legalPersonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.licenseNo)) {
            query["LicenseNo"] = request.licenseNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantUserId)) {
            query["MerchantUserId"] = request.merchantUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneCode)) {
            query["SceneCode"] = request.sceneCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userAuthorization)) {
            query["UserAuthorization"] = request.userAuthorization ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EntElementVerifyV2",
            "version": "2022-11-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EntElementVerifyV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entElementVerifyV2(_ request: EntElementVerifyV2Request) async throws -> EntElementVerifyV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await entElementVerifyV2WithOptions(request as! EntElementVerifyV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entRiskQueryWithOptions(_ request: EntRiskQueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EntRiskQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantUserId)) {
            query["MerchantUserId"] = request.merchantUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramType)) {
            query["ParamType"] = request.paramType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramValue)) {
            query["ParamValue"] = request.paramValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneCode)) {
            query["SceneCode"] = request.sceneCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userAuthorization)) {
            query["UserAuthorization"] = request.userAuthorization ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EntRiskQuery",
            "version": "2022-11-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EntRiskQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entRiskQuery(_ request: EntRiskQueryRequest) async throws -> EntRiskQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await entRiskQueryWithOptions(request as! EntRiskQueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entVerifyWithOptions(_ request: EntVerifyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EntVerifyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            query["AccountNo"] = request.accountNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entName)) {
            query["EntName"] = request.entName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.infoVerifyType)) {
            query["InfoVerifyType"] = request.infoVerifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalPersonCertNo)) {
            query["LegalPersonCertNo"] = request.legalPersonCertNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalPersonMobile)) {
            query["LegalPersonMobile"] = request.legalPersonMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.legalPersonName)) {
            query["LegalPersonName"] = request.legalPersonName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.licenseNo)) {
            query["LicenseNo"] = request.licenseNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantBizId)) {
            query["MerchantBizId"] = request.merchantBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantUserId)) {
            query["MerchantUserId"] = request.merchantUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskModelVersion)) {
            query["RiskModelVersion"] = request.riskModelVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskVerifyType)) {
            query["RiskVerifyType"] = request.riskVerifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneCode)) {
            query["SceneCode"] = request.sceneCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userAuthorization)) {
            query["UserAuthorization"] = request.userAuthorization ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EntVerify",
            "version": "2022-11-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EntVerifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entVerify(_ request: EntVerifyRequest) async throws -> EntVerifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await entVerifyWithOptions(request as! EntVerifyRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
