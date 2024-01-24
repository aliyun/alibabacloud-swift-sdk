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
        self._endpoint = try getEndpoint("es-serverless", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createAppWithOptions(_ request: CreateAppRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            body["appName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authentication)) {
            body["authentication"] = request.authentication!;
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            body["chargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.network)) {
            body["network"] = request.network ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.privateNetwork)) {
            body["privateNetwork"] = request.privateNetwork ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.quotaInfo)) {
            body["quotaInfo"] = request.quotaInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["regionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApp",
            "version": "2023-06-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/es-serverless/instances",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApp(_ request: CreateAppRequest) async throws -> CreateAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAppWithOptions(request as! CreateAppRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAppWithOptions(_ appName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAppResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApp",
            "version": "2023-06-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/es-serverless/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApp(_ appName: String) async throws -> DeleteAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAppWithOptions(appName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppWithOptions(_ appName: String, _ request: GetAppRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.detailed)) {
            query["detailed"] = request.detailed!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApp",
            "version": "2023-06-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/es-serverless/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApp(_ appName: String, _ request: GetAppRequest) async throws -> GetAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAppWithOptions(appName as! String, request as! GetAppRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppQuotaWithOptions(_ appName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAppQuotaResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAppQuota",
            "version": "2023-06-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/es-serverless/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName) + "/quota",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAppQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppQuota(_ appName: String) async throws -> GetAppQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAppQuotaWithOptions(appName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMonitorDataWithOptions(_ request: GetMonitorDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMonitorDataResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMonitorData",
            "version": "2023-06-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/es-serverless/emon/metrics/query",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMonitorDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMonitorData(_ request: GetMonitorDataRequest) async throws -> GetMonitorDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMonitorDataWithOptions(request as! GetMonitorDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppsWithOptions(_ request: ListAppsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAppsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["appName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTime)) {
            query["createTime"] = request.createTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["orderType"] = request.orderType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApps",
            "version": "2023-06-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/es-serverless/instances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAppsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApps(_ request: ListAppsRequest) async throws -> ListAppsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAppsWithOptions(request as! ListAppsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAppWithOptions(_ appName: String, _ request: UpdateAppRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAppResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyReason)) {
            body["applyReason"] = request.applyReason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authentication)) {
            body["authentication"] = request.authentication!;
        }
        if (!TeaUtils.Client.isUnset(request.contactInfo)) {
            body["contactInfo"] = request.contactInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limiterInfo)) {
            body["limiterInfo"] = request.limiterInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.network)) {
            body["network"] = request.network ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.privateNetwork)) {
            body["privateNetwork"] = request.privateNetwork ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApp",
            "version": "2023-06-27",
            "protocol": "HTTPS",
            "pathname": "/openapi/es-serverless/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appName),
            "method": "PATCH",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApp(_ appName: String, _ request: UpdateAppRequest) async throws -> UpdateAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAppWithOptions(appName as! String, request as! UpdateAppRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
