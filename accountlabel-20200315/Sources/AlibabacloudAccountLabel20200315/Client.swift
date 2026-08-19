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
        self._endpoint = try getEndpoint("accountlabel", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addCustomerLabelWithOptions(_ request: AddCustomerLabelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddCustomerLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endtime)) {
            query["Endtime"] = request.endtime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelSeries)) {
            query["LabelSeries"] = request.labelSeries ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelTypes)) {
            query["LabelTypes"] = request.labelTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.organization)) {
            query["Organization"] = request.organization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddCustomerLabel",
            "version": "2020-03-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddCustomerLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addCustomerLabel(_ request: AddCustomerLabelRequest) async throws -> AddCustomerLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addCustomerLabelWithOptions(request as! AddCustomerLabelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchFetchAccountLabelWithOptions(_ tmpReq: BatchFetchAccountLabelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchFetchAccountLabelResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchFetchAccountLabelShrinkRequest = BatchFetchAccountLabelShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.labelSeriesList)) {
            request.labelSeriesListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.labelSeriesList, "LabelSeriesList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instant)) {
            query["Instant"] = request.instant!;
        }
        if (!TeaUtils.Client.isUnset(request.labelSeriesListShrink)) {
            query["LabelSeriesList"] = request.labelSeriesListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.organization)) {
            query["Organization"] = request.organization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pk)) {
            query["Pk"] = request.pk!;
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchFetchAccountLabel",
            "version": "2020-03-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchFetchAccountLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchFetchAccountLabel(_ request: BatchFetchAccountLabelRequest) async throws -> BatchFetchAccountLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchFetchAccountLabelWithOptions(request as! BatchFetchAccountLabelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomerLabelWithOptions(_ request: DeleteCustomerLabelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCustomerLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labelSeries)) {
            query["LabelSeries"] = request.labelSeries ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelTypes)) {
            query["LabelTypes"] = request.labelTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.organization)) {
            query["Organization"] = request.organization ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK!;
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCustomerLabel",
            "version": "2020-03-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCustomerLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomerLabel(_ request: DeleteCustomerLabelRequest) async throws -> DeleteCustomerLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCustomerLabelWithOptions(request as! DeleteCustomerLabelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCustomerLabelWithOptions(_ request: QueryCustomerLabelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCustomerLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instant)) {
            query["Instant"] = request.instant!;
        }
        if (!TeaUtils.Client.isUnset(request.labelSeries)) {
            query["LabelSeries"] = request.labelSeries ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK!;
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCustomerLabel",
            "version": "2020-03-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCustomerLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCustomerLabel(_ request: QueryCustomerLabelRequest) async throws -> QueryCustomerLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCustomerLabelWithOptions(request as! QueryCustomerLabelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCustomerLabelByConfigGroupWithOptions(_ request: QueryCustomerLabelByConfigGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCustomerLabelByConfigGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupType)) {
            query["GroupType"] = request.groupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.PK)) {
            query["PK"] = request.PK!;
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCustomerLabelByConfigGroup",
            "version": "2020-03-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCustomerLabelByConfigGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCustomerLabelByConfigGroup(_ request: QueryCustomerLabelByConfigGroupRequest) async throws -> QueryCustomerLabelByConfigGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCustomerLabelByConfigGroupWithOptions(request as! QueryCustomerLabelByConfigGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
