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
            "ap-northeast-1": "maxcompute.aliyuncs.com",
            "ap-northeast-2-pop": "maxcompute.aliyuncs.com",
            "ap-south-1": "maxcompute.aliyuncs.com",
            "ap-southeast-1": "maxcompute.aliyuncs.com",
            "ap-southeast-2": "maxcompute.aliyuncs.com",
            "ap-southeast-3": "maxcompute.aliyuncs.com",
            "ap-southeast-5": "maxcompute.aliyuncs.com",
            "cn-beijing": "maxcompute.aliyuncs.com",
            "cn-beijing-finance-1": "maxcompute.aliyuncs.com",
            "cn-beijing-finance-pop": "maxcompute.aliyuncs.com",
            "cn-beijing-gov-1": "maxcompute.aliyuncs.com",
            "cn-beijing-nu16-b01": "maxcompute.aliyuncs.com",
            "cn-chengdu": "maxcompute.aliyuncs.com",
            "cn-edge-1": "maxcompute.aliyuncs.com",
            "cn-fujian": "maxcompute.aliyuncs.com",
            "cn-haidian-cm12-c01": "maxcompute.aliyuncs.com",
            "cn-hangzhou": "maxcompute.aliyuncs.com",
            "cn-hangzhou-bj-b01": "maxcompute.aliyuncs.com",
            "cn-hangzhou-finance": "maxcompute.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "maxcompute.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "maxcompute.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "maxcompute.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "maxcompute.aliyuncs.com",
            "cn-hangzhou-test-306": "maxcompute.aliyuncs.com",
            "cn-hongkong": "maxcompute.aliyuncs.com",
            "cn-hongkong-finance-pop": "maxcompute.aliyuncs.com",
            "cn-huhehaote": "maxcompute.aliyuncs.com",
            "cn-north-2-gov-1": "maxcompute.aliyuncs.com",
            "cn-qingdao": "maxcompute.aliyuncs.com",
            "cn-qingdao-nebula": "maxcompute.aliyuncs.com",
            "cn-shanghai": "maxcompute.aliyuncs.com",
            "cn-shanghai-et15-b01": "maxcompute.aliyuncs.com",
            "cn-shanghai-et2-b01": "maxcompute.aliyuncs.com",
            "cn-shanghai-finance-1": "maxcompute.aliyuncs.com",
            "cn-shanghai-inner": "maxcompute.aliyuncs.com",
            "cn-shanghai-internal-test-1": "maxcompute.aliyuncs.com",
            "cn-shenzhen": "maxcompute.aliyuncs.com",
            "cn-shenzhen-finance-1": "maxcompute.aliyuncs.com",
            "cn-shenzhen-inner": "maxcompute.aliyuncs.com",
            "cn-shenzhen-st4-d01": "maxcompute.aliyuncs.com",
            "cn-shenzhen-su18-b01": "maxcompute.aliyuncs.com",
            "cn-wuhan": "maxcompute.aliyuncs.com",
            "cn-yushanfang": "maxcompute.aliyuncs.com",
            "cn-zhangbei-na61-b01": "maxcompute.aliyuncs.com",
            "cn-zhangjiakou": "maxcompute.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "maxcompute.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "maxcompute.aliyuncs.com",
            "eu-central-1": "maxcompute.aliyuncs.com",
            "eu-west-1": "maxcompute.aliyuncs.com",
            "eu-west-1-oxs": "maxcompute.aliyuncs.com",
            "me-east-1": "maxcompute.aliyuncs.com",
            "rus-west-1-pop": "maxcompute.aliyuncs.com",
            "us-east-1": "maxcompute.aliyuncs.com",
            "us-west-1": "maxcompute.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("maxcompute", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func applyComputeQuotaPlanWithOptions(_ nickname: String, _ planName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyComputeQuotaPlanResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyComputeQuotaPlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/computeQuotaPlan/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(planName)) + "/apply",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyComputeQuotaPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyComputeQuotaPlan(_ nickname: String, _ planName: String) async throws -> ApplyComputeQuotaPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await applyComputeQuotaPlanWithOptions(nickname as! String, planName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createComputeQuotaPlanWithOptions(_ nickname: String, _ request: CreateComputeQuotaPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateComputeQuotaPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quota)) {
            body["quota"] = request.quota!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateComputeQuotaPlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/computeQuotaPlan",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateComputeQuotaPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createComputeQuotaPlan(_ nickname: String, _ request: CreateComputeQuotaPlanRequest) async throws -> CreateComputeQuotaPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createComputeQuotaPlanWithOptions(nickname as! String, request as! CreateComputeQuotaPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMmsDataSourceWithOptions(_ request: CreateMmsDataSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMmsDataSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networklink)) {
            body["networklink"] = request.networklink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMmsDataSource",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMmsDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMmsDataSource(_ request: CreateMmsDataSourceRequest) async throws -> CreateMmsDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createMmsDataSourceWithOptions(request as! CreateMmsDataSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMmsFetchMetadataJobWithOptions(_ sourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMmsFetchMetadataJobResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMmsFetchMetadataJob",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/scans",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMmsFetchMetadataJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMmsFetchMetadataJob(_ sourceId: String) async throws -> CreateMmsFetchMetadataJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createMmsFetchMetadataJobWithOptions(sourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMmsJobWithOptions(_ sourceId: String, _ request: CreateMmsJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMmsJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnMapping)) {
            body["columnMapping"] = request.columnMapping ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.dstDbName)) {
            body["dstDbName"] = request.dstDbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstSchemaName)) {
            body["dstSchemaName"] = request.dstSchemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableDataMigration)) {
            body["enableDataMigration"] = request.enableDataMigration!;
        }
        if (!TeaUtils.Client.isUnset(request.enableSchemaMigration)) {
            body["enableSchemaMigration"] = request.enableSchemaMigration!;
        }
        if (!TeaUtils.Client.isUnset(request.enableVerification)) {
            body["enableVerification"] = request.enableVerification!;
        }
        if (!TeaUtils.Client.isUnset(request.eta)) {
            body["eta"] = request.eta ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.increment)) {
            body["increment"] = request.increment!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.others)) {
            body["others"] = request.others ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.partitionFilters)) {
            body["partitionFilters"] = request.partitionFilters ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.partitions)) {
            body["partitions"] = request.partitions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.schemaOnly)) {
            body["schemaOnly"] = request.schemaOnly!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["sourceId"] = request.sourceId!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceName)) {
            body["sourceName"] = request.sourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcDbName)) {
            body["srcDbName"] = request.srcDbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcSchemaName)) {
            body["srcSchemaName"] = request.srcSchemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableBlackList)) {
            body["tableBlackList"] = request.tableBlackList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tableMapping)) {
            body["tableMapping"] = request.tableMapping ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.tableWhiteList)) {
            body["tableWhiteList"] = request.tableWhiteList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tables)) {
            body["tables"] = request.tables ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["taskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMmsJob",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/jobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMmsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMmsJob(_ sourceId: String, _ request: CreateMmsJobRequest) async throws -> CreateMmsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createMmsJobWithOptions(sourceId as! String, request as! CreateMmsJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPackageWithOptions(_ projectName: String, _ request: CreatePackageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isInstall)) {
            query["isInstall"] = request.isInstall!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePackage",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/packages",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPackage(_ projectName: String, _ request: CreatePackageRequest) async throws -> CreatePackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPackageWithOptions(projectName as! String, request as! CreatePackageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProjectWithOptions(_ request: CreateProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProject",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProject(_ request: CreateProjectRequest) async throws -> CreateProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProjectWithOptions(request as! CreateProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQuotaPlanWithOptions(_ nickname: String, _ request: CreateQuotaPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateQuotaPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateQuotaPlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/plans",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateQuotaPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQuotaPlan(_ nickname: String, _ request: CreateQuotaPlanRequest) async throws -> CreateQuotaPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createQuotaPlanWithOptions(nickname as! String, request as! CreateQuotaPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRoleWithOptions(_ projectName: String, _ request: CreateRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRole",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/roles",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRole(_ projectName: String, _ request: CreateRoleRequest) async throws -> CreateRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRoleWithOptions(projectName as! String, request as! CreateRoleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteComputeQuotaPlanWithOptions(_ nickname: String, _ planName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteComputeQuotaPlanResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteComputeQuotaPlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/computeQuotaPlan/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(planName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteComputeQuotaPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteComputeQuotaPlan(_ nickname: String, _ planName: String) async throws -> DeleteComputeQuotaPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteComputeQuotaPlanWithOptions(nickname as! String, planName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMmsDataSourceWithOptions(_ sourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMmsDataSourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMmsDataSource",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMmsDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMmsDataSource(_ sourceId: String) async throws -> DeleteMmsDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteMmsDataSourceWithOptions(sourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMmsJobWithOptions(_ sourceId: String, _ jobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMmsJobResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMmsJob",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMmsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMmsJob(_ sourceId: String, _ jobId: String) async throws -> DeleteMmsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteMmsJobWithOptions(sourceId as! String, jobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteQuotaPlanWithOptions(_ nickname: String, _ planName: String, _ request: DeleteQuotaPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteQuotaPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteQuotaPlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/plans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(planName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteQuotaPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteQuotaPlan(_ nickname: String, _ planName: String, _ request: DeleteQuotaPlanRequest) async throws -> DeleteQuotaPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteQuotaPlanWithOptions(nickname as! String, planName as! String, request as! DeleteQuotaPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getComputeEffectivePlanWithOptions(_ nickname: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetComputeEffectivePlanResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetComputeEffectivePlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/computeEffectivePlan/",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetComputeEffectivePlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getComputeEffectivePlan(_ nickname: String) async throws -> GetComputeEffectivePlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getComputeEffectivePlanWithOptions(nickname as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getComputeQuotaPlanWithOptions(_ nickname: String, _ planName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetComputeQuotaPlanResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetComputeQuotaPlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/computeQuotaPlan/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(planName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetComputeQuotaPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getComputeQuotaPlan(_ nickname: String, _ planName: String) async throws -> GetComputeQuotaPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getComputeQuotaPlanWithOptions(nickname as! String, planName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getComputeQuotaScheduleWithOptions(_ nickname: String, _ request: GetComputeQuotaScheduleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetComputeQuotaScheduleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.displayTimezone)) {
            query["displayTimezone"] = request.displayTimezone ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetComputeQuotaSchedule",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/computeQuotaSchedule",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetComputeQuotaScheduleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getComputeQuotaSchedule(_ nickname: String, _ request: GetComputeQuotaScheduleRequest) async throws -> GetComputeQuotaScheduleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getComputeQuotaScheduleWithOptions(nickname as! String, request as! GetComputeQuotaScheduleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobInfoWithOptions(_ instanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetJobInfoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetJobInfo",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId)) + "/info",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetJobInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobInfo(_ instanceId: String) async throws -> GetJobInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getJobInfoWithOptions(instanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobResourceUsageWithOptions(_ tmpReq: GetJobResourceUsageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetJobResourceUsageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetJobResourceUsageShrinkRequest = GetJobResourceUsageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.jobOwnerList)) {
            request.jobOwnerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.jobOwnerList, "jobOwnerList", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.quotaNicknameList)) {
            request.quotaNicknameListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.quotaNicknameList, "quotaNicknameList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.date)) {
            query["date"] = request.date ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobOwnerListShrink)) {
            query["jobOwnerList"] = request.jobOwnerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.quotaNicknameListShrink)) {
            query["quotaNicknameList"] = request.quotaNicknameListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetJobResourceUsage",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/resourceUsage",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetJobResourceUsageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobResourceUsage(_ request: GetJobResourceUsageRequest) async throws -> GetJobResourceUsageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getJobResourceUsageWithOptions(request as! GetJobResourceUsageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsAsyncTaskWithOptions(_ sourceId: String, _ asyncTaskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMmsAsyncTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMmsAsyncTask",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/asyncTasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(asyncTaskId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMmsAsyncTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsAsyncTask(_ sourceId: String, _ asyncTaskId: String) async throws -> GetMmsAsyncTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMmsAsyncTaskWithOptions(sourceId as! String, asyncTaskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsDataSourceWithOptions(_ sourceId: String, _ request: GetMmsDataSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMmsDataSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withConfig)) {
            query["withConfig"] = request.withConfig!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMmsDataSource",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMmsDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsDataSource(_ sourceId: String, _ request: GetMmsDataSourceRequest) async throws -> GetMmsDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMmsDataSourceWithOptions(sourceId as! String, request as! GetMmsDataSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsDbWithOptions(_ sourceId: String, _ dbId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMmsDbResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMmsDb",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/dbs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(dbId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMmsDbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsDb(_ sourceId: String, _ dbId: String) async throws -> GetMmsDbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMmsDbWithOptions(sourceId as! String, dbId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsFetchMetadataJobWithOptions(_ sourceId: String, _ scanId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMmsFetchMetadataJobResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMmsFetchMetadataJob",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/scans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(scanId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMmsFetchMetadataJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsFetchMetadataJob(_ sourceId: String, _ scanId: String) async throws -> GetMmsFetchMetadataJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMmsFetchMetadataJobWithOptions(sourceId as! String, scanId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsJobWithOptions(_ sourceId: String, _ jobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMmsJobResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMmsJob",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMmsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsJob(_ sourceId: String, _ jobId: String) async throws -> GetMmsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMmsJobWithOptions(sourceId as! String, jobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsPartitionWithOptions(_ sourceId: String, _ partitionId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMmsPartitionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMmsPartition",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/partitions/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(partitionId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMmsPartitionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsPartition(_ sourceId: String, _ partitionId: String) async throws -> GetMmsPartitionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMmsPartitionWithOptions(sourceId as! String, partitionId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsTableWithOptions(_ sourceId: String, _ tableId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMmsTableResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMmsTable",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/tables/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(tableId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMmsTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsTable(_ sourceId: String, _ tableId: String) async throws -> GetMmsTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMmsTableWithOptions(sourceId as! String, tableId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsTaskWithOptions(_ sourceId: String, _ taskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMmsTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMmsTask",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/tasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMmsTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMmsTask(_ sourceId: String, _ taskId: String) async throws -> GetMmsTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMmsTaskWithOptions(sourceId as! String, taskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPackageWithOptions(_ projectName: String, _ packageName: String, _ request: GetPackageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceProject)) {
            query["sourceProject"] = request.sourceProject ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPackage",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/packages/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(packageName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPackage(_ projectName: String, _ packageName: String, _ request: GetPackageRequest) async throws -> GetPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPackageWithOptions(projectName as! String, packageName as! String, request as! GetPackageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectWithOptions(_ projectName: String, _ request: GetProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["verbose"] = request.verbose!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProject",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProject(_ projectName: String, _ request: GetProjectRequest) async throws -> GetProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProjectWithOptions(projectName as! String, request as! GetProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaWithOptions(_ nickname: String, _ request: GetQuotaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.akProven)) {
            query["AkProven"] = request.akProven ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mock)) {
            query["mock"] = request.mock!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQuota",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuota(_ nickname: String, _ request: GetQuotaRequest) async throws -> GetQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQuotaWithOptions(nickname as! String, request as! GetQuotaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaPlanWithOptions(_ nickname: String, _ planName: String, _ request: GetQuotaPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQuotaPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQuotaPlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/plans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(planName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQuotaPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaPlan(_ nickname: String, _ planName: String, _ request: GetQuotaPlanRequest) async throws -> GetQuotaPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQuotaPlanWithOptions(nickname as! String, planName as! String, request as! GetQuotaPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaScheduleWithOptions(_ nickname: String, _ request: GetQuotaScheduleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQuotaScheduleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.displayTimezone)) {
            query["displayTimezone"] = request.displayTimezone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQuotaSchedule",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/schedule",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQuotaScheduleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaSchedule(_ nickname: String, _ request: GetQuotaScheduleRequest) async throws -> GetQuotaScheduleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQuotaScheduleWithOptions(nickname as! String, request as! GetQuotaScheduleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaUsageWithOptions(_ nickname: String, _ tmpReq: GetQuotaUsageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQuotaUsageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetQuotaUsageShrinkRequest = GetQuotaUsageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.plotTypes)) {
            request.plotTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.plotTypes, "plotTypes", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.yAxisTypes)) {
            request.yAxisTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.yAxisTypes, "yAxisTypes", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggMethod)) {
            query["aggMethod"] = request.aggMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["from"] = request.from!;
        }
        if (!TeaUtils.Client.isUnset(request.plotTypesShrink)) {
            query["plotTypes"] = request.plotTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            query["productId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subQuotaNickname)) {
            query["subQuotaNickname"] = request.subQuotaNickname ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            query["to"] = request.to!;
        }
        if (!TeaUtils.Client.isUnset(request.yAxisTypesShrink)) {
            query["yAxisTypes"] = request.yAxisTypesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQuotaUsage",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/usage",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQuotaUsageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaUsage(_ nickname: String, _ request: GetQuotaUsageRequest) async throws -> GetQuotaUsageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQuotaUsageWithOptions(nickname as! String, request as! GetQuotaUsageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRoleAclWithOptions(_ projectName: String, _ roleName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRoleAclResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRoleAcl",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/roles/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(roleName)) + "/roleAcl",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRoleAclResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRoleAcl(_ projectName: String, _ roleName: String) async throws -> GetRoleAclResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRoleAclWithOptions(projectName as! String, roleName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRoleAclOnObjectWithOptions(_ projectName: String, _ roleName: String, _ request: GetRoleAclOnObjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRoleAclOnObjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.objectName)) {
            query["objectName"] = request.objectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            query["objectType"] = request.objectType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRoleAclOnObject",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/roles/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(roleName)) + "/acl",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRoleAclOnObjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRoleAclOnObject(_ projectName: String, _ roleName: String, _ request: GetRoleAclOnObjectRequest) async throws -> GetRoleAclOnObjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRoleAclOnObjectWithOptions(projectName as! String, roleName as! String, request as! GetRoleAclOnObjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRolePolicyWithOptions(_ projectName: String, _ roleName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRolePolicyResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRolePolicy",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/roles/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(roleName)) + "/policy",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRolePolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRolePolicy(_ projectName: String, _ roleName: String) async throws -> GetRolePolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRolePolicyWithOptions(projectName as! String, roleName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRunningJobsWithOptions(_ tmpReq: GetRunningJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRunningJobsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetRunningJobsShrinkRequest = GetRunningJobsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.jobOwnerList)) {
            request.jobOwnerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.jobOwnerList, "jobOwnerList", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.quotaNicknameList)) {
            request.quotaNicknameListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.quotaNicknameList, "quotaNicknameList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["from"] = request.from!;
        }
        if (!TeaUtils.Client.isUnset(request.jobOwnerListShrink)) {
            query["jobOwnerList"] = request.jobOwnerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.quotaNicknameListShrink)) {
            query["quotaNicknameList"] = request.quotaNicknameListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            query["to"] = request.to!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRunningJobs",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/runningJobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRunningJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRunningJobs(_ request: GetRunningJobsRequest) async throws -> GetRunningJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRunningJobsWithOptions(request as! GetRunningJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStorageAmountSummaryWithOptions(_ request: GetStorageAmountSummaryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStorageAmountSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.date)) {
            query["date"] = request.date ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStorageAmountSummary",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/observations/analysis/storage/amount",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStorageAmountSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStorageAmountSummary(_ request: GetStorageAmountSummaryRequest) async throws -> GetStorageAmountSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getStorageAmountSummaryWithOptions(request as! GetStorageAmountSummaryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStorageSizeSummaryWithOptions(_ request: GetStorageSizeSummaryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStorageSizeSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.date)) {
            query["date"] = request.date ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStorageSizeSummary",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/observations/analysis/storage/size",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStorageSizeSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStorageSizeSummary(_ request: GetStorageSizeSummaryRequest) async throws -> GetStorageSizeSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getStorageSizeSummaryWithOptions(request as! GetStorageSizeSummaryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStorageSummaryComparedWithOptions(_ type: String, _ tmpReq: GetStorageSummaryComparedRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStorageSummaryComparedResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetStorageSummaryComparedShrinkRequest = GetStorageSummaryComparedShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.projects)) {
            request.projectsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.projects, "projects", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginDate)) {
            query["beginDate"] = request.beginDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["endDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectsShrink)) {
            query["projects"] = request.projectsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStorageSummaryCompared",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/observations/analysis/storage/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(type)) + "/compared",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStorageSummaryComparedResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStorageSummaryCompared(_ type: String, _ request: GetStorageSummaryComparedRequest) async throws -> GetStorageSummaryComparedResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getStorageSummaryComparedWithOptions(type as! String, request as! GetStorageSummaryComparedRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableInfoWithOptions(_ projectName: String, _ tableName: String, _ request: GetTableInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["schemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableInfo",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/tables/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(tableName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableInfo(_ projectName: String, _ tableName: String, _ request: GetTableInfoRequest) async throws -> GetTableInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTableInfoWithOptions(projectName as! String, tableName as! String, request as! GetTableInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrustedProjectsWithOptions(_ projectName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTrustedProjectsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrustedProjects",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/trustedProjects",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTrustedProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrustedProjects(_ projectName: String) async throws -> GetTrustedProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTrustedProjectsWithOptions(projectName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killJobsWithOptions(_ request: KillJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> KillJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "KillJobs",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/kill",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(KillJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killJobs(_ request: KillJobsRequest) async throws -> KillJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await killJobsWithOptions(request as! KillJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComputeMetricsByInstanceWithOptions(_ request: ListComputeMetricsByInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListComputeMetricsByInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["endDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["instanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobOwner)) {
            body["jobOwner"] = request.jobOwner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectNames)) {
            body["projectNames"] = request.projectNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signature)) {
            body["signature"] = request.signature ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specCodes)) {
            body["specCodes"] = request.specCodes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["startDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.types)) {
            body["types"] = request.types ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListComputeMetricsByInstance",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/computeMetrics/listByInstance",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListComputeMetricsByInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComputeMetricsByInstance(_ request: ListComputeMetricsByInstanceRequest) async throws -> ListComputeMetricsByInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listComputeMetricsByInstanceWithOptions(request as! ListComputeMetricsByInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComputeQuotaPlanWithOptions(_ nickname: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListComputeQuotaPlanResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListComputeQuotaPlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/computeQuotaPlan",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListComputeQuotaPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listComputeQuotaPlan(_ nickname: String) async throws -> ListComputeQuotaPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listComputeQuotaPlanWithOptions(nickname as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctionsWithOptions(_ projectName: String, _ request: ListFunctionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFunctionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxItem)) {
            query["maxItem"] = request.maxItem!;
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["schemaName"] = request.schemaName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFunctions",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/functions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFunctionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctions(_ projectName: String, _ request: ListFunctionsRequest) async throws -> ListFunctionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFunctionsWithOptions(projectName as! String, request as! ListFunctionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobInfosWithOptions(_ request: ListJobInfosRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJobInfosResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascOrder)) {
            query["ascOrder"] = request.ascOrder!;
        }
        if (!TeaUtils.Client.isUnset(request.orderColumn)) {
            query["orderColumn"] = request.orderColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extNodeIdList)) {
            body["extNodeIdList"] = request.extNodeIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            body["from"] = request.from!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdList)) {
            body["instanceIdList"] = request.instanceIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.jobOwnerList)) {
            body["jobOwnerList"] = request.jobOwnerList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.priorityList)) {
            body["priorityList"] = request.priorityList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.projectList)) {
            body["projectList"] = request.projectList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.quotaNickname)) {
            body["quotaNickname"] = request.quotaNickname ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneTagList)) {
            body["sceneTagList"] = request.sceneTagList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.signatureList)) {
            body["signatureList"] = request.signatureList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sortByList)) {
            body["sortByList"] = request.sortByList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sortOrderList)) {
            body["sortOrderList"] = request.sortOrderList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.statusList)) {
            body["statusList"] = request.statusList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            body["to"] = request.to!;
        }
        if (!TeaUtils.Client.isUnset(request.typeList)) {
            body["typeList"] = request.typeList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJobInfos",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListJobInfosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobInfos(_ request: ListJobInfosRequest) async throws -> ListJobInfosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listJobInfosWithOptions(request as! ListJobInfosRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobMetricWithOptions(_ request: ListJobMetricRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJobMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.group)) {
            body["group"] = request.group ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metric)) {
            body["metric"] = request.metric ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            body["period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            body["project"] = request.project ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.quota)) {
            body["quota"] = request.quota ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJobMetric",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/metric",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListJobMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobMetric(_ request: ListJobMetricRequest) async throws -> ListJobMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listJobMetricWithOptions(request as! ListJobMetricRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobSnapshotInfosWithOptions(_ request: ListJobSnapshotInfosRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJobSnapshotInfosResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascOrder)) {
            query["ascOrder"] = request.ascOrder!;
        }
        if (!TeaUtils.Client.isUnset(request.orderColumn)) {
            query["orderColumn"] = request.orderColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extNodeIdList)) {
            body["extNodeIdList"] = request.extNodeIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            body["from"] = request.from!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdList)) {
            body["instanceIdList"] = request.instanceIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.jobOwnerList)) {
            body["jobOwnerList"] = request.jobOwnerList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.priorityList)) {
            body["priorityList"] = request.priorityList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.projectList)) {
            body["projectList"] = request.projectList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.quotaNickname)) {
            body["quotaNickname"] = request.quotaNickname ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signatureList)) {
            body["signatureList"] = request.signatureList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sortByList)) {
            body["sortByList"] = request.sortByList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sortOrderList)) {
            body["sortOrderList"] = request.sortOrderList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.statusList)) {
            body["statusList"] = request.statusList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            body["to"] = request.to!;
        }
        if (!TeaUtils.Client.isUnset(request.typeList)) {
            body["typeList"] = request.typeList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJobSnapshotInfos",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/snapshot",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListJobSnapshotInfosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobSnapshotInfos(_ request: ListJobSnapshotInfosRequest) async throws -> ListJobSnapshotInfosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listJobSnapshotInfosWithOptions(request as! ListJobSnapshotInfosRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMmsDataSourcesWithOptions(_ request: ListMmsDataSourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMmsDataSourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMmsDataSources",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMmsDataSourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMmsDataSources(_ request: ListMmsDataSourcesRequest) async throws -> ListMmsDataSourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMmsDataSourcesWithOptions(request as! ListMmsDataSourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMmsDbsWithOptions(_ sourceId: String, _ tmpReq: ListMmsDbsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMmsDbsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListMmsDbsShrinkRequest = ListMmsDbsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sorter)) {
            request.sorterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sorter, "sorter", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sorterShrink)) {
            query["sorter"] = request.sorterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMmsDbs",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/dbs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMmsDbsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMmsDbs(_ sourceId: String, _ request: ListMmsDbsRequest) async throws -> ListMmsDbsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMmsDbsWithOptions(sourceId as! String, request as! ListMmsDbsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMmsJobsWithOptions(_ sourceId: String, _ request: ListMmsJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMmsJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dstDbName)) {
            query["dstDbName"] = request.dstDbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstTableName)) {
            query["dstTableName"] = request.dstTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.srcDbName)) {
            query["srcDbName"] = request.srcDbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcTableName)) {
            query["srcTableName"] = request.srcTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stopped)) {
            query["stopped"] = request.stopped!;
        }
        if (!TeaUtils.Client.isUnset(request.sorter)) {
            query["sorter"] = request.sorter!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMmsJobs",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/jobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMmsJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMmsJobs(_ sourceId: String, _ request: ListMmsJobsRequest) async throws -> ListMmsJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMmsJobsWithOptions(sourceId as! String, request as! ListMmsJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMmsPartitionsWithOptions(_ sourceId: String, _ tmpReq: ListMmsPartitionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMmsPartitionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListMmsPartitionsShrinkRequest = ListMmsPartitionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.status)) {
            request.statusShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.status, "status", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["dbId"] = request.dbId!;
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["dbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lastDdlTimeEnd)) {
            query["lastDdlTimeEnd"] = request.lastDdlTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lastDdlTimeStart)) {
            query["lastDdlTimeStart"] = request.lastDdlTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.statusShrink)) {
            query["status"] = request.statusShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableId)) {
            query["tableId"] = request.tableId!;
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["tableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updated)) {
            query["updated"] = request.updated!;
        }
        if (!TeaUtils.Client.isUnset(request.value)) {
            query["value"] = request.value ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sorter)) {
            query["sorter"] = request.sorter!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMmsPartitions",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/partitions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMmsPartitionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMmsPartitions(_ sourceId: String, _ request: ListMmsPartitionsRequest) async throws -> ListMmsPartitionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMmsPartitionsWithOptions(sourceId as! String, request as! ListMmsPartitionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMmsTablesWithOptions(_ sourceId: String, _ tmpReq: ListMmsTablesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMmsTablesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListMmsTablesShrinkRequest = ListMmsTablesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.status)) {
            request.statusShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.status, "status", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbId)) {
            query["dbId"] = request.dbId!;
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["dbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstName)) {
            query["dstName"] = request.dstName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstProjectName)) {
            query["dstProjectName"] = request.dstProjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstSchemaName)) {
            query["dstSchemaName"] = request.dstSchemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hasPartitions)) {
            query["hasPartitions"] = request.hasPartitions!;
        }
        if (!TeaUtils.Client.isUnset(request.lastDdlTimeEnd)) {
            query["lastDdlTimeEnd"] = request.lastDdlTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lastDdlTimeStart)) {
            query["lastDdlTimeStart"] = request.lastDdlTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onlyName)) {
            query["onlyName"] = request.onlyName!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.statusShrink)) {
            query["status"] = request.statusShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sorter)) {
            query["sorter"] = request.sorter!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMmsTables",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/tables",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMmsTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMmsTables(_ sourceId: String, _ request: ListMmsTablesRequest) async throws -> ListMmsTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMmsTablesWithOptions(sourceId as! String, request as! ListMmsTablesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMmsTaskLogsWithOptions(_ sourceId: String, _ taskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMmsTaskLogsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMmsTaskLogs",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/tasks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId)) + "/logs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMmsTaskLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMmsTaskLogs(_ sourceId: String, _ taskId: String) async throws -> ListMmsTaskLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMmsTaskLogsWithOptions(sourceId as! String, taskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMmsTasksWithOptions(_ sourceId: String, _ request: ListMmsTasksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMmsTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dstDbName)) {
            query["dstDbName"] = request.dstDbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstTableName)) {
            query["dstTableName"] = request.dstTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["jobId"] = request.jobId!;
        }
        if (!TeaUtils.Client.isUnset(request.jobName)) {
            query["jobName"] = request.jobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.partition)) {
            query["partition"] = request.partition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcDbName)) {
            query["srcDbName"] = request.srcDbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcTableName)) {
            query["srcTableName"] = request.srcTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sorter)) {
            query["sorter"] = request.sorter!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMmsTasks",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/tasks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMmsTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMmsTasks(_ sourceId: String, _ request: ListMmsTasksRequest) async throws -> ListMmsTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMmsTasksWithOptions(sourceId as! String, request as! ListMmsTasksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPackagesWithOptions(_ projectName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPackagesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPackages",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/packages",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPackagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPackages(_ projectName: String) async throws -> ListPackagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPackagesWithOptions(projectName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectUsersWithOptions(_ projectName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectUsersResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjectUsers",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/users",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectUsers(_ projectName: String) async throws -> ListProjectUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProjectUsersWithOptions(projectName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectsWithOptions(_ request: ListProjectsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listSystemCatalog)) {
            query["listSystemCatalog"] = request.listSystemCatalog!;
        }
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxItem)) {
            query["maxItem"] = request.maxItem!;
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaName)) {
            query["quotaName"] = request.quotaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaNickName)) {
            query["quotaNickName"] = request.quotaNickName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleTags)) {
            query["saleTags"] = request.saleTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjects",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjects(_ request: ListProjectsRequest) async throws -> ListProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProjectsWithOptions(request as! ListProjectsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotasWithOptions(_ request: ListQuotasRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListQuotasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billingType)) {
            query["billingType"] = request.billingType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxItem)) {
            query["maxItem"] = request.maxItem!;
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            query["productId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleTags)) {
            query["saleTags"] = request.saleTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListQuotas",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListQuotasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotas(_ request: ListQuotasRequest) async throws -> ListQuotasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listQuotasWithOptions(request as! ListQuotasRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotasPlansWithOptions(_ nickname: String, _ request: ListQuotasPlansRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListQuotasPlansResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListQuotasPlans",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/plans",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListQuotasPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotasPlans(_ nickname: String, _ request: ListQuotasPlansRequest) async throws -> ListQuotasPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listQuotasPlansWithOptions(nickname as! String, request as! ListQuotasPlansRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourcesWithOptions(_ projectName: String, _ request: ListResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxItem)) {
            query["maxItem"] = request.maxItem!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["schemaName"] = request.schemaName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResources",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/resources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResources(_ projectName: String, _ request: ListResourcesRequest) async throws -> ListResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourcesWithOptions(projectName as! String, request as! ListResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRolesWithOptions(_ projectName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRolesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRoles",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/roles",
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
    public func listRoles(_ projectName: String) async throws -> ListRolesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRolesWithOptions(projectName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStoragePartitionsInfoWithOptions(_ project: String, _ table: String, _ tmpReq: ListStoragePartitionsInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStoragePartitionsInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListStoragePartitionsInfoShrinkRequest = ListStoragePartitionsInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.types)) {
            request.typesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.types, "types", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascOrder)) {
            query["ascOrder"] = request.ascOrder!;
        }
        if (!TeaUtils.Client.isUnset(request.date)) {
            query["date"] = request.date ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderColumn)) {
            query["orderColumn"] = request.orderColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.partitionPrefix)) {
            query["partitionPrefix"] = request.partitionPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schema)) {
            query["schema"] = request.schema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.typesShrink)) {
            query["types"] = request.typesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStoragePartitionsInfo",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/observations/analysis/storage/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(project)) + "/tables/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(table)) + "/partitionsInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStoragePartitionsInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStoragePartitionsInfo(_ project: String, _ table: String, _ request: ListStoragePartitionsInfoRequest) async throws -> ListStoragePartitionsInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listStoragePartitionsInfoWithOptions(project as! String, table as! String, request as! ListStoragePartitionsInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStorageProjectsInfoWithOptions(_ request: ListStorageProjectsInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStorageProjectsInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascOrder)) {
            query["ascOrder"] = request.ascOrder!;
        }
        if (!TeaUtils.Client.isUnset(request.date)) {
            query["date"] = request.date ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderColumn)) {
            query["orderColumn"] = request.orderColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.projectPrefix)) {
            query["projectPrefix"] = request.projectPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recentDays)) {
            query["recentDays"] = request.recentDays!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStorageProjectsInfo",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/observations/analysis/storage/projectsInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStorageProjectsInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStorageProjectsInfo(_ request: ListStorageProjectsInfoRequest) async throws -> ListStorageProjectsInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listStorageProjectsInfoWithOptions(request as! ListStorageProjectsInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStorageTablesInfoWithOptions(_ project: String, _ tmpReq: ListStorageTablesInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStorageTablesInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListStorageTablesInfoShrinkRequest = ListStorageTablesInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.types)) {
            request.typesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.types, "types", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascOrder)) {
            query["ascOrder"] = request.ascOrder!;
        }
        if (!TeaUtils.Client.isUnset(request.date)) {
            query["date"] = request.date ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderColumn)) {
            query["orderColumn"] = request.orderColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.recentDays)) {
            query["recentDays"] = request.recentDays!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schema)) {
            query["schema"] = request.schema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tablePrefix)) {
            query["tablePrefix"] = request.tablePrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.typesShrink)) {
            query["types"] = request.typesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStorageTablesInfo",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/observations/analysis/storage/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(project)) + "/tablesInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStorageTablesInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStorageTablesInfo(_ project: String, _ request: ListStorageTablesInfoRequest) async throws -> ListStorageTablesInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listStorageTablesInfoWithOptions(project as! String, request as! ListStorageTablesInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTablesWithOptions(_ projectName: String, _ request: ListTablesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxItem)) {
            query["maxItem"] = request.maxItem!;
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaName)) {
            query["schemaName"] = request.schemaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTables",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/tables",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTables(_ projectName: String, _ request: ListTablesRequest) async throws -> ListTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTablesWithOptions(projectName as! String, request as! ListTablesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTunnelQuotaTimerWithOptions(_ nickname: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTunnelQuotaTimerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTunnelQuotaTimer",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tunnel/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/timers",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTunnelQuotaTimerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTunnelQuotaTimer(_ nickname: String) async throws -> ListTunnelQuotaTimerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTunnelQuotaTimerWithOptions(nickname as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersWithOptions(_ request: ListUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUsers",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/users",
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
    public func listUsersByRoleWithOptions(_ projectName: String, _ roleName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUsersByRoleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUsersByRole",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/roles/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(roleName)) + "/users",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUsersByRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersByRole(_ projectName: String, _ roleName: String) async throws -> ListUsersByRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUsersByRoleWithOptions(projectName as! String, roleName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryQuotaWithOptions(_ nickname: String, _ request: QueryQuotaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.akProven)) {
            query["AkProven"] = request.akProven ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mock)) {
            query["mock"] = request.mock!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryQuota",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/query",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryQuota(_ nickname: String, _ request: QueryQuotaRequest) async throws -> QueryQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryQuotaWithOptions(nickname as! String, request as! QueryQuotaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryQuotaMetricWithOptions(_ metric: String, _ request: QueryQuotaMetricRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryQuotaMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.strategy)) {
            query["strategy"] = request.strategy ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.interval)) {
            body["interval"] = request.interval!;
        }
        if (!TeaUtils.Client.isUnset(request.nickname)) {
            body["nickname"] = request.nickname ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subQuotaNickname)) {
            body["subQuotaNickname"] = request.subQuotaNickname ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryQuotaMetric",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/observations/quota/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(metric)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryQuotaMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryQuotaMetric(_ metric: String, _ request: QueryQuotaMetricRequest) async throws -> QueryQuotaMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryQuotaMetricWithOptions(metric as! String, request as! QueryQuotaMetricRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryStorageMetricWithOptions(_ metric: String, _ request: QueryStorageMetricRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryStorageMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectList)) {
            body["projectList"] = request.projectList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.typeList)) {
            body["typeList"] = request.typeList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryStorageMetric",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/observations/storage/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(metric)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryStorageMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryStorageMetric(_ metric: String, _ request: QueryStorageMetricRequest) async throws -> QueryStorageMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryStorageMetricWithOptions(metric as! String, request as! QueryStorageMetricRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTunnelMetricWithOptions(_ metric: String, _ request: QueryTunnelMetricRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTunnelMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.strategy)) {
            query["strategy"] = request.strategy ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.codeList)) {
            body["codeList"] = request.codeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.groupList)) {
            body["groupList"] = request.groupList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.operationList)) {
            body["operationList"] = request.operationList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            body["project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaNickname)) {
            body["quotaNickname"] = request.quotaNickname ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableList)) {
            body["tableList"] = request.tableList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.topN)) {
            body["topN"] = request.topN!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTunnelMetric",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/observations/tunnel/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(metric)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTunnelMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTunnelMetric(_ metric: String, _ request: QueryTunnelMetricRequest) async throws -> QueryTunnelMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryTunnelMetricWithOptions(metric as! String, request as! QueryTunnelMetricRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTunnelMetricDetailWithOptions(_ metric: String, _ request: QueryTunnelMetricDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTunnelMetricDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ascOrder)) {
            body["ascOrder"] = request.ascOrder!;
        }
        if (!TeaUtils.Client.isUnset(request.groupList)) {
            body["groupList"] = request.groupList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.operationList)) {
            body["operationList"] = request.operationList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.orderColumn)) {
            body["orderColumn"] = request.orderColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            body["project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaNickname)) {
            body["quotaNickname"] = request.quotaNickname ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableList)) {
            body["tableList"] = request.tableList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTunnelMetricDetail",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/observations/tunnel/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(metric)) + "/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTunnelMetricDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTunnelMetricDetail(_ metric: String, _ request: QueryTunnelMetricDetailRequest) async throws -> QueryTunnelMetricDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryTunnelMetricDetailWithOptions(metric as! String, request as! QueryTunnelMetricDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryMmsJobWithOptions(_ sourceId: String, _ jobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RetryMmsJobResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RetryMmsJob",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)) + "/retry",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RetryMmsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retryMmsJob(_ sourceId: String, _ jobId: String) async throws -> RetryMmsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await retryMmsJobWithOptions(sourceId as! String, jobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startMmsJobWithOptions(_ sourceId: String, _ jobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartMmsJobResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartMmsJob",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)) + "/start",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartMmsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startMmsJob(_ sourceId: String, _ jobId: String) async throws -> StartMmsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startMmsJobWithOptions(sourceId as! String, jobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopMmsJobWithOptions(_ sourceId: String, _ jobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopMmsJobResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopMmsJob",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)) + "/stop",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopMmsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopMmsJob(_ sourceId: String, _ jobId: String) async throws -> StopMmsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopMmsJobWithOptions(sourceId as! String, jobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sumStorageMetricsByDateWithOptions(_ request: SumStorageMetricsByDateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SumStorageMetricsByDateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["endDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.projectNames)) {
            body["projectNames"] = request.projectNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["startDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.statsType)) {
            body["statsType"] = request.statsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SumStorageMetricsByDate",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/storageMetrics/sumByDate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SumStorageMetricsByDateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sumStorageMetricsByDate(_ request: SumStorageMetricsByDateRequest) async throws -> SumStorageMetricsByDateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await sumStorageMetricsByDateWithOptions(request as! SumStorageMetricsByDateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateComputeQuotaPlanWithOptions(_ nickname: String, _ request: UpdateComputeQuotaPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateComputeQuotaPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quota)) {
            body["quota"] = request.quota!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateComputeQuotaPlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/computeQuotaPlan",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateComputeQuotaPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateComputeQuotaPlan(_ nickname: String, _ request: UpdateComputeQuotaPlanRequest) async throws -> UpdateComputeQuotaPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateComputeQuotaPlanWithOptions(nickname as! String, request as! UpdateComputeQuotaPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateComputeQuotaScheduleWithOptions(_ nickname: String, _ request: UpdateComputeQuotaScheduleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateComputeQuotaScheduleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scheduleTimezone)) {
            query["scheduleTimezone"] = request.scheduleTimezone ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": TeaUtils.Client.toArray(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateComputeQuotaSchedule",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/computeQuotaSchedule",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateComputeQuotaScheduleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateComputeQuotaSchedule(_ nickname: String, _ request: UpdateComputeQuotaScheduleRequest) async throws -> UpdateComputeQuotaScheduleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateComputeQuotaScheduleWithOptions(nickname as! String, request as! UpdateComputeQuotaScheduleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateComputeSubQuotaWithOptions(_ nickname: String, _ request: UpdateComputeSubQuotaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateComputeSubQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.subQuotaInfoList)) {
            body["subQuotaInfoList"] = request.subQuotaInfoList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateComputeSubQuota",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/computeSubQuota",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateComputeSubQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateComputeSubQuota(_ nickname: String, _ request: UpdateComputeSubQuotaRequest) async throws -> UpdateComputeSubQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateComputeSubQuotaWithOptions(nickname as! String, request as! UpdateComputeSubQuotaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMmsDataSourceWithOptions(_ sourceId: String, _ request: UpdateMmsDataSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMmsDataSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.action)) {
            body["action"] = request.action ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.test)) {
            body["test"] = request.test!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMmsDataSource",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/mms/datasources/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sourceId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMmsDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMmsDataSource(_ sourceId: String, _ request: UpdateMmsDataSourceRequest) async throws -> UpdateMmsDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateMmsDataSourceWithOptions(sourceId as! String, request as! UpdateMmsDataSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePackageWithOptions(_ projectName: String, _ packageName: String, _ request: UpdatePackageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePackageResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePackage",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/packages/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(packageName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePackage(_ projectName: String, _ packageName: String, _ request: UpdatePackageRequest) async throws -> UpdatePackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePackageWithOptions(projectName as! String, packageName as! String, request as! UpdatePackageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectBasicMetaWithOptions(_ projectName: String, _ request: UpdateProjectBasicMetaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProjectBasicMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            body["comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.properties)) {
            body["properties"] = request.properties!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProjectBasicMeta",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/meta",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProjectBasicMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectBasicMeta(_ projectName: String, _ request: UpdateProjectBasicMetaRequest) async throws -> UpdateProjectBasicMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProjectBasicMetaWithOptions(projectName as! String, request as! UpdateProjectBasicMetaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectDefaultQuotaWithOptions(_ projectName: String, _ request: UpdateProjectDefaultQuotaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProjectDefaultQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.quota)) {
            body["quota"] = request.quota ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProjectDefaultQuota",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/quota",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProjectDefaultQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectDefaultQuota(_ projectName: String, _ request: UpdateProjectDefaultQuotaRequest) async throws -> UpdateProjectDefaultQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProjectDefaultQuotaWithOptions(projectName as! String, request as! UpdateProjectDefaultQuotaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectIpWhiteListWithOptions(_ projectName: String, _ request: UpdateProjectIpWhiteListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProjectIpWhiteListResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProjectIpWhiteList",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/ipWhiteList",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProjectIpWhiteListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectIpWhiteList(_ projectName: String, _ request: UpdateProjectIpWhiteListRequest) async throws -> UpdateProjectIpWhiteListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProjectIpWhiteListWithOptions(projectName as! String, request as! UpdateProjectIpWhiteListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQuotaPlanWithOptions(_ nickname: String, _ planName: String, _ request: UpdateQuotaPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateQuotaPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateQuotaPlan",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/plans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(planName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateQuotaPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQuotaPlan(_ nickname: String, _ planName: String, _ request: UpdateQuotaPlanRequest) async throws -> UpdateQuotaPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateQuotaPlanWithOptions(nickname as! String, planName as! String, request as! UpdateQuotaPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQuotaScheduleWithOptions(_ nickname: String, _ request: UpdateQuotaScheduleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateQuotaScheduleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateQuotaSchedule",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/quotas/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/schedule",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateQuotaScheduleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQuotaSchedule(_ nickname: String, _ request: UpdateQuotaScheduleRequest) async throws -> UpdateQuotaScheduleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateQuotaScheduleWithOptions(nickname as! String, request as! UpdateQuotaScheduleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTunnelQuotaTimerWithOptions(_ nickname: String, _ request: UpdateTunnelQuotaTimerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTunnelQuotaTimerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.timezone)) {
            query["timezone"] = request.timezone ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": TeaUtils.Client.toArray(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTunnelQuotaTimer",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tunnel/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(nickname)) + "/timers",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTunnelQuotaTimerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTunnelQuotaTimer(_ nickname: String, _ request: UpdateTunnelQuotaTimerRequest) async throws -> UpdateTunnelQuotaTimerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateTunnelQuotaTimerWithOptions(nickname as! String, request as! UpdateTunnelQuotaTimerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUsersToRoleWithOptions(_ projectName: String, _ roleName: String, _ request: UpdateUsersToRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUsersToRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.add)) {
            body["add"] = request.add ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.remove)) {
            body["remove"] = request.remove ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUsersToRole",
            "version": "2022-01-04",
            "protocol": "HTTPS",
            "pathname": "/api/v1/projects/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(projectName)) + "/roles/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(roleName)) + "/users",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUsersToRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUsersToRole(_ projectName: String, _ roleName: String, _ request: UpdateUsersToRoleRequest) async throws -> UpdateUsersToRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateUsersToRoleWithOptions(projectName as! String, roleName as! String, request as! UpdateUsersToRoleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
