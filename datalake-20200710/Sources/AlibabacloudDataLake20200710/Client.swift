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
            "ap-northeast-1": "datalake-daily.aliyuncs.com",
            "ap-northeast-2-pop": "datalake-daily.aliyuncs.com",
            "ap-south-1": "datalake-daily.aliyuncs.com",
            "ap-southeast-1": "datalake-daily.aliyuncs.com",
            "ap-southeast-2": "datalake-daily.aliyuncs.com",
            "ap-southeast-3": "datalake-daily.aliyuncs.com",
            "ap-southeast-5": "datalake-daily.aliyuncs.com",
            "cn-beijing": "dlf.cn-beijing.aliyuncs.com",
            "cn-beijing-finance-1": "datalake-daily.aliyuncs.com",
            "cn-beijing-finance-pop": "datalake-daily.aliyuncs.com",
            "cn-beijing-gov-1": "datalake-daily.aliyuncs.com",
            "cn-beijing-nu16-b01": "datalake-daily.aliyuncs.com",
            "cn-chengdu": "datalake-daily.aliyuncs.com",
            "cn-edge-1": "datalake-daily.aliyuncs.com",
            "cn-fujian": "datalake-daily.aliyuncs.com",
            "cn-haidian-cm12-c01": "datalake-daily.aliyuncs.com",
            "cn-hangzhou": "dlf.cn-hangzhou.aliyuncs.com",
            "cn-hangzhou-bj-b01": "datalake-daily.aliyuncs.com",
            "cn-hangzhou-finance": "datalake-daily.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "datalake-daily.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "datalake-daily.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "datalake-daily.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "datalake-daily.aliyuncs.com",
            "cn-hangzhou-test-306": "datalake-daily.aliyuncs.com",
            "cn-hongkong": "datalake-daily.aliyuncs.com",
            "cn-hongkong-finance-pop": "datalake-daily.aliyuncs.com",
            "cn-huhehaote": "datalake-daily.aliyuncs.com",
            "cn-huhehaote-nebula-1": "datalake-daily.aliyuncs.com",
            "cn-north-2-gov-1": "datalake-daily.aliyuncs.com",
            "cn-qingdao": "datalake-daily.aliyuncs.com",
            "cn-qingdao-nebula": "datalake-daily.aliyuncs.com",
            "cn-shanghai": "dlf.cn-shanghai.aliyuncs.com",
            "cn-shanghai-et15-b01": "datalake-daily.aliyuncs.com",
            "cn-shanghai-et2-b01": "datalake-daily.aliyuncs.com",
            "cn-shanghai-finance-1": "datalake-daily.aliyuncs.com",
            "cn-shanghai-inner": "datalake-daily.aliyuncs.com",
            "cn-shanghai-internal-test-1": "datalake-daily.aliyuncs.com",
            "cn-shenzhen": "dlf.cn-shenzhen.aliyuncs.com",
            "cn-shenzhen-finance-1": "datalake-daily.aliyuncs.com",
            "cn-shenzhen-inner": "datalake-daily.aliyuncs.com",
            "cn-shenzhen-st4-d01": "datalake-daily.aliyuncs.com",
            "cn-shenzhen-su18-b01": "datalake-daily.aliyuncs.com",
            "cn-wuhan": "datalake-daily.aliyuncs.com",
            "cn-wulanchabu": "datalake-daily.aliyuncs.com",
            "cn-yushanfang": "datalake-daily.aliyuncs.com",
            "cn-zhangbei": "datalake-daily.aliyuncs.com",
            "cn-zhangbei-na61-b01": "datalake-daily.aliyuncs.com",
            "cn-zhangjiakou": "datalake-daily.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "datalake-daily.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "datalake-daily.aliyuncs.com",
            "eu-central-1": "datalake-daily.aliyuncs.com",
            "eu-west-1": "datalake-daily.aliyuncs.com",
            "eu-west-1-oxs": "datalake-daily.aliyuncs.com",
            "me-east-1": "datalake-daily.aliyuncs.com",
            "rus-west-1-pop": "datalake-daily.aliyuncs.com",
            "us-east-1": "datalake-daily.aliyuncs.com",
            "us-west-1": "datalake-daily.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("datalake", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func abortLockWithOptions(_ request: AbortLockRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AbortLockResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lockId)) {
            query["LockId"] = request.lockId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AbortLock",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/locks/abort",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AbortLockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func abortLock(_ request: AbortLockRequest) async throws -> AbortLockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await abortLockWithOptions(request as! AbortLockRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchCreatePartitionsWithOptions(_ request: BatchCreatePartitionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchCreatePartitionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ifNotExists)) {
            body["IfNotExists"] = request.ifNotExists!;
        }
        if (!TeaUtils.Client.isUnset(request.needResult)) {
            body["NeedResult"] = request.needResult!;
        }
        if (!TeaUtils.Client.isUnset(request.partitionInputs)) {
            body["PartitionInputs"] = request.partitionInputs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchCreatePartitions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/batchcreate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchCreatePartitionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchCreatePartitions(_ request: BatchCreatePartitionsRequest) async throws -> BatchCreatePartitionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchCreatePartitionsWithOptions(request as! BatchCreatePartitionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchCreateTablesWithOptions(_ request: BatchCreateTablesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchCreateTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ifNotExists)) {
            body["IfNotExists"] = request.ifNotExists!;
        }
        if (!TeaUtils.Client.isUnset(request.tableInputs)) {
            body["TableInputs"] = request.tableInputs ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchCreateTables",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/batchcreate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchCreateTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchCreateTables(_ request: BatchCreateTablesRequest) async throws -> BatchCreateTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchCreateTablesWithOptions(request as! BatchCreateTablesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchDeletePartitionsWithOptions(_ request: BatchDeletePartitionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchDeletePartitionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ifExists)) {
            body["IfExists"] = request.ifExists!;
        }
        if (!TeaUtils.Client.isUnset(request.partitionValueList)) {
            body["PartitionValueList"] = request.partitionValueList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchDeletePartitions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/batchdelete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchDeletePartitionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchDeletePartitions(_ request: BatchDeletePartitionsRequest) async throws -> BatchDeletePartitionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchDeletePartitionsWithOptions(request as! BatchDeletePartitionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchDeleteTableVersionsWithOptions(_ request: BatchDeleteTableVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchDeleteTableVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionIds)) {
            body["VersionIds"] = request.versionIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchDeleteTableVersions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/versions/batchdelete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchDeleteTableVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchDeleteTableVersions(_ request: BatchDeleteTableVersionsRequest) async throws -> BatchDeleteTableVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchDeleteTableVersionsWithOptions(request as! BatchDeleteTableVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchDeleteTablesWithOptions(_ request: BatchDeleteTablesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchDeleteTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ifExists)) {
            body["IfExists"] = request.ifExists!;
        }
        if (!TeaUtils.Client.isUnset(request.tableNames)) {
            body["TableNames"] = request.tableNames ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchDeleteTables",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/batchdelete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchDeleteTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchDeleteTables(_ request: BatchDeleteTablesRequest) async throws -> BatchDeleteTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchDeleteTablesWithOptions(request as! BatchDeleteTablesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetPartitionColumnStatisticsWithOptions(_ request: BatchGetPartitionColumnStatisticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchGetPartitionColumnStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.columnNames)) {
            body["ColumnNames"] = request.columnNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partitionNames)) {
            body["PartitionNames"] = request.partitionNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchGetPartitionColumnStatistics",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/columnstatistics/batchget",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchGetPartitionColumnStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetPartitionColumnStatistics(_ request: BatchGetPartitionColumnStatisticsRequest) async throws -> BatchGetPartitionColumnStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchGetPartitionColumnStatisticsWithOptions(request as! BatchGetPartitionColumnStatisticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetPartitionsWithOptions(_ request: BatchGetPartitionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchGetPartitionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isShareSd)) {
            body["IsShareSd"] = request.isShareSd!;
        }
        if (!TeaUtils.Client.isUnset(request.partitionValueList)) {
            body["PartitionValueList"] = request.partitionValueList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchGetPartitions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/batchget",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchGetPartitionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetPartitions(_ request: BatchGetPartitionsRequest) async throws -> BatchGetPartitionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchGetPartitionsWithOptions(request as! BatchGetPartitionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetTablesWithOptions(_ request: BatchGetTablesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchGetTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableNames)) {
            body["TableNames"] = request.tableNames ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchGetTables",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/batchget",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchGetTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetTables(_ request: BatchGetTablesRequest) async throws -> BatchGetTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchGetTablesWithOptions(request as! BatchGetTablesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGrantPermissionsWithOptions(_ request: BatchGrantPermissionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchGrantPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantRevokeEntries)) {
            body["GrantRevokeEntries"] = request.grantRevokeEntries ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchGrantPermissions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/permissions/batchgrant",
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
    public func batchGrantPermissions(_ request: BatchGrantPermissionsRequest) async throws -> BatchGrantPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchGrantPermissionsWithOptions(request as! BatchGrantPermissionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchRevokePermissionsWithOptions(_ request: BatchRevokePermissionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchRevokePermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantRevokeEntries)) {
            body["GrantRevokeEntries"] = request.grantRevokeEntries ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchRevokePermissions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/permissions/batchrevoke",
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
    public func batchRevokePermissions(_ request: BatchRevokePermissionsRequest) async throws -> BatchRevokePermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchRevokePermissionsWithOptions(request as! BatchRevokePermissionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUpdatePartitionsWithOptions(_ request: BatchUpdatePartitionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchUpdatePartitionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partitionInputs)) {
            body["PartitionInputs"] = request.partitionInputs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchUpdatePartitions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/batchupdate",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchUpdatePartitionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUpdatePartitions(_ request: BatchUpdatePartitionsRequest) async throws -> BatchUpdatePartitionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchUpdatePartitionsWithOptions(request as! BatchUpdatePartitionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUpdateTablesWithOptions(_ request: BatchUpdateTablesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchUpdateTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAsync)) {
            body["IsAsync"] = request.isAsync!;
        }
        if (!TeaUtils.Client.isUnset(request.tableInputs)) {
            body["TableInputs"] = request.tableInputs ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchUpdateTables",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/batchupdate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchUpdateTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUpdateTables(_ request: BatchUpdateTablesRequest) async throws -> BatchUpdateTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchUpdateTablesWithOptions(request as! BatchUpdateTablesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelQueryWithOptions(_ request: CancelQueryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.queryId)) {
            query["QueryId"] = request.queryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelQuery",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/query/cancelQuery",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelQuery(_ request: CancelQueryRequest) async throws -> CancelQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelQueryWithOptions(request as! CancelQueryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkPermissionsWithOptions(_ request: CheckPermissionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckPermissions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/permissions/check",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkPermissions(_ request: CheckPermissionsRequest) async throws -> CheckPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await checkPermissionsWithOptions(request as! CheckPermissionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCatalogWithOptions(_ request: CreateCatalogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCatalogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogInput)) {
            body["CatalogInput"] = request.catalogInput!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCatalog",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
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
    public func createDatabaseWithOptions(_ request: CreateDatabaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseInput)) {
            body["DatabaseInput"] = request.databaseInput!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDatabase",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatabase(_ request: CreateDatabaseRequest) async throws -> CreateDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDatabaseWithOptions(request as! CreateDatabaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFunctionWithOptions(_ request: CreateFunctionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFunctionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.functionInput)) {
            body["FunctionInput"] = request.functionInput!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFunction",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/functions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFunctionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFunction(_ request: CreateFunctionRequest) async throws -> CreateFunctionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createFunctionWithOptions(request as! CreateFunctionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLockWithOptions(_ request: CreateLockRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLockResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lockObjList)) {
            body["LockObjList"] = request.lockObjList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLock",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/locks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLock(_ request: CreateLockRequest) async throws -> CreateLockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createLockWithOptions(request as! CreateLockRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPartitionWithOptions(_ request: CreatePartitionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePartitionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ifNotExists)) {
            body["IfNotExists"] = request.ifNotExists!;
        }
        if (!TeaUtils.Client.isUnset(request.needResult)) {
            body["NeedResult"] = request.needResult!;
        }
        if (!TeaUtils.Client.isUnset(request.partitionInput)) {
            body["PartitionInput"] = request.partitionInput!;
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePartition",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePartitionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPartition(_ request: CreatePartitionRequest) async throws -> CreatePartitionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPartitionWithOptions(request as! CreatePartitionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRoleWithOptions(_ request: CreateRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRole",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/roles",
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
    public func createRole(_ request: CreateRoleRequest) async throws -> CreateRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRoleWithOptions(request as! CreateRoleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTableWithOptions(_ request: CreateTableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTableResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableInput)) {
            body["TableInput"] = request.tableInput!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTable",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTable(_ request: CreateTableRequest) async throws -> CreateTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTableWithOptions(request as! CreateTableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCatalogWithOptions(_ request: DeleteCatalogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCatalogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAsync)) {
            query["IsAsync"] = request.isAsync!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCatalog",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCatalogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCatalog(_ request: DeleteCatalogRequest) async throws -> DeleteCatalogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteCatalogWithOptions(request as! DeleteCatalogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatabaseWithOptions(_ request: DeleteDatabaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.async)) {
            query["Async"] = request.async!;
        }
        if (!TeaUtils.Client.isUnset(request.cascade)) {
            query["Cascade"] = request.cascade!;
        }
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDatabase",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatabase(_ request: DeleteDatabaseRequest) async throws -> DeleteDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDatabaseWithOptions(request as! DeleteDatabaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFunctionWithOptions(_ request: DeleteFunctionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFunctionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.functionName)) {
            query["FunctionName"] = request.functionName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFunction",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/functions",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFunctionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFunction(_ request: DeleteFunctionRequest) async throws -> DeleteFunctionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteFunctionWithOptions(request as! DeleteFunctionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePartitionWithOptions(_ request: DeletePartitionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePartitionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ifExists)) {
            body["IfExists"] = request.ifExists!;
        }
        if (!TeaUtils.Client.isUnset(request.partitionValues)) {
            body["PartitionValues"] = request.partitionValues ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePartition",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePartitionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePartition(_ request: DeletePartitionRequest) async throws -> DeletePartitionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deletePartitionWithOptions(request as! DeletePartitionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePartitionColumnStatisticsWithOptions(_ tmpReq: DeletePartitionColumnStatisticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePartitionColumnStatisticsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeletePartitionColumnStatisticsShrinkRequest = DeletePartitionColumnStatisticsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.columnNames)) {
            request.columnNamesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.columnNames, "ColumnNames", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.partitionNames)) {
            request.partitionNamesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.partitionNames, "PartitionNames", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.columnNamesShrink)) {
            query["ColumnNames"] = request.columnNamesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partitionNamesShrink)) {
            query["PartitionNames"] = request.partitionNamesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePartitionColumnStatistics",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/columnstatistics",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePartitionColumnStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePartitionColumnStatistics(_ request: DeletePartitionColumnStatisticsRequest) async throws -> DeletePartitionColumnStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deletePartitionColumnStatisticsWithOptions(request as! DeletePartitionColumnStatisticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRoleWithOptions(_ request: DeleteRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            query["RoleName"] = request.roleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRole",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/roles",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
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
    public func deleteTableWithOptions(_ request: DeleteTableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTable",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTable(_ request: DeleteTableRequest) async throws -> DeleteTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteTableWithOptions(request as! DeleteTableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTableColumnStatisticsWithOptions(_ tmpReq: DeleteTableColumnStatisticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTableColumnStatisticsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteTableColumnStatisticsShrinkRequest = DeleteTableColumnStatisticsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.columnNames)) {
            request.columnNamesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.columnNames, "ColumnNames", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.columnNamesShrink)) {
            query["ColumnNames"] = request.columnNamesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTableColumnStatistics",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/columnstatistics",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTableColumnStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTableColumnStatistics(_ request: DeleteTableColumnStatisticsRequest) async throws -> DeleteTableColumnStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteTableColumnStatisticsWithOptions(request as! DeleteTableColumnStatisticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTableVersionWithOptions(_ request: DeleteTableVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTableVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTableVersion",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/versions",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTableVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTableVersion(_ request: DeleteTableVersionRequest) async throws -> DeleteTableVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteTableVersionWithOptions(request as! DeleteTableVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deregisterLocationWithOptions(_ request: DeregisterLocationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeregisterLocationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.locationId)) {
            query["LocationId"] = request.locationId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeregisterLocation",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/locations",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeregisterLocationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deregisterLocation(_ request: DeregisterLocationRequest) async throws -> DeregisterLocationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deregisterLocationWithOptions(request as! DeregisterLocationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/service/describeRegions",
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
    public func getAsyncTaskStatusWithOptions(_ request: GetAsyncTaskStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAsyncTaskStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAsyncTaskStatus",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/tasks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAsyncTaskStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAsyncTaskStatus(_ request: GetAsyncTaskStatusRequest) async throws -> GetAsyncTaskStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAsyncTaskStatusWithOptions(request as! GetAsyncTaskStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalogWithOptions(_ request: GetCatalogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCatalogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCatalog",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs",
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
    public func getCatalog(_ request: GetCatalogRequest) async throws -> GetCatalogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCatalogWithOptions(request as! GetCatalogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalogSettingsWithOptions(_ request: GetCatalogSettingsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCatalogSettingsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCatalogSettings",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/settings",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCatalogSettingsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalogSettings(_ request: GetCatalogSettingsRequest) async throws -> GetCatalogSettingsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCatalogSettingsWithOptions(request as! GetCatalogSettingsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabaseWithOptions(_ request: GetDatabaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDatabase",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabase(_ request: GetDatabaseRequest) async throws -> GetDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDatabaseWithOptions(request as! GetDatabaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabaseProfileWithOptions(_ request: GetDatabaseProfileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatabaseProfileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDatabaseProfile",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/metastorehouse/catalog/database/databaseprofile",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatabaseProfileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabaseProfile(_ request: GetDatabaseProfileRequest) async throws -> GetDatabaseProfileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDatabaseProfileWithOptions(request as! GetDatabaseProfileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionWithOptions(_ request: GetFunctionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFunctionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.functionName)) {
            query["FunctionName"] = request.functionName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFunction",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/functions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFunctionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunction(_ request: GetFunctionRequest) async throws -> GetFunctionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFunctionWithOptions(request as! GetFunctionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLifecycleRuleWithOptions(_ request: GetLifecycleRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLifecycleRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceName)) {
            query["ResourceName"] = request.resourceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLifecycleRule",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/metastorehouse/lifecycle/rule/getLifecycleRule",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLifecycleRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLifecycleRule(_ request: GetLifecycleRuleRequest) async throws -> GetLifecycleRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLifecycleRuleWithOptions(request as! GetLifecycleRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLockWithOptions(_ request: GetLockRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLockResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lockId)) {
            query["LockId"] = request.lockId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLock",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/locks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLock(_ request: GetLockRequest) async throws -> GetLockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLockWithOptions(request as! GetLockRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPartitionWithOptions(_ request: GetPartitionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPartitionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partitionValues)) {
            body["PartitionValues"] = request.partitionValues ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPartition",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/get",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPartitionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPartition(_ request: GetPartitionRequest) async throws -> GetPartitionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPartitionWithOptions(request as! GetPartitionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPartitionColumnStatisticsWithOptions(_ tmpReq: GetPartitionColumnStatisticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPartitionColumnStatisticsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetPartitionColumnStatisticsShrinkRequest = GetPartitionColumnStatisticsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.columnNames)) {
            request.columnNamesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.columnNames, "ColumnNames", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.partitionNames)) {
            request.partitionNamesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.partitionNames, "PartitionNames", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.columnNamesShrink)) {
            query["ColumnNames"] = request.columnNamesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partitionNamesShrink)) {
            query["PartitionNames"] = request.partitionNamesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPartitionColumnStatistics",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/columnstatistics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPartitionColumnStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPartitionColumnStatistics(_ request: GetPartitionColumnStatisticsRequest) async throws -> GetPartitionColumnStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPartitionColumnStatisticsWithOptions(request as! GetPartitionColumnStatisticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQueryResultWithOptions(_ request: GetQueryResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQueryResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryId)) {
            query["QueryId"] = request.queryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQueryResult",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/query/getQueryResult",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQueryResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQueryResult(_ request: GetQueryResultRequest) async throws -> GetQueryResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQueryResultWithOptions(request as! GetQueryResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRegionStatusWithOptions(_ request: GetRegionStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRegionStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRegionStatus",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/service/getRegionStatus",
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
    public func getRegionStatus(_ request: GetRegionStatusRequest) async throws -> GetRegionStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRegionStatusWithOptions(request as! GetRegionStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRoleWithOptions(_ request: GetRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            query["RoleName"] = request.roleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRole",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/roles",
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
    public func getServiceStatusWithOptions(_ request: GetServiceStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceStatus",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/service/getServiceStatus",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceStatus(_ request: GetServiceStatusRequest) async throws -> GetServiceStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceStatusWithOptions(request as! GetServiceStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableWithOptions(_ request: GetTableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTable",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTable(_ request: GetTableRequest) async throws -> GetTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTableWithOptions(request as! GetTableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableColumnStatisticsWithOptions(_ tmpReq: GetTableColumnStatisticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableColumnStatisticsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetTableColumnStatisticsShrinkRequest = GetTableColumnStatisticsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.columnNames)) {
            request.columnNamesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.columnNames, "ColumnNames", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.columnNamesShrink)) {
            query["ColumnNames"] = request.columnNamesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableColumnStatistics",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/columnstatistics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableColumnStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableColumnStatistics(_ request: GetTableColumnStatisticsRequest) async throws -> GetTableColumnStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTableColumnStatisticsWithOptions(request as! GetTableColumnStatisticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableProfileWithOptions(_ request: GetTableProfileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableProfileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableProfile",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/metastorehouse/catalog/database/tableprofile",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableProfileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableProfile(_ request: GetTableProfileRequest) async throws -> GetTableProfileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTableProfileWithOptions(request as! GetTableProfileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableVersionWithOptions(_ request: GetTableVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            query["VersionId"] = request.versionId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableVersion",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableVersion(_ request: GetTableVersionRequest) async throws -> GetTableVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTableVersionWithOptions(request as! GetTableVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantPermissionsWithOptions(_ request: GrantPermissionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accesses)) {
            body["Accesses"] = request.accesses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delegateAccesses)) {
            body["DelegateAccesses"] = request.delegateAccesses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.metaResource)) {
            body["MetaResource"] = request.metaResource!;
        }
        if (!TeaUtils.Client.isUnset(request.principal)) {
            body["Principal"] = request.principal!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantPermissions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/permissions/grant",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantPermissions(_ request: GrantPermissionsRequest) async throws -> GrantPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await grantPermissionsWithOptions(request as! GrantPermissionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantRoleToUsersWithOptions(_ request: GrantRoleToUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantRoleToUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            body["RoleName"] = request.roleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.users)) {
            body["Users"] = request.users ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantRoleToUsers",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/roles/grantusers",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
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
    public func grantRolesToUserWithOptions(_ request: GrantRolesToUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantRolesToUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleNames)) {
            body["RoleNames"] = request.roleNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.user)) {
            body["User"] = request.user!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantRolesToUser",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/roles/grantroles",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantRolesToUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantRolesToUser(_ request: GrantRolesToUserRequest) async throws -> GrantRolesToUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await grantRolesToUserWithOptions(request as! GrantRolesToUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCatalogsWithOptions(_ request: ListCatalogsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCatalogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.idPattern)) {
            query["IdPattern"] = request.idPattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextPageToken)) {
            query["NextPageToken"] = request.nextPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCatalogs",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/list",
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
    public func listDatabasesWithOptions(_ request: ListDatabasesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatabasesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namePattern)) {
            query["NamePattern"] = request.namePattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextPageToken)) {
            query["NextPageToken"] = request.nextPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatabases",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatabasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatabases(_ request: ListDatabasesRequest) async throws -> ListDatabasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDatabasesWithOptions(request as! ListDatabasesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctionNamesWithOptions(_ request: ListFunctionNamesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFunctionNamesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.functionNamePattern)) {
            query["FunctionNamePattern"] = request.functionNamePattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextPageToken)) {
            query["NextPageToken"] = request.nextPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFunctionNames",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/functions/names",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFunctionNamesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctionNames(_ request: ListFunctionNamesRequest) async throws -> ListFunctionNamesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFunctionNamesWithOptions(request as! ListFunctionNamesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctionsWithOptions(_ request: ListFunctionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFunctionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.functionNamePattern)) {
            query["FunctionNamePattern"] = request.functionNamePattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextPageToken)) {
            query["NextPageToken"] = request.nextPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFunctions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/functions/list",
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
    public func listFunctions(_ request: ListFunctionsRequest) async throws -> ListFunctionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFunctionsWithOptions(request as! ListFunctionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPartitionNamesWithOptions(_ request: ListPartitionNamesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPartitionNamesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextPageToken)) {
            body["NextPageToken"] = request.nextPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.partialPartValues)) {
            body["PartialPartValues"] = request.partialPartValues ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPartitionNames",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/names",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPartitionNamesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPartitionNames(_ request: ListPartitionNamesRequest) async throws -> ListPartitionNamesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPartitionNamesWithOptions(request as! ListPartitionNamesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPartitionsWithOptions(_ request: ListPartitionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPartitionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isShareSd)) {
            body["IsShareSd"] = request.isShareSd!;
        }
        if (!TeaUtils.Client.isUnset(request.nextPageToken)) {
            body["NextPageToken"] = request.nextPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.partialPartValues)) {
            body["PartialPartValues"] = request.partialPartValues ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPartitions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPartitionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPartitions(_ request: ListPartitionsRequest) async throws -> ListPartitionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPartitionsWithOptions(request as! ListPartitionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPartitionsByExprWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPartitionsByExprResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPartitionsByExpr",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/listbyexpr",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "none"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPartitionsByExprResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPartitionsByExpr() async throws -> ListPartitionsByExprResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPartitionsByExprWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPartitionsByFilterWithOptions(_ request: ListPartitionsByFilterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPartitionsByFilterResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            body["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isShareSd)) {
            body["IsShareSd"] = request.isShareSd!;
        }
        if (!TeaUtils.Client.isUnset(request.nextPageToken)) {
            body["NextPageToken"] = request.nextPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPartitionsByFilter",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/listbyfilter",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPartitionsByFilterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPartitionsByFilter(_ request: ListPartitionsByFilterRequest) async throws -> ListPartitionsByFilterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPartitionsByFilterWithOptions(request as! ListPartitionsByFilterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPartitionsProfileWithOptions(_ tmpReq: ListPartitionsProfileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPartitionsProfileResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListPartitionsProfileShrinkRequest = ListPartitionsProfileShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.partitionNames)) {
            request.partitionNamesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.partitionNames, "PartitionNames", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.partitionNamesShrink)) {
            query["PartitionNames"] = request.partitionNamesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPartitionsProfile",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/metastorehouse/catalog/database/tableprofile/partitionprofile/listPartitionsProfile",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPartitionsProfileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPartitionsProfile(_ request: ListPartitionsProfileRequest) async throws -> ListPartitionsProfileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPartitionsProfileWithOptions(request as! ListPartitionsProfileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPermissionsWithOptions(_ request: ListPermissionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isListUserRolePermissions)) {
            body["IsListUserRolePermissions"] = request.isListUserRolePermissions!;
        }
        if (!TeaUtils.Client.isUnset(request.metaResource)) {
            body["MetaResource"] = request.metaResource!;
        }
        if (!TeaUtils.Client.isUnset(request.metaResourceType)) {
            body["MetaResourceType"] = request.metaResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextPageToken)) {
            body["NextPageToken"] = request.nextPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.principal)) {
            body["Principal"] = request.principal!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPermissions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/permissions/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPermissions(_ request: ListPermissionsRequest) async throws -> ListPermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPermissionsWithOptions(request as! ListPermissionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRoleUsersWithOptions(_ request: ListRoleUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRoleUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextPageToken)) {
            query["NextPageToken"] = request.nextPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            query["RoleName"] = request.roleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userNamePattern)) {
            query["UserNamePattern"] = request.userNamePattern ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRoleUsers",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/roles/roleusers",
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
        if (!TeaUtils.Client.isUnset(request.nextPageToken)) {
            query["NextPageToken"] = request.nextPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.roleNamePattern)) {
            query["RoleNamePattern"] = request.roleNamePattern ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRoles",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/roles/list",
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
    public func listTableNamesWithOptions(_ request: ListTableNamesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTableNamesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextPageToken)) {
            query["NextPageToken"] = request.nextPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tableNamePattern)) {
            query["TableNamePattern"] = request.tableNamePattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableType)) {
            query["TableType"] = request.tableType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTableNames",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/names",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTableNamesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTableNames(_ request: ListTableNamesRequest) async throws -> ListTableNamesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTableNamesWithOptions(request as! ListTableNamesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTableVersionsWithOptions(_ request: ListTableVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTableVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextPageToken)) {
            query["NextPageToken"] = request.nextPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTableVersions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/versions/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTableVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTableVersions(_ request: ListTableVersionsRequest) async throws -> ListTableVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTableVersionsWithOptions(request as! ListTableVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTablesWithOptions(_ request: ListTablesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextPageToken)) {
            query["NextPageToken"] = request.nextPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tableNamePattern)) {
            query["TableNamePattern"] = request.tableNamePattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableType)) {
            query["TableType"] = request.tableType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTables",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/databases/tables/list",
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
    public func listTables(_ request: ListTablesRequest) async throws -> ListTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTablesWithOptions(request as! ListTablesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserRolesWithOptions(_ request: ListUserRolesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserRolesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextPageToken)) {
            query["NextPageToken"] = request.nextPageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.principalArn)) {
            query["PrincipalArn"] = request.principalArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleNamePattern)) {
            query["RoleNamePattern"] = request.roleNamePattern ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserRoles",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/roles/userroles",
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
    public func refreshLockWithOptions(_ request: RefreshLockRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RefreshLockResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lockId)) {
            query["LockId"] = request.lockId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefreshLock",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/locks",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefreshLockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshLock(_ request: RefreshLockRequest) async throws -> RefreshLockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await refreshLockWithOptions(request as! RefreshLockRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerLocationWithOptions(_ request: RegisterLocationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterLocationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.inventoryCollectEnabled)) {
            body["InventoryCollectEnabled"] = request.inventoryCollectEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.location)) {
            body["Location"] = request.location ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossLogCollectEnabled)) {
            body["OssLogCollectEnabled"] = request.ossLogCollectEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            body["RoleName"] = request.roleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterLocation",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/locations",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterLocationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerLocation(_ request: RegisterLocationRequest) async throws -> RegisterLocationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await registerLocationWithOptions(request as! RegisterLocationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renamePartitionWithOptions(_ request: RenamePartitionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RenamePartitionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partitionInput)) {
            body["PartitionInput"] = request.partitionInput!;
        }
        if (!TeaUtils.Client.isUnset(request.partitionValues)) {
            body["PartitionValues"] = request.partitionValues ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenamePartition",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/rename",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenamePartitionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renamePartition(_ request: RenamePartitionRequest) async throws -> RenamePartitionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await renamePartitionWithOptions(request as! RenamePartitionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renameTableWithOptions(_ request: RenameTableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RenameTableResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAsync)) {
            body["IsAsync"] = request.isAsync!;
        }
        if (!TeaUtils.Client.isUnset(request.tableInput)) {
            body["TableInput"] = request.tableInput!;
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenameTable",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/rename",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenameTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renameTable(_ request: RenameTableRequest) async throws -> RenameTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await renameTableWithOptions(request as! RenameTableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokePermissionsWithOptions(_ request: RevokePermissionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokePermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accesses)) {
            body["Accesses"] = request.accesses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delegateAccesses)) {
            body["DelegateAccesses"] = request.delegateAccesses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.metaResource)) {
            body["MetaResource"] = request.metaResource!;
        }
        if (!TeaUtils.Client.isUnset(request.principal)) {
            body["Principal"] = request.principal!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokePermissions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/permissions/revoke",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokePermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokePermissions(_ request: RevokePermissionsRequest) async throws -> RevokePermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await revokePermissionsWithOptions(request as! RevokePermissionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeRoleFromUsersWithOptions(_ request: RevokeRoleFromUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeRoleFromUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            body["RoleName"] = request.roleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.users)) {
            body["Users"] = request.users ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeRoleFromUsers",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/roles/revokeusers",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
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
    public func revokeRolesFromUserWithOptions(_ request: RevokeRolesFromUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeRolesFromUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleNames)) {
            body["RoleNames"] = request.roleNames ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.user)) {
            body["User"] = request.user!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeRolesFromUser",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/roles/revokeroles",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeRolesFromUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeRolesFromUser(_ request: RevokeRolesFromUserRequest) async throws -> RevokeRolesFromUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await revokeRolesFromUserWithOptions(request as! RevokeRolesFromUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runMigrationWorkflowWithOptions(_ request: RunMigrationWorkflowRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RunMigrationWorkflowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunMigrationWorkflow",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/migration/workflow/run",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunMigrationWorkflowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runMigrationWorkflow(_ request: RunMigrationWorkflowRequest) async throws -> RunMigrationWorkflowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await runMigrationWorkflowWithOptions(request as! RunMigrationWorkflowRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchWithOptions(_ request: SearchRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchText)) {
            body["SearchText"] = request.searchText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchType)) {
            body["SearchType"] = request.searchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortCriteria)) {
            body["SortCriteria"] = request.sortCriteria ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Search",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/search",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func search(_ request: SearchRequest) async throws -> SearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await searchWithOptions(request as! SearchRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchAcrossCatalogWithOptions(_ request: SearchAcrossCatalogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchAcrossCatalogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogIds)) {
            body["CatalogIds"] = request.catalogIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.searchText)) {
            body["SearchText"] = request.searchText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchTypes)) {
            body["SearchTypes"] = request.searchTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sortCriteria)) {
            body["SortCriteria"] = request.sortCriteria ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchAcrossCatalog",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/search/search-across-catalog",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchAcrossCatalogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchAcrossCatalog(_ request: SearchAcrossCatalogRequest) async throws -> SearchAcrossCatalogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await searchAcrossCatalogWithOptions(request as! SearchAcrossCatalogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopMigrationWorkflowWithOptions(_ request: StopMigrationWorkflowRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopMigrationWorkflowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopMigrationWorkflow",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/migration/workflow/stop",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopMigrationWorkflowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopMigrationWorkflow(_ request: StopMigrationWorkflowRequest) async throws -> StopMigrationWorkflowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopMigrationWorkflowWithOptions(request as! StopMigrationWorkflowRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitQueryWithOptions(_ request: SubmitQueryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["catalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sql)) {
            body["sql"] = request.sql ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitQuery",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/query/submitQueryRequestBody",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitQuery(_ request: SubmitQueryRequest) async throws -> SubmitQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitQueryWithOptions(request as! SubmitQueryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unLockWithOptions(_ request: UnLockRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UnLockResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lockId)) {
            query["LockId"] = request.lockId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnLock",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/locks",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnLockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unLock(_ request: UnLockRequest) async throws -> UnLockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await unLockWithOptions(request as! UnLockRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCatalogWithOptions(_ request: UpdateCatalogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCatalogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogInput)) {
            body["CatalogInput"] = request.catalogInput!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCatalog",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCatalogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCatalog(_ request: UpdateCatalogRequest) async throws -> UpdateCatalogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateCatalogWithOptions(request as! UpdateCatalogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCatalogSettingsWithOptions(_ request: UpdateCatalogSettingsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCatalogSettingsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.catalogSettings)) {
            body["CatalogSettings"] = request.catalogSettings!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCatalogSettings",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/settings",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCatalogSettingsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCatalogSettings(_ request: UpdateCatalogSettingsRequest) async throws -> UpdateCatalogSettingsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateCatalogSettingsWithOptions(request as! UpdateCatalogSettingsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDatabaseWithOptions(_ request: UpdateDatabaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDatabaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseInput)) {
            body["DatabaseInput"] = request.databaseInput!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDatabase",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDatabaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDatabase(_ request: UpdateDatabaseRequest) async throws -> UpdateDatabaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDatabaseWithOptions(request as! UpdateDatabaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFunctionWithOptions(_ request: UpdateFunctionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFunctionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.functionInput)) {
            body["FunctionInput"] = request.functionInput!;
        }
        if (!TeaUtils.Client.isUnset(request.functionName)) {
            body["FunctionName"] = request.functionName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFunction",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/functions",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFunctionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFunction(_ request: UpdateFunctionRequest) async throws -> UpdateFunctionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateFunctionWithOptions(request as! UpdateFunctionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePartitionColumnStatisticsWithOptions(_ request: UpdatePartitionColumnStatisticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePartitionColumnStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.updateTablePartitionColumnStatisticsRequest)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePartitionColumnStatistics",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/partitions/columnstatistics",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePartitionColumnStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePartitionColumnStatistics(_ request: UpdatePartitionColumnStatisticsRequest) async throws -> UpdatePartitionColumnStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePartitionColumnStatisticsWithOptions(request as! UpdatePartitionColumnStatisticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePermissionsWithOptions(_ request: UpdatePermissionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accesses)) {
            body["Accesses"] = request.accesses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delegateAccesses)) {
            body["DelegateAccesses"] = request.delegateAccesses ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.metaResource)) {
            body["MetaResource"] = request.metaResource!;
        }
        if (!TeaUtils.Client.isUnset(request.principal)) {
            body["Principal"] = request.principal!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePermissions",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/permissions/",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePermissions(_ request: UpdatePermissionsRequest) async throws -> UpdatePermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updatePermissionsWithOptions(request as! UpdatePermissionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRegisteredLocationWithOptions(_ request: UpdateRegisteredLocationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRegisteredLocationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.inventoryCollectEnabled)) {
            body["InventoryCollectEnabled"] = request.inventoryCollectEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.locationId)) {
            body["LocationId"] = request.locationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossLogCollectEnabled)) {
            body["OssLogCollectEnabled"] = request.ossLogCollectEnabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRegisteredLocation",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/webapi/locations",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRegisteredLocationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRegisteredLocation(_ request: UpdateRegisteredLocationRequest) async throws -> UpdateRegisteredLocationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRegisteredLocationWithOptions(request as! UpdateRegisteredLocationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRoleWithOptions(_ request: UpdateRoleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleInput)) {
            body["RoleInput"] = request.roleInput!;
        }
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            body["RoleName"] = request.roleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRole",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/roles",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
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
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            body["RoleName"] = request.roleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.users)) {
            body["Users"] = request.users ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRoleUsers",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/auth/updateroleusers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
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

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTableWithOptions(_ request: UpdateTableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTableResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowPartitionKeyChange)) {
            body["AllowPartitionKeyChange"] = request.allowPartitionKeyChange!;
        }
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            body["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            body["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAsync)) {
            body["IsAsync"] = request.isAsync!;
        }
        if (!TeaUtils.Client.isUnset(request.skipArchive)) {
            body["SkipArchive"] = request.skipArchive!;
        }
        if (!TeaUtils.Client.isUnset(request.tableInput)) {
            body["TableInput"] = request.tableInput!;
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTable",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTable(_ request: UpdateTableRequest) async throws -> UpdateTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateTableWithOptions(request as! UpdateTableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTableColumnStatisticsWithOptions(_ request: UpdateTableColumnStatisticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTableColumnStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.updateTablePartitionColumnStatisticsRequest)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTableColumnStatistics",
            "version": "2020-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/metastore/catalogs/databases/tables/columnstatistics",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTableColumnStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTableColumnStatistics(_ request: UpdateTableColumnStatisticsRequest) async throws -> UpdateTableColumnStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateTableColumnStatisticsWithOptions(request as! UpdateTableColumnStatisticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
