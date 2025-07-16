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
        self._endpoint = try getEndpoint("dlfnext", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func alterCatalogWithOptions(_ catalog: String, _ request: AlterCatalogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AlterCatalogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.removals)) {
            body["removals"] = request.removals ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.updates)) {
            body["updates"] = request.updates ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AlterCatalog",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/catalogs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(catalog)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AlterCatalogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func alterCatalog(_ catalog: String, _ request: AlterCatalogRequest) async throws -> AlterCatalogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await alterCatalogWithOptions(catalog as! String, request as! AlterCatalogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGrantPermissionsWithOptions(_ catalogId: String, _ request: BatchGrantPermissionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchGrantPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.permissions)) {
            body["permissions"] = request.permissions ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchGrantPermissions",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/permissions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(catalogId)) + "/batchgrant",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchGrantPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGrantPermissions(_ catalogId: String, _ request: BatchGrantPermissionsRequest) async throws -> BatchGrantPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchGrantPermissionsWithOptions(catalogId as! String, request as! BatchGrantPermissionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchRevokePermissionsWithOptions(_ catalogId: String, _ request: BatchRevokePermissionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchRevokePermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.permissions)) {
            body["permissions"] = request.permissions ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchRevokePermissions",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/permissions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(catalogId)) + "/batchrevoke",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchRevokePermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchRevokePermissions(_ catalogId: String, _ request: BatchRevokePermissionsRequest) async throws -> BatchRevokePermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchRevokePermissionsWithOptions(catalogId as! String, request as! BatchRevokePermissionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCatalogWithOptions(_ request: CreateCatalogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCatalogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            body["options"] = request.options ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCatalog",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/catalogs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCatalogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCatalog(_ request: CreateCatalogRequest) async throws -> CreateCatalogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createCatalogWithOptions(request as! CreateCatalogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRoleWithOptions(_ request: CreateRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            body["roleName"] = request.roleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRole",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/roles",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRole(_ request: CreateRoleRequest) async throws -> CreateRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRoleWithOptions(request as! CreateRoleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRoleWithOptions(_ request: DeleteRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.rolePrincipal)) {
            query["rolePrincipal"] = request.rolePrincipal ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRole",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/roles",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRole(_ request: DeleteRoleRequest) async throws -> DeleteRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRoleWithOptions(request as! DeleteRoleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/service/regions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegions() async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeRegionsWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dropCatalogWithOptions(_ catalog: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DropCatalogResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DropCatalog",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/catalogs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(catalog)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DropCatalogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dropCatalog(_ catalog: String) async throws -> DropCatalogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await dropCatalogWithOptions(catalog as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalogWithOptions(_ catalog: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCatalogResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCatalog",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/catalogs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(catalog)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCatalogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalog(_ catalog: String) async throws -> GetCatalogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCatalogWithOptions(catalog as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalogSummaryWithOptions(_ catalogId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCatalogSummaryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCatalogSummary",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(catalogId)) + "/storage-summary",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCatalogSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalogSummary(_ catalogId: String) async throws -> GetCatalogSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCatalogSummaryWithOptions(catalogId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalogSummaryTrendWithOptions(_ catalogId: String, _ request: GetCatalogSummaryTrendRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCatalogSummaryTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["endDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["startDate"] = request.startDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCatalogSummaryTrend",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(catalogId)) + "/storage-summary/trend",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCatalogSummaryTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalogSummaryTrend(_ catalogId: String, _ request: GetCatalogSummaryTrendRequest) async throws -> GetCatalogSummaryTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCatalogSummaryTrendWithOptions(catalogId as! String, request as! GetCatalogSummaryTrendRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalogTokenWithOptions(_ catalog: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCatalogTokenResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCatalogToken",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/catalogs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(catalog)) + "/token",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCatalogTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalogToken(_ catalog: String) async throws -> GetCatalogTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCatalogTokenWithOptions(catalog as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabaseSummaryWithOptions(_ catalogId: String, _ database: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatabaseSummaryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDatabaseSummary",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(catalogId)) + "/databases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(database)) + "/storage-summary",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatabaseSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabaseSummary(_ catalogId: String, _ database: String) async throws -> GetDatabaseSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDatabaseSummaryWithOptions(catalogId as! String, database as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegionStatusWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRegionStatusResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRegionStatus",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/service/status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRegionStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegionStatus() async throws -> GetRegionStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRegionStatusWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRoleWithOptions(_ request: GetRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.rolePrincipal)) {
            query["rolePrincipal"] = request.rolePrincipal ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRole",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/roles",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRole(_ request: GetRoleRequest) async throws -> GetRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRoleWithOptions(request as! GetRoleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableSummaryWithOptions(_ catalogId: String, _ database: String, _ table: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableSummaryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableSummary",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(catalogId)) + "/databases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(database)) + "/tables/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(table)) + "/storage-summary",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableSummary(_ catalogId: String, _ database: String, _ table: String) async throws -> GetTableSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTableSummaryWithOptions(catalogId as! String, database as! String, table as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserWithOptions(_ request: GetUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userPrincipal)) {
            query["userPrincipal"] = request.userPrincipal ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUser",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/users",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUser(_ request: GetUserRequest) async throws -> GetUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUserWithOptions(request as! GetUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantRoleToUsersWithOptions(_ request: GrantRoleToUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantRoleToUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.rolePrincipal)) {
            body["rolePrincipal"] = request.rolePrincipal ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userPrincipals)) {
            body["userPrincipals"] = request.userPrincipals ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantRoleToUsers",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/roles/grant",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantRoleToUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantRoleToUsers(_ request: GrantRoleToUsersRequest) async throws -> GrantRoleToUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await grantRoleToUsersWithOptions(request as! GrantRoleToUsersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCatalogsWithOptions(_ request: ListCatalogsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCatalogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogNamePattern)) {
            query["catalogNamePattern"] = request.catalogNamePattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.pageToken)) {
            query["pageToken"] = request.pageToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCatalogs",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/catalogs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCatalogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCatalogs(_ request: ListCatalogsRequest) async throws -> ListCatalogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listCatalogsWithOptions(request as! ListCatalogsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPartitionSummariesWithOptions(_ catalogId: String, _ database: String, _ table: String, _ request: ListPartitionSummariesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPartitionSummariesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.pageToken)) {
            query["pageToken"] = request.pageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partitionNamePattern)) {
            query["partitionNamePattern"] = request.partitionNamePattern ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPartitionSummaries",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(catalogId)) + "/databases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(database)) + "/tables/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(table)) + "/partitions/storage-summary",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPartitionSummariesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPartitionSummaries(_ catalogId: String, _ database: String, _ table: String, _ request: ListPartitionSummariesRequest) async throws -> ListPartitionSummariesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPartitionSummariesWithOptions(catalogId as! String, database as! String, table as! String, request as! ListPartitionSummariesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPermissionsWithOptions(_ catalogId: String, _ request: ListPermissionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.database)) {
            query["database"] = request.database ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.function)) {
            query["function"] = request.function ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.pageToken)) {
            query["pageToken"] = request.pageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.principal)) {
            query["principal"] = request.principal ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["resourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.table)) {
            query["table"] = request.table ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.view)) {
            query["view"] = request.view ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPermissions",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/permissions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(catalogId)) + "/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPermissions(_ catalogId: String, _ request: ListPermissionsRequest) async throws -> ListPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPermissionsWithOptions(catalogId as! String, request as! ListPermissionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRoleUsersWithOptions(_ request: ListRoleUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRoleUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.pageToken)) {
            query["pageToken"] = request.pageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rolePrincipal)) {
            query["rolePrincipal"] = request.rolePrincipal ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRoleUsers",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/roles/users/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRoleUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRoleUsers(_ request: ListRoleUsersRequest) async throws -> ListRoleUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRoleUsersWithOptions(request as! ListRoleUsersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRolesWithOptions(_ request: ListRolesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRolesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.pageToken)) {
            query["pageToken"] = request.pageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            query["roleName"] = request.roleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRoles",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/roles/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRolesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRoles(_ request: ListRolesRequest) async throws -> ListRolesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRolesWithOptions(request as! ListRolesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserRolesWithOptions(_ request: ListUserRolesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserRolesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.pageToken)) {
            query["pageToken"] = request.pageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userPrincipal)) {
            query["userPrincipal"] = request.userPrincipal ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserRoles",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/users/roles/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserRolesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserRoles(_ request: ListUserRolesRequest) async throws -> ListUserRolesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUserRolesWithOptions(request as! ListUserRolesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersWithOptions(_ request: ListUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.pageToken)) {
            query["pageToken"] = request.pageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["userName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUsers",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/users/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsers(_ request: ListUsersRequest) async throws -> ListUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUsersWithOptions(request as! ListUsersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeRoleFromUsersWithOptions(_ request: RevokeRoleFromUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeRoleFromUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.rolePrincipal)) {
            body["rolePrincipal"] = request.rolePrincipal ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userPrincipals)) {
            body["userPrincipals"] = request.userPrincipals ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeRoleFromUsers",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/roles/revoke",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeRoleFromUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeRoleFromUsers(_ request: RevokeRoleFromUsersRequest) async throws -> RevokeRoleFromUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await revokeRoleFromUsersWithOptions(request as! RevokeRoleFromUsersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func subscribeWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubscribeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Subscribe",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/service/subscribe",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubscribeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func subscribe() async throws -> SubscribeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await subscribeWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRoleWithOptions(_ request: UpdateRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["displayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rolePrincipal)) {
            body["rolePrincipal"] = request.rolePrincipal ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRole",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/roles",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRole(_ request: UpdateRoleRequest) async throws -> UpdateRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRoleWithOptions(request as! UpdateRoleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRoleUsersWithOptions(_ request: UpdateRoleUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRoleUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.rolePrincipal)) {
            body["rolePrincipal"] = request.rolePrincipal ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userPrincipals)) {
            body["userPrincipals"] = request.userPrincipals ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRoleUsers",
            "version": "2025-03-10",
            "protocol": "HTTPS",
            "pathname": "/dlf/v1/auth/roles/users",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRoleUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRoleUsers(_ request: UpdateRoleUsersRequest) async throws -> UpdateRoleUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRoleUsersWithOptions(request as! UpdateRoleUsersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
