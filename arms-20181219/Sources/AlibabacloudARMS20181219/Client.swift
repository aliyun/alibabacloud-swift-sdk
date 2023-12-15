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
        self._endpointMap = [
            "ap-northeast-2-pop": "arms.aliyuncs.com",
            "cn-beijing-finance-1": "arms.aliyuncs.com",
            "cn-beijing-finance-pop": "arms.aliyuncs.com",
            "cn-beijing-gov-1": "arms.aliyuncs.com",
            "cn-beijing-nu16-b01": "arms.aliyuncs.com",
            "cn-edge-1": "arms.aliyuncs.com",
            "cn-fujian": "arms.aliyuncs.com",
            "cn-haidian-cm12-c01": "arms.aliyuncs.com",
            "cn-hangzhou-bj-b01": "arms.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "arms.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "arms.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "arms.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "arms.aliyuncs.com",
            "cn-hangzhou-test-306": "arms.aliyuncs.com",
            "cn-hongkong-finance-pop": "arms.aliyuncs.com",
            "cn-huhehaote-nebula-1": "arms.aliyuncs.com",
            "cn-qingdao-nebula": "arms.aliyuncs.com",
            "cn-shanghai-et15-b01": "arms.aliyuncs.com",
            "cn-shanghai-et2-b01": "arms.aliyuncs.com",
            "cn-shanghai-inner": "arms.aliyuncs.com",
            "cn-shanghai-internal-test-1": "arms.aliyuncs.com",
            "cn-shenzhen-inner": "arms.aliyuncs.com",
            "cn-shenzhen-st4-d01": "arms.aliyuncs.com",
            "cn-shenzhen-su18-b01": "arms.aliyuncs.com",
            "cn-wuhan": "arms.aliyuncs.com",
            "cn-yushanfang": "arms.aliyuncs.com",
            "cn-zhangbei": "arms.aliyuncs.com",
            "cn-zhangbei-na61-b01": "arms.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "arms.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "arms.aliyuncs.com",
            "eu-west-1-oxs": "arms.aliyuncs.com",
            "me-east-1": "arms.aliyuncs.com",
            "rus-west-1-pop": "arms.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("arms", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func aRMSQueryDataSetWithOptions(_ request: ARMSQueryDataSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ARMSQueryDataSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetId)) {
            query["DatasetId"] = request.datasetId!;
        }
        if (!TeaUtils.Client.isUnset(request.dateStr)) {
            query["DateStr"] = request.dateStr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dimensions)) {
            query["Dimensions"] = request.dimensions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.hungryMode)) {
            query["HungryMode"] = request.hungryMode!;
        }
        if (!TeaUtils.Client.isUnset(request.intervalInSec)) {
            query["IntervalInSec"] = request.intervalInSec!;
        }
        if (!TeaUtils.Client.isUnset(request.isDrillDown)) {
            query["IsDrillDown"] = request.isDrillDown!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.maxTime)) {
            query["MaxTime"] = request.maxTime!;
        }
        if (!TeaUtils.Client.isUnset(request.measures)) {
            query["Measures"] = request.measures ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.minTime)) {
            query["MinTime"] = request.minTime!;
        }
        if (!TeaUtils.Client.isUnset(request.optionalDims)) {
            query["OptionalDims"] = request.optionalDims ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.orderByKey)) {
            query["OrderByKey"] = request.orderByKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reduceTail)) {
            query["ReduceTail"] = request.reduceTail!;
        }
        if (!TeaUtils.Client.isUnset(request.requiredDims)) {
            query["RequiredDims"] = request.requiredDims ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ARMSQueryDataSet",
            "version": "2018-12-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ARMSQueryDataSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aRMSQueryDataSet(_ request: ARMSQueryDataSetRequest) async throws -> ARMSQueryDataSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await aRMSQueryDataSetWithOptions(request as! ARMSQueryDataSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServicesWithOptions(_ request: GetServicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            query["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServices",
            "version": "2018-12-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServices(_ request: GetServicesRequest) async throws -> GetServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getServicesWithOptions(request as! GetServicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTraceWithOptions(_ request: GetTraceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTraceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            query["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.traceID)) {
            query["TraceID"] = request.traceID ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrace",
            "version": "2018-12-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTraceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrace(_ request: GetTraceRequest) async throws -> GetTraceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTraceWithOptions(request as! GetTraceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func metricQueryWithOptions(_ request: MetricQueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MetricQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dimensions)) {
            query["Dimensions"] = request.dimensions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.filters)) {
            query["Filters"] = request.filters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.iintervalInSec)) {
            query["IintervalInSec"] = request.iintervalInSec!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.measures)) {
            query["Measures"] = request.measures ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.metric)) {
            query["Metric"] = request.metric ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityToken)) {
            query["SecurityToken"] = request.securityToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MetricQuery",
            "version": "2018-12-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MetricQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func metricQuery(_ request: MetricQueryRequest) async throws -> MetricQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await metricQueryWithOptions(request as! MetricQueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchTracesWithOptions(_ request: SearchTracesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchTracesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appType)) {
            query["AppType"] = request.appType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.minDuration)) {
            query["MinDuration"] = request.minDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.operationName)) {
            query["OperationName"] = request.operationName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.tag1)) {
            query["Tag1"] = request.tag1 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag2)) {
            query["Tag2"] = request.tag2 ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchTraces",
            "version": "2018-12-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchTracesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchTraces(_ request: SearchTracesRequest) async throws -> SearchTracesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchTracesWithOptions(request as! SearchTracesRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
