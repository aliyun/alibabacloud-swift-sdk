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
        self._endpoint = try getEndpoint("aiearth-meteorology", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func gridQueryWithOptions(_ dataType: String, _ request: GridQueryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GridQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.element)) {
            query["element"] = request.element ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forecastTimestamp)) {
            query["forecastTimestamp"] = request.forecastTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.latitude)) {
            query["latitude"] = request.latitude!;
        }
        if (!TeaUtils.Client.isUnset(request.longitude)) {
            query["longitude"] = request.longitude!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["pageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["product"] = request.product ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reportTimestamp)) {
            query["reportTimestamp"] = request.reportTimestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GridQuery",
            "version": "2021-09-28",
            "protocol": "HTTPS",
            "pathname": "/grid/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(dataType) + "/v1",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GridQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func gridQuery(_ dataType: String, _ request: GridQueryRequest) async throws -> GridQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await gridQueryWithOptions(dataType as! String, request as! GridQueryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
