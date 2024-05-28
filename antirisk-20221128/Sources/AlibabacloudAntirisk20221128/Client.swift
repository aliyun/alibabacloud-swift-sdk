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
        self._endpoint = try getEndpoint("antirisk", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func getRealTimeRiskInfoWithOptions(_ request: GetRealTimeRiskInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRealTimeRiskInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.atoken)) {
            query["atoken"] = request.atoken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["dataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extra)) {
            query["extra"] = request.extra ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRealTimeRiskInfo",
            "version": "2022-11-28",
            "protocol": "HTTPS",
            "pathname": "/anti/getRealTimeRiskInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRealTimeRiskInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRealTimeRiskInfo(_ request: GetRealTimeRiskInfoRequest) async throws -> GetRealTimeRiskInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRealTimeRiskInfoWithOptions(request as! GetRealTimeRiskInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getZidTagByAtokenWithOptions(_ request: GetZidTagByAtokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetZidTagByAtokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.atoken)) {
            query["atoken"] = request.atoken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["dataSourceId"] = request.dataSourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetZidTagByAtoken",
            "version": "2022-11-28",
            "protocol": "HTTPS",
            "pathname": "/anti/getZidTagByAtoken",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetZidTagByAtokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getZidTagByAtoken(_ request: GetZidTagByAtokenRequest) async throws -> GetZidTagByAtokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getZidTagByAtokenWithOptions(request as! GetZidTagByAtokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getZidTagScoreByAtokenWithOptions(_ request: GetZidTagScoreByAtokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetZidTagScoreByAtokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.atoken)) {
            query["atoken"] = request.atoken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["dataSourceId"] = request.dataSourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetZidTagScoreByAtoken",
            "version": "2022-11-28",
            "protocol": "HTTPS",
            "pathname": "/anti/getZidTagScoreByAtoken",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetZidTagScoreByAtokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getZidTagScoreByAtoken(_ request: GetZidTagScoreByAtokenRequest) async throws -> GetZidTagScoreByAtokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getZidTagScoreByAtokenWithOptions(request as! GetZidTagScoreByAtokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChannelRiskDetailsWithOptions(_ request: ListChannelRiskDetailsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChannelRiskDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["dataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["end"] = request.end ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAllChannel)) {
            query["isAllChannel"] = request.isAllChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["start"] = request.start ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChannelRiskDetails",
            "version": "2022-11-28",
            "protocol": "HTTPS",
            "pathname": "/anti/listChannelRiskDetails",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChannelRiskDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChannelRiskDetails(_ request: ListChannelRiskDetailsRequest) async throws -> ListChannelRiskDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listChannelRiskDetailsWithOptions(request as! ListChannelRiskDetailsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUninstallDetailWithOptions(_ request: ListUninstallDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUninstallDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            query["dataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDs)) {
            query["endDs"] = request.endDs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDs)) {
            query["startDs"] = request.startDs ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUninstallDetail",
            "version": "2022-11-28",
            "protocol": "HTTPS",
            "pathname": "/uninstall/listUninstallDetail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUninstallDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUninstallDetail(_ request: ListUninstallDetailRequest) async throws -> ListUninstallDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUninstallDetailWithOptions(request as! ListUninstallDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
