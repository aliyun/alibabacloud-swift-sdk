import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = "regional"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("alinlp", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func aDClockWithOptions(_ request: ADClockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ADClockResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ADClock",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ADClockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aDClock(_ request: ADClockRequest) async throws -> ADClockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await aDClockWithOptions(request as! ADClockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aDMMUWithOptions(_ request: ADMMURequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ADMMUResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ADMMU",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ADMMUResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aDMMU(_ request: ADMMURequest) async throws -> ADMMUResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await aDMMUWithOptions(request as! ADMMURequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aDMiniCogWithOptions(_ request: ADMiniCogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ADMiniCogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ADMiniCog",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ADMiniCogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aDMiniCog(_ request: ADMiniCogRequest) async throws -> ADMiniCogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await aDMiniCogWithOptions(request as! ADMiniCogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aDMiniCogResultWithOptions(_ request: ADMiniCogResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ADMiniCogResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ADMiniCogResult",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ADMiniCogResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aDMiniCogResult(_ request: ADMiniCogResultRequest) async throws -> ADMiniCogResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await aDMiniCogResultWithOptions(request as! ADMiniCogResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceDataByConditionsWithOptions(_ tmpReq: DeleteServiceDataByConditionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceDataByConditionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteServiceDataByConditionsShrinkRequest = DeleteServiceDataByConditionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.conditions)) {
            request.conditionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.conditions, "Conditions", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.conditionsShrink)) {
            body["Conditions"] = request.conditionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["ServiceId"] = request.serviceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceDataByConditions",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceDataByConditionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceDataByConditions(_ request: DeleteServiceDataByConditionsRequest) async throws -> DeleteServiceDataByConditionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteServiceDataByConditionsWithOptions(request as! DeleteServiceDataByConditionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceDataByIdsWithOptions(_ tmpReq: DeleteServiceDataByIdsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceDataByIdsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteServiceDataByIdsShrinkRequest = DeleteServiceDataByIdsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ids)) {
            request.idsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ids, "Ids", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.idsShrink)) {
            body["Ids"] = request.idsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["ServiceId"] = request.serviceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceDataByIds",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceDataByIdsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceDataByIds(_ request: DeleteServiceDataByIdsRequest) async throws -> DeleteServiceDataByIdsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteServiceDataByIdsWithOptions(request as! DeleteServiceDataByIdsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBrandChEcomWithOptions(_ request: GetBrandChEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBrandChEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBrandChEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBrandChEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBrandChEcom(_ request: GetBrandChEcomRequest) async throws -> GetBrandChEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBrandChEcomWithOptions(request as! GetBrandChEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCateChEcomWithOptions(_ request: GetCateChEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCateChEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCateChEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCateChEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCateChEcom(_ request: GetCateChEcomRequest) async throws -> GetCateChEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCateChEcomWithOptions(request as! GetCateChEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCheckDuplicationChMedicalWithOptions(_ request: GetCheckDuplicationChMedicalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCheckDuplicationChMedicalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.originQ)) {
            body["OriginQ"] = request.originQ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originT)) {
            body["OriginT"] = request.originT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCheckDuplicationChMedical",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCheckDuplicationChMedicalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCheckDuplicationChMedical(_ request: GetCheckDuplicationChMedicalRequest) async throws -> GetCheckDuplicationChMedicalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCheckDuplicationChMedicalWithOptions(request as! GetCheckDuplicationChMedicalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDiagnosisChMedicalWithOptions(_ request: GetDiagnosisChMedicalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDiagnosisChMedicalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDiagnosisChMedical",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDiagnosisChMedicalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDiagnosisChMedical(_ request: GetDiagnosisChMedicalRequest) async throws -> GetDiagnosisChMedicalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDiagnosisChMedicalWithOptions(request as! GetDiagnosisChMedicalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDpChEcomWithOptions(_ request: GetDpChEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDpChEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDpChEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDpChEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDpChEcom(_ request: GetDpChEcomRequest) async throws -> GetDpChEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDpChEcomWithOptions(request as! GetDpChEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDpChGeneralCTBWithOptions(_ request: GetDpChGeneralCTBRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDpChGeneralCTBResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDpChGeneralCTB",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDpChGeneralCTBResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDpChGeneralCTB(_ request: GetDpChGeneralCTBRequest) async throws -> GetDpChGeneralCTBResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDpChGeneralCTBWithOptions(request as! GetDpChGeneralCTBRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDpChGeneralStanfordWithOptions(_ request: GetDpChGeneralStanfordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDpChGeneralStanfordResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDpChGeneralStanford",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDpChGeneralStanfordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDpChGeneralStanford(_ request: GetDpChGeneralStanfordRequest) async throws -> GetDpChGeneralStanfordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDpChGeneralStanfordWithOptions(request as! GetDpChGeneralStanfordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEcChGeneralWithOptions(_ request: GetEcChGeneralRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEcChGeneralResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEcChGeneral",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEcChGeneralResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEcChGeneral(_ request: GetEcChGeneralRequest) async throws -> GetEcChGeneralResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEcChGeneralWithOptions(request as! GetEcChGeneralRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEcEnGeneralWithOptions(_ request: GetEcEnGeneralRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEcEnGeneralResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEcEnGeneral",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEcEnGeneralResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEcEnGeneral(_ request: GetEcEnGeneralRequest) async throws -> GetEcEnGeneralResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEcEnGeneralWithOptions(request as! GetEcEnGeneralRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEmbeddingWithOptions(_ request: GetEmbeddingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEmbeddingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textType)) {
            body["TextType"] = request.textType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEmbedding",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEmbeddingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEmbedding(_ request: GetEmbeddingRequest) async throws -> GetEmbeddingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEmbeddingWithOptions(request as! GetEmbeddingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getItemPubChEcomWithOptions(_ request: GetItemPubChEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetItemPubChEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetItemPubChEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetItemPubChEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getItemPubChEcom(_ request: GetItemPubChEcomRequest) async throws -> GetItemPubChEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getItemPubChEcomWithOptions(request as! GetItemPubChEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getKeywordChEcomWithOptions(_ request: GetKeywordChEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetKeywordChEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            body["ApiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetKeywordChEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetKeywordChEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getKeywordChEcom(_ request: GetKeywordChEcomRequest) async throws -> GetKeywordChEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getKeywordChEcomWithOptions(request as! GetKeywordChEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getKeywordEnEcomWithOptions(_ request: GetKeywordEnEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetKeywordEnEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetKeywordEnEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetKeywordEnEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getKeywordEnEcom(_ request: GetKeywordEnEcomRequest) async throws -> GetKeywordEnEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getKeywordEnEcomWithOptions(request as! GetKeywordEnEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMedicineChMedicalWithOptions(_ request: GetMedicineChMedicalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMedicineChMedicalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.factory)) {
            body["Factory"] = request.factory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specification)) {
            body["Specification"] = request.specification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unit)) {
            body["Unit"] = request.unit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMedicineChMedical",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMedicineChMedicalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMedicineChMedical(_ request: GetMedicineChMedicalRequest) async throws -> GetMedicineChMedicalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMedicineChMedicalWithOptions(request as! GetMedicineChMedicalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNerChEcomWithOptions(_ request: GetNerChEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNerChEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lexerId)) {
            body["LexerId"] = request.lexerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNerChEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNerChEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNerChEcom(_ request: GetNerChEcomRequest) async throws -> GetNerChEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNerChEcomWithOptions(request as! GetNerChEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNerChMedicalWithOptions(_ request: GetNerChMedicalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNerChMedicalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNerChMedical",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNerChMedicalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNerChMedical(_ request: GetNerChMedicalRequest) async throws -> GetNerChMedicalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNerChMedicalWithOptions(request as! GetNerChMedicalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNerCustomizedChEcomWithOptions(_ request: GetNerCustomizedChEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNerCustomizedChEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lexerId)) {
            body["LexerId"] = request.lexerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNerCustomizedChEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNerCustomizedChEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNerCustomizedChEcom(_ request: GetNerCustomizedChEcomRequest) async throws -> GetNerCustomizedChEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNerCustomizedChEcomWithOptions(request as! GetNerCustomizedChEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNerCustomizedSeaEcomWithOptions(_ request: GetNerCustomizedSeaEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNerCustomizedSeaEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNerCustomizedSeaEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNerCustomizedSeaEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNerCustomizedSeaEcom(_ request: GetNerCustomizedSeaEcomRequest) async throws -> GetNerCustomizedSeaEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNerCustomizedSeaEcomWithOptions(request as! GetNerCustomizedSeaEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOpenNLUWithOptions(_ request: GetOpenNLURequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOpenNLUResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.examples)) {
            body["Examples"] = request.examples ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sentence)) {
            body["Sentence"] = request.sentence ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.task)) {
            body["Task"] = request.task ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOpenNLU",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOpenNLUResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOpenNLU(_ request: GetOpenNLURequest) async throws -> GetOpenNLUResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOpenNLUWithOptions(request as! GetOpenNLURequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOpenNLUHighRecallWithOptions(_ request: GetOpenNLUHighRecallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOpenNLUHighRecallResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.examples)) {
            body["Examples"] = request.examples ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sentence)) {
            body["Sentence"] = request.sentence ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.task)) {
            body["Task"] = request.task ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOpenNLUHighRecall",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOpenNLUHighRecallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOpenNLUHighRecall(_ request: GetOpenNLUHighRecallRequest) async throws -> GetOpenNLUHighRecallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOpenNLUHighRecallWithOptions(request as! GetOpenNLUHighRecallRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOperationChMedicalWithOptions(_ request: GetOperationChMedicalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOperationChMedicalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOperationChMedical",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOperationChMedicalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOperationChMedical(_ request: GetOperationChMedicalRequest) async throws -> GetOperationChMedicalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOperationChMedicalWithOptions(request as! GetOperationChMedicalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPosChEcomWithOptions(_ request: GetPosChEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPosChEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outType)) {
            body["OutType"] = request.outType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenizerId)) {
            body["TokenizerId"] = request.tokenizerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPosChEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPosChEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPosChEcom(_ request: GetPosChEcomRequest) async throws -> GetPosChEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPosChEcomWithOptions(request as! GetPosChEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPosChGeneralWithOptions(_ request: GetPosChGeneralRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPosChGeneralResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outType)) {
            body["OutType"] = request.outType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenizerId)) {
            body["TokenizerId"] = request.tokenizerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPosChGeneral",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPosChGeneralResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPosChGeneral(_ request: GetPosChGeneralRequest) async throws -> GetPosChGeneralResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPosChGeneralWithOptions(request as! GetPosChGeneralRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPriceChEcomWithOptions(_ request: GetPriceChEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPriceChEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPriceChEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPriceChEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPriceChEcom(_ request: GetPriceChEcomRequest) async throws -> GetPriceChEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPriceChEcomWithOptions(request as! GetPriceChEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSSETestWithOptions(_ request: GetSSETestRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSSETestResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSSETest",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSSETestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSSETest(_ request: GetSSETestRequest) async throws -> GetSSETestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSSETestWithOptions(request as! GetSSETestRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSaChGeneralWithOptions(_ request: GetSaChGeneralRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSaChGeneralResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSaChGeneral",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSaChGeneralResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSaChGeneral(_ request: GetSaChGeneralRequest) async throws -> GetSaChGeneralResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSaChGeneralWithOptions(request as! GetSaChGeneralRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSaSeaEcomWithOptions(_ request: GetSaSeaEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSaSeaEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSaSeaEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSaSeaEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSaSeaEcom(_ request: GetSaSeaEcomRequest) async throws -> GetSaSeaEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSaSeaEcomWithOptions(request as! GetSaSeaEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceDataImportStatusWithOptions(_ tmpReq: GetServiceDataImportStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceDataImportStatusResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetServiceDataImportStatusShrinkRequest = GetServiceDataImportStatusShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataImportIds)) {
            request.dataImportIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataImportIds, "DataImportIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataImportIdsShrink)) {
            body["DataImportIds"] = request.dataImportIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceDataImportStatus",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceDataImportStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceDataImportStatus(_ request: GetServiceDataImportStatusRequest) async throws -> GetServiceDataImportStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getServiceDataImportStatusWithOptions(request as! GetServiceDataImportStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSimilarityChMedicalWithOptions(_ request: GetSimilarityChMedicalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSimilarityChMedicalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.originQ)) {
            body["OriginQ"] = request.originQ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originT)) {
            body["OriginT"] = request.originT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSimilarityChMedical",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSimilarityChMedicalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSimilarityChMedical(_ request: GetSimilarityChMedicalRequest) async throws -> GetSimilarityChMedicalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSimilarityChMedicalWithOptions(request as! GetSimilarityChMedicalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSummaryChEcomWithOptions(_ request: GetSummaryChEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSummaryChEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSummaryChEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSummaryChEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSummaryChEcom(_ request: GetSummaryChEcomRequest) async throws -> GetSummaryChEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSummaryChEcomWithOptions(request as! GetSummaryChEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableQAServiceInfoByIdWithOptions(_ request: GetTableQAServiceInfoByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableQAServiceInfoByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["ServiceId"] = request.serviceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableQAServiceInfoById",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableQAServiceInfoByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableQAServiceInfoById(_ request: GetTableQAServiceInfoByIdRequest) async throws -> GetTableQAServiceInfoByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTableQAServiceInfoByIdWithOptions(request as! GetTableQAServiceInfoByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTcChEcomWithOptions(_ request: GetTcChEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTcChEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTcChEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTcChEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTcChEcom(_ request: GetTcChEcomRequest) async throws -> GetTcChEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTcChEcomWithOptions(request as! GetTcChEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTcChGeneralWithOptions(_ request: GetTcChGeneralRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTcChGeneralResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTcChGeneral",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTcChGeneralResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTcChGeneral(_ request: GetTcChGeneralRequest) async throws -> GetTcChGeneralResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTcChGeneralWithOptions(request as! GetTcChGeneralRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTsChEcomWithOptions(_ request: GetTsChEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTsChEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.originQ)) {
            body["OriginQ"] = request.originQ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originT)) {
            body["OriginT"] = request.originT ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTsChEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTsChEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTsChEcom(_ request: GetTsChEcomRequest) async throws -> GetTsChEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTsChEcomWithOptions(request as! GetTsChEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserUploadSignWithOptions(_ request: GetUserUploadSignRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserUploadSignResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserUploadSign",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserUploadSignResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserUploadSign(_ request: GetUserUploadSignRequest) async throws -> GetUserUploadSignResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserUploadSignWithOptions(request as! GetUserUploadSignRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWeChCommentWithOptions(_ request: GetWeChCommentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWeChCommentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operation)) {
            body["Operation"] = request.operation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenizerId)) {
            body["TokenizerId"] = request.tokenizerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWeChComment",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWeChCommentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWeChComment(_ request: GetWeChCommentRequest) async throws -> GetWeChCommentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWeChCommentWithOptions(request as! GetWeChCommentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWeChEcomWithOptions(_ request: GetWeChEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWeChEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operation)) {
            body["Operation"] = request.operation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenizerId)) {
            body["TokenizerId"] = request.tokenizerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWeChEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWeChEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWeChEcom(_ request: GetWeChEcomRequest) async throws -> GetWeChEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWeChEcomWithOptions(request as! GetWeChEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWeChEntertainmentWithOptions(_ request: GetWeChEntertainmentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWeChEntertainmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operation)) {
            body["Operation"] = request.operation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenizerId)) {
            body["TokenizerId"] = request.tokenizerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWeChEntertainment",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWeChEntertainmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWeChEntertainment(_ request: GetWeChEntertainmentRequest) async throws -> GetWeChEntertainmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWeChEntertainmentWithOptions(request as! GetWeChEntertainmentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWeChGeneralWithOptions(_ request: GetWeChGeneralRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWeChGeneralResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operation)) {
            body["Operation"] = request.operation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWeChGeneral",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWeChGeneralResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWeChGeneral(_ request: GetWeChGeneralRequest) async throws -> GetWeChGeneralResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWeChGeneralWithOptions(request as! GetWeChGeneralRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWeChSearchWithOptions(_ request: GetWeChSearchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWeChSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operation)) {
            body["Operation"] = request.operation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["Size"] = request.size ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenizerId)) {
            body["TokenizerId"] = request.tokenizerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWeChSearch",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWeChSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWeChSearch(_ request: GetWeChSearchRequest) async throws -> GetWeChSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWeChSearchWithOptions(request as! GetWeChSearchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsChGeneralWithOptions(_ request: GetWsChGeneralRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWsChGeneralResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outType)) {
            body["OutType"] = request.outType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenizerId)) {
            body["TokenizerId"] = request.tokenizerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWsChGeneral",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWsChGeneralResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsChGeneral(_ request: GetWsChGeneralRequest) async throws -> GetWsChGeneralResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWsChGeneralWithOptions(request as! GetWsChGeneralRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedChEcomCommentWithOptions(_ request: GetWsCustomizedChEcomCommentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWsCustomizedChEcomCommentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outType)) {
            body["OutType"] = request.outType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenizerId)) {
            body["TokenizerId"] = request.tokenizerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWsCustomizedChEcomComment",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWsCustomizedChEcomCommentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedChEcomComment(_ request: GetWsCustomizedChEcomCommentRequest) async throws -> GetWsCustomizedChEcomCommentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWsCustomizedChEcomCommentWithOptions(request as! GetWsCustomizedChEcomCommentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedChEcomContentWithOptions(_ request: GetWsCustomizedChEcomContentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWsCustomizedChEcomContentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outType)) {
            body["OutType"] = request.outType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenizerId)) {
            body["TokenizerId"] = request.tokenizerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWsCustomizedChEcomContent",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWsCustomizedChEcomContentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedChEcomContent(_ request: GetWsCustomizedChEcomContentRequest) async throws -> GetWsCustomizedChEcomContentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWsCustomizedChEcomContentWithOptions(request as! GetWsCustomizedChEcomContentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedChEcomTitleWithOptions(_ request: GetWsCustomizedChEcomTitleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWsCustomizedChEcomTitleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outType)) {
            body["OutType"] = request.outType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenizerId)) {
            body["TokenizerId"] = request.tokenizerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWsCustomizedChEcomTitle",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWsCustomizedChEcomTitleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedChEcomTitle(_ request: GetWsCustomizedChEcomTitleRequest) async throws -> GetWsCustomizedChEcomTitleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWsCustomizedChEcomTitleWithOptions(request as! GetWsCustomizedChEcomTitleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedChEntertainmentWithOptions(_ request: GetWsCustomizedChEntertainmentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWsCustomizedChEntertainmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outType)) {
            body["OutType"] = request.outType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenizerId)) {
            body["TokenizerId"] = request.tokenizerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWsCustomizedChEntertainment",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWsCustomizedChEntertainmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedChEntertainment(_ request: GetWsCustomizedChEntertainmentRequest) async throws -> GetWsCustomizedChEntertainmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWsCustomizedChEntertainmentWithOptions(request as! GetWsCustomizedChEntertainmentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedChGeneralWithOptions(_ request: GetWsCustomizedChGeneralRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWsCustomizedChGeneralResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outType)) {
            body["OutType"] = request.outType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenizerId)) {
            body["TokenizerId"] = request.tokenizerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWsCustomizedChGeneral",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWsCustomizedChGeneralResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedChGeneral(_ request: GetWsCustomizedChGeneralRequest) async throws -> GetWsCustomizedChGeneralResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWsCustomizedChGeneralWithOptions(request as! GetWsCustomizedChGeneralRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedChO2OWithOptions(_ request: GetWsCustomizedChO2ORequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWsCustomizedChO2OResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outType)) {
            body["OutType"] = request.outType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenizerId)) {
            body["TokenizerId"] = request.tokenizerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWsCustomizedChO2O",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWsCustomizedChO2OResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedChO2O(_ request: GetWsCustomizedChO2ORequest) async throws -> GetWsCustomizedChO2OResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWsCustomizedChO2OWithOptions(request as! GetWsCustomizedChO2ORequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedSeaEcomWithOptions(_ request: GetWsCustomizedSeaEcomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWsCustomizedSeaEcomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWsCustomizedSeaEcom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWsCustomizedSeaEcomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedSeaEcom(_ request: GetWsCustomizedSeaEcomRequest) async throws -> GetWsCustomizedSeaEcomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWsCustomizedSeaEcomWithOptions(request as! GetWsCustomizedSeaEcomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedSeaGeneralWithOptions(_ request: GetWsCustomizedSeaGeneralRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWsCustomizedSeaGeneralResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["Text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWsCustomizedSeaGeneral",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWsCustomizedSeaGeneralResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWsCustomizedSeaGeneral(_ request: GetWsCustomizedSeaGeneralRequest) async throws -> GetWsCustomizedSeaGeneralResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWsCustomizedSeaGeneralWithOptions(request as! GetWsCustomizedSeaGeneralRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importServiceDataWithOptions(_ tmpReq: ImportServiceDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImportServiceDataResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ImportServiceDataShrinkRequest = ImportServiceDataShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.partition)) {
            request.partitionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.partition, "Partition", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.partitionShrink)) {
            body["Partition"] = request.partitionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["ServiceId"] = request.serviceId!;
        }
        if (!TeaUtils.Client.isUnset(request.subPath)) {
            body["SubPath"] = request.subPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImportServiceData",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImportServiceDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importServiceData(_ request: ImportServiceDataRequest) async throws -> ImportServiceDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await importServiceDataWithOptions(request as! ImportServiceDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importServiceDataV2WithOptions(_ tmpReq: ImportServiceDataV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImportServiceDataV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ImportServiceDataV2ShrinkRequest = ImportServiceDataV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.documents)) {
            request.documentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.documents, "Documents", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            body["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.documentsShrink)) {
            body["Documents"] = request.documentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["ServiceId"] = request.serviceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImportServiceDataV2",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImportServiceDataV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importServiceDataV2(_ request: ImportServiceDataV2Request) async throws -> ImportServiceDataV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await importServiceDataV2WithOptions(request as! ImportServiceDataV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertCustomWithOptions(_ request: InsertCustomRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertCustomResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            body["ApiId"] = request.apiId!;
        }
        if (!TeaUtils.Client.isUnset(request.customFileName)) {
            body["CustomFileName"] = request.customFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customUrl)) {
            body["CustomUrl"] = request.customUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regFileName)) {
            body["RegFileName"] = request.regFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regUrl)) {
            body["RegUrl"] = request.regUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertCustom",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertCustomResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertCustom(_ request: InsertCustomRequest) async throws -> InsertCustomResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await insertCustomWithOptions(request as! InsertCustomRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openAlinlpServiceWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> OpenAlinlpServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OpenAlinlpService",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OpenAlinlpServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openAlinlpService() async throws -> OpenAlinlpServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await openAlinlpServiceWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postISConvRewriterWithOptions(_ tmpReq: PostISConvRewriterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PostISConvRewriterResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PostISConvRewriterShrinkRequest = PostISConvRewriterShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.input)) {
            request.inputShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.input, "Input", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.parameters)) {
            request.parametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.parameters, "Parameters", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithm)) {
            body["Algorithm"] = request.algorithm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debug)) {
            body["Debug"] = request.debug!;
        }
        if (!TeaUtils.Client.isUnset(request.inputShrink)) {
            body["Input"] = request.inputShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parametersShrink)) {
            body["Parameters"] = request.parametersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["Version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PostISConvRewriter",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PostISConvRewriterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postISConvRewriter(_ request: PostISConvRewriterRequest) async throws -> PostISConvRewriterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await postISConvRewriterWithOptions(request as! PostISConvRewriterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postISRetrieveRouterWithOptions(_ tmpReq: PostISRetrieveRouterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PostISRetrieveRouterResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PostISRetrieveRouterShrinkRequest = PostISRetrieveRouterShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.input)) {
            request.inputShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.input, "Input", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.parameters)) {
            request.parametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.parameters, "Parameters", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.debug)) {
            query["Debug"] = request.debug!;
        }
        if (!TeaUtils.Client.isUnset(request.inputShrink)) {
            query["Input"] = request.inputShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parametersShrink)) {
            query["Parameters"] = request.parametersShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithm)) {
            body["Algorithm"] = request.algorithm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["Version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PostISRetrieveRouter",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PostISRetrieveRouterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postISRetrieveRouter(_ request: PostISRetrieveRouterRequest) async throws -> PostISRetrieveRouterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await postISRetrieveRouterWithOptions(request as! PostISRetrieveRouterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postMSConvSearchTokenGeneratedWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> PostMSConvSearchTokenGeneratedResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PostMSConvSearchTokenGenerated",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PostMSConvSearchTokenGeneratedResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postMSConvSearchTokenGenerated() async throws -> PostMSConvSearchTokenGeneratedResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await postMSConvSearchTokenGeneratedWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postMSDataProcessingCountWithOptions(_ tmpReq: PostMSDataProcessingCountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PostMSDataProcessingCountResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PostMSDataProcessingCountShrinkRequest = PostMSDataProcessingCountShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataIds)) {
            request.dataIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataIds, "DataIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataIdsShrink)) {
            body["DataIds"] = request.dataIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataImportId)) {
            body["DataImportId"] = request.dataImportId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["ServiceId"] = request.serviceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PostMSDataProcessingCount",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PostMSDataProcessingCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postMSDataProcessingCount(_ request: PostMSDataProcessingCountRequest) async throws -> PostMSDataProcessingCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await postMSDataProcessingCountWithOptions(request as! PostMSDataProcessingCountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postMSSearchEnhanceWithOptions(_ tmpReq: PostMSSearchEnhanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PostMSSearchEnhanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PostMSSearchEnhanceShrinkRequest = PostMSSearchEnhanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.customConfigInfo)) {
            request.customConfigInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.customConfigInfo, "CustomConfigInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.fields)) {
            request.fieldsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.fields, "Fields", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.rankModelInfo)) {
            request.rankModelInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.rankModelInfo, "RankModelInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sort)) {
            request.sortShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sort, "Sort", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.body)) {
            body["Body"] = request.body ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customConfigInfoShrink)) {
            body["CustomConfigInfo"] = request.customConfigInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.debug)) {
            body["Debug"] = request.debug!;
        }
        if (!TeaUtils.Client.isUnset(request.fieldsShrink)) {
            body["Fields"] = request.fieldsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filters)) {
            body["Filters"] = request.filters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.queries)) {
            body["Queries"] = request.queries ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rankModelInfoShrink)) {
            body["RankModelInfo"] = request.rankModelInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rows)) {
            body["Rows"] = request.rows!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["ServiceId"] = request.serviceId!;
        }
        if (!TeaUtils.Client.isUnset(request.sortShrink)) {
            body["Sort"] = request.sortShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uq)) {
            body["Uq"] = request.uq ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PostMSSearchEnhance",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PostMSSearchEnhanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postMSSearchEnhance(_ request: PostMSSearchEnhanceRequest) async throws -> PostMSSearchEnhanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await postMSSearchEnhanceWithOptions(request as! PostMSSearchEnhanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postMSServiceDataImportWithOptions(_ tmpReq: PostMSServiceDataImportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PostMSServiceDataImportResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PostMSServiceDataImportShrinkRequest = PostMSServiceDataImportShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.documents)) {
            request.documentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.documents, "Documents", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            body["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.documentsShrink)) {
            body["Documents"] = request.documentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["ServiceId"] = request.serviceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PostMSServiceDataImport",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PostMSServiceDataImportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postMSServiceDataImport(_ request: PostMSServiceDataImportRequest) async throws -> PostMSServiceDataImportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await postMSServiceDataImportWithOptions(request as! PostMSServiceDataImportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func requestTableQAWithOptions(_ request: RequestTableQARequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RequestTableQAResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RequestTableQA",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RequestTableQAResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func requestTableQA(_ request: RequestTableQARequest) async throws -> RequestTableQAResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await requestTableQAWithOptions(request as! RequestTableQARequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func requestTableQAOnlineWithOptions(_ request: RequestTableQAOnlineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RequestTableQAOnlineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.botId)) {
            body["BotId"] = request.botId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.question)) {
            body["Question"] = request.question ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RequestTableQAOnline",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RequestTableQAOnlineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func requestTableQAOnline(_ request: RequestTableQAOnlineRequest) async throws -> RequestTableQAOnlineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await requestTableQAOnlineWithOptions(request as! RequestTableQAOnlineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceDataWithOptions(_ tmpReq: UpdateServiceDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceDataResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateServiceDataShrinkRequest = UpdateServiceDataShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.conditions)) {
            request.conditionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.conditions, "Conditions", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.conditionsShrink)) {
            body["Conditions"] = request.conditionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["ServiceId"] = request.serviceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateServiceData",
            "version": "2020-06-29",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceData(_ request: UpdateServiceDataRequest) async throws -> UpdateServiceDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateServiceDataWithOptions(request as! UpdateServiceDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
