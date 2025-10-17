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
        self._endpoint = try getEndpoint("brain-industrial", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func activateLicenseWithOptions(_ request: ActivateLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ActivateLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fingerprint)) {
            body["Fingerprint"] = request.fingerprint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["OrderId"] = request.orderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ActivateLicense",
            "version": "2020-09-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ActivateLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func activateLicense(_ request: ActivateLicenseRequest) async throws -> ActivateLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await activateLicenseWithOptions(request as! ActivateLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aicsOpenApiInvokeWithOptions(_ tmpReq: AicsOpenApiInvokeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AicsOpenApiInvokeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AicsOpenApiInvokeShrinkRequest = AicsOpenApiInvokeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.param)) {
            request.paramShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.param, "Param", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            query["ServiceId"] = request.serviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.paramShrink)) {
            body["Param"] = request.paramShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AicsOpenApiInvoke",
            "version": "2020-09-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AicsOpenApiInvokeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aicsOpenApiInvoke(_ request: AicsOpenApiInvokeRequest) async throws -> AicsOpenApiInvokeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await aicsOpenApiInvokeWithOptions(request as! AicsOpenApiInvokeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEssOptJobWithOptions(_ tmpReq: CreateEssOptJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEssOptJobResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateEssOptJobShrinkRequest = CreateEssOptJobShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.elecPrice)) {
            request.elecPriceShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.elecPrice, "ElecPrice", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.genPrice)) {
            request.genPriceShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.genPrice, "GenPrice", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.location)) {
            request.locationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.location, "Location", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.systemData)) {
            request.systemDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.systemData, "SystemData", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessKey)) {
            body["BusinessKey"] = request.businessKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            body["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.elecPriceShrink)) {
            body["ElecPrice"] = request.elecPriceShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.freq)) {
            body["Freq"] = request.freq ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.genPriceShrink)) {
            body["GenPrice"] = request.genPriceShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locationShrink)) {
            body["Location"] = request.locationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelVersion)) {
            body["ModelVersion"] = request.modelVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runDate)) {
            body["RunDate"] = request.runDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemDataShrink)) {
            body["SystemData"] = request.systemDataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeZone)) {
            body["TimeZone"] = request.timeZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topoType)) {
            body["TopoType"] = request.topoType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEssOptJob",
            "version": "2020-09-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEssOptJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEssOptJob(_ request: CreateEssOptJobRequest) async throws -> CreateEssOptJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEssOptJobWithOptions(request as! CreateEssOptJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoadForecastByFileUrlJobWithOptions(_ request: CreateLoadForecastByFileUrlJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLoadForecastByFileUrlJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessKey)) {
            body["BusinessKey"] = request.businessKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataMode)) {
            body["DataMode"] = request.dataMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            body["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.forecastHorizon)) {
            body["ForecastHorizon"] = request.forecastHorizon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.freq)) {
            body["Freq"] = request.freq ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historyUrl)) {
            body["HistoryUrl"] = request.historyUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelVersion)) {
            body["ModelVersion"] = request.modelVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runDate)) {
            body["RunDate"] = request.runDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemType)) {
            body["SystemType"] = request.systemType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeColumn)) {
            body["TimeColumn"] = request.timeColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeZone)) {
            body["TimeZone"] = request.timeZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.valueColumn)) {
            body["ValueColumn"] = request.valueColumn ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLoadForecastByFileUrlJob",
            "version": "2020-09-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLoadForecastByFileUrlJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoadForecastByFileUrlJob(_ request: CreateLoadForecastByFileUrlJobRequest) async throws -> CreateLoadForecastByFileUrlJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLoadForecastByFileUrlJobWithOptions(request as! CreateLoadForecastByFileUrlJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoadForecastJobWithOptions(_ tmpReq: CreateLoadForecastJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLoadForecastJobResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateLoadForecastJobShrinkRequest = CreateLoadForecastJobShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.historyData)) {
            request.historyDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.historyData, "HistoryData", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessKey)) {
            body["BusinessKey"] = request.businessKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataMode)) {
            body["DataMode"] = request.dataMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            body["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.forecastHorizon)) {
            body["ForecastHorizon"] = request.forecastHorizon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.freq)) {
            body["Freq"] = request.freq ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historyDataShrink)) {
            body["HistoryData"] = request.historyDataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelVersion)) {
            body["ModelVersion"] = request.modelVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runDate)) {
            body["RunDate"] = request.runDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemType)) {
            body["SystemType"] = request.systemType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeZone)) {
            body["TimeZone"] = request.timeZone ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLoadForecastJob",
            "version": "2020-09-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLoadForecastJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLoadForecastJob(_ request: CreateLoadForecastJobRequest) async throws -> CreateLoadForecastJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLoadForecastJobWithOptions(request as! CreateLoadForecastJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPowerForecastByFileUrlJobWithOptions(_ tmpReq: CreatePowerForecastByFileUrlJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePowerForecastByFileUrlJobResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePowerForecastByFileUrlJobShrinkRequest = CreatePowerForecastByFileUrlJobShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.location)) {
            request.locationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.location, "Location", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessKey)) {
            body["BusinessKey"] = request.businessKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataMode)) {
            body["DataMode"] = request.dataMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            body["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.forecastHorizon)) {
            body["ForecastHorizon"] = request.forecastHorizon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.freq)) {
            body["Freq"] = request.freq ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historyUrl)) {
            body["HistoryUrl"] = request.historyUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locationShrink)) {
            body["Location"] = request.locationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelVersion)) {
            body["ModelVersion"] = request.modelVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runDate)) {
            body["RunDate"] = request.runDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemType)) {
            body["SystemType"] = request.systemType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeColumn)) {
            body["TimeColumn"] = request.timeColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeZone)) {
            body["TimeZone"] = request.timeZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.valueColumn)) {
            body["ValueColumn"] = request.valueColumn ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePowerForecastByFileUrlJob",
            "version": "2020-09-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePowerForecastByFileUrlJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPowerForecastByFileUrlJob(_ request: CreatePowerForecastByFileUrlJobRequest) async throws -> CreatePowerForecastByFileUrlJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPowerForecastByFileUrlJobWithOptions(request as! CreatePowerForecastByFileUrlJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPowerForecastJobWithOptions(_ tmpReq: CreatePowerForecastJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePowerForecastJobResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePowerForecastJobShrinkRequest = CreatePowerForecastJobShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.historyData)) {
            request.historyDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.historyData, "HistoryData", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.location)) {
            request.locationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.location, "Location", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessKey)) {
            body["BusinessKey"] = request.businessKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataMode)) {
            body["DataMode"] = request.dataMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            body["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.forecastHorizon)) {
            body["ForecastHorizon"] = request.forecastHorizon ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.freq)) {
            body["Freq"] = request.freq ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historyDataShrink)) {
            body["HistoryData"] = request.historyDataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locationShrink)) {
            body["Location"] = request.locationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelVersion)) {
            body["ModelVersion"] = request.modelVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runDate)) {
            body["RunDate"] = request.runDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemType)) {
            body["SystemType"] = request.systemType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeZone)) {
            body["TimeZone"] = request.timeZone ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePowerForecastJob",
            "version": "2020-09-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePowerForecastJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPowerForecastJob(_ request: CreatePowerForecastJobRequest) async throws -> CreatePowerForecastJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPowerForecastJobWithOptions(request as! CreatePowerForecastJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAivppAlgoJobWithOptions(_ request: GetAivppAlgoJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAivppAlgoJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            body["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAivppAlgoJob",
            "version": "2020-09-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAivppAlgoJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAivppAlgoJob(_ request: GetAivppAlgoJobRequest) async throws -> GetAivppAlgoJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAivppAlgoJobWithOptions(request as! GetAivppAlgoJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLicenseWithOptions(_ request: GetLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLicense",
            "version": "2020-09-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLicense(_ request: GetLicenseRequest) async throws -> GetLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLicenseWithOptions(request as! GetLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAivppResourcesWithOptions(_ request: ListAivppResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAivppResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            body["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAivppResources",
            "version": "2020-09-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAivppResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAivppResources(_ request: ListAivppResourcesRequest) async throws -> ListAivppResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAivppResourcesWithOptions(request as! ListAivppResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLicensesWithOptions(_ request: ListLicensesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLicensesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            body["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryStr)) {
            body["QueryStr"] = request.queryStr ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLicenses",
            "version": "2020-09-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLicensesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLicenses(_ request: ListLicensesRequest) async throws -> ListLicensesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLicensesWithOptions(request as! ListLicensesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserResourcesWithOptions(_ request: ListUserResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            body["CommodityCode"] = request.commodityCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserResources",
            "version": "2020-09-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserResources(_ request: ListUserResourcesRequest) async throws -> ListUserResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserResourcesWithOptions(request as! ListUserResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLicenseDescriptionWithOptions(_ request: UpdateLicenseDescriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLicenseDescriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLicenseDescription",
            "version": "2020-09-20",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLicenseDescriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLicenseDescription(_ request: UpdateLicenseDescriptionRequest) async throws -> UpdateLicenseDescriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateLicenseDescriptionWithOptions(request as! UpdateLicenseDescriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
