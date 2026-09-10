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
        self._endpoint = try getEndpoint("lhm", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addDataCheckConfigWithOptions(_ request: AddDataCheckConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDataCheckConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isFullTableCount)) {
            body["isFullTableCount"] = request.isFullTableCount!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceColumns)) {
            body["sourceColumns"] = request.sourceColumns ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceGroupClause)) {
            body["sourceGroupClause"] = request.sourceGroupClause ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceHint)) {
            body["sourceHint"] = request.sourceHint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcePartition)) {
            body["sourcePartition"] = request.sourcePartition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTable)) {
            body["sourceTable"] = request.sourceTable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceWhereClause)) {
            body["sourceWhereClause"] = request.sourceWhereClause ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetColumns)) {
            body["targetColumns"] = request.targetColumns ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetGroupClause)) {
            body["targetGroupClause"] = request.targetGroupClause ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetHint)) {
            body["targetHint"] = request.targetHint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPartition)) {
            body["targetPartition"] = request.targetPartition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetTable)) {
            body["targetTable"] = request.targetTable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetWhereClause)) {
            body["targetWhereClause"] = request.targetWhereClause ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskConfigInfo)) {
            body["taskConfigInfo"] = request.taskConfigInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.totalCountThreshold)) {
            body["totalCountThreshold"] = request.totalCountThreshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDataCheckConfig",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/config/v3/saveConfig",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDataCheckConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDataCheckConfig(_ request: AddDataCheckConfigRequest) async throws -> AddDataCheckConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addDataCheckConfigWithOptions(request as! AddDataCheckConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDataCheckTaskWithOptions(_ request: AddDataCheckTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDataCheckTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkTemplateId)) {
            body["checkTemplateId"] = request.checkTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkType)) {
            body["checkType"] = request.checkType!;
        }
        if (!TeaUtils.Client.isUnset(request.dstDsId)) {
            body["dstDsId"] = request.dstDsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstDsName)) {
            body["dstDsName"] = request.dstDsName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstDsType)) {
            body["dstDsType"] = request.dstDsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcDsId)) {
            body["srcDsId"] = request.srcDsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcDsName)) {
            body["srcDsName"] = request.srcDsName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcDsType)) {
            body["srcDsType"] = request.srcDsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskMode)) {
            body["taskMode"] = request.taskMode!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["taskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDataCheckTask",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/task/v3/add",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDataCheckTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDataCheckTask(_ request: AddDataCheckTaskRequest) async throws -> AddDataCheckTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addDataCheckTaskWithOptions(request as! AddDataCheckTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDataCheckTemplateWithOptions(_ request: AddDataCheckTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDataCheckTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.basicMetricRules)) {
            body["basicMetricRules"] = request.basicMetricRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.checkType)) {
            body["checkType"] = request.checkType!;
        }
        if (!TeaUtils.Client.isUnset(request.complexMetricRules)) {
            body["complexMetricRules"] = request.complexMetricRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dsEngineRels)) {
            body["dsEngineRels"] = request.dsEngineRels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.fulltextRule)) {
            body["fulltextRule"] = request.fulltextRule!;
        }
        if (!TeaUtils.Client.isUnset(request.metricRules)) {
            body["metricRules"] = request.metricRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.nullRules)) {
            body["nullRules"] = request.nullRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateDesc)) {
            body["templateDesc"] = request.templateDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["templateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.weakContentRule)) {
            body["weakContentRule"] = request.weakContentRule!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDataCheckTemplate",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/template/v3/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDataCheckTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDataCheckTemplate(_ request: AddDataCheckTemplateRequest) async throws -> AddDataCheckTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addDataCheckTemplateWithOptions(request as! AddDataCheckTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addMetaDataComponentWithOptions(_ request: AddMetaDataComponentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddMetaDataComponentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryType)) {
            body["categoryType"] = request.categoryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentType)) {
            body["componentType"] = request.componentType!;
        }
        if (!TeaUtils.Client.isUnset(request.dsConfig)) {
            body["dsConfig"] = request.dsConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dsDesc)) {
            body["dsDesc"] = request.dsDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dsId)) {
            body["dsId"] = request.dsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dsName)) {
            body["dsName"] = request.dsName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dsStatus)) {
            body["dsStatus"] = request.dsStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.dsType)) {
            body["dsType"] = request.dsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dsVersion)) {
            body["dsVersion"] = request.dsVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddMetaDataComponent",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/v2/meta/data-component",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddMetaDataComponentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addMetaDataComponent(_ request: AddMetaDataComponentRequest) async throws -> AddMetaDataComponentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addMetaDataComponentWithOptions(request as! AddMetaDataComponentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExecuteSqlConversionWithOptions(_ request: CreateExecuteSqlConversionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateExecuteSqlConversionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceDialect)) {
            body["sourceDialect"] = request.sourceDialect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceSqlScript)) {
            body["sourceSqlScript"] = request.sourceSqlScript ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.targetDialect)) {
            body["targetDialect"] = request.targetDialect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDescription)) {
            body["taskDescription"] = request.taskDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["taskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateExecuteSqlConversion",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/jobMigrate/sqlTranslator/task/api/createExecute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateExecuteSqlConversionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExecuteSqlConversion(_ request: CreateExecuteSqlConversionRequest) async throws -> CreateExecuteSqlConversionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createExecuteSqlConversionWithOptions(request as! CreateExecuteSqlConversionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSqlExecJobWithOptions(_ request: CreateSqlExecJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSqlExecJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.concurrency)) {
            body["concurrency"] = request.concurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSqlExecJob",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/sql-translator/execute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSqlExecJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSqlExecJob(_ request: CreateSqlExecJobRequest) async throws -> CreateSqlExecJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSqlExecJobWithOptions(request as! CreateSqlExecJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataCheckConfigWithOptions(_ request: DeleteDataCheckConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDataCheckConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["id"] = request.id!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataCheckConfig",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/config/v3/deleteConfig",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDataCheckConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataCheckConfig(_ request: DeleteDataCheckConfigRequest) async throws -> DeleteDataCheckConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDataCheckConfigWithOptions(request as! DeleteDataCheckConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataCheckTaskWithOptions(_ request: DeleteDataCheckTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDataCheckTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskIds)) {
            body["taskIds"] = request.taskIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataCheckTask",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/task/v3/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDataCheckTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataCheckTask(_ request: DeleteDataCheckTaskRequest) async throws -> DeleteDataCheckTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDataCheckTaskWithOptions(request as! DeleteDataCheckTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataCheckTemplateWithOptions(_ request: DeleteDataCheckTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDataCheckTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateIds)) {
            body["templateIds"] = request.templateIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataCheckTemplate",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/template/v3/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDataCheckTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataCheckTemplate(_ request: DeleteDataCheckTemplateRequest) async throws -> DeleteDataCheckTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDataCheckTemplateWithOptions(request as! DeleteDataCheckTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editTaskPopWithOptions(_ request: EditTaskPopRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EditTaskPopResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.concurrency)) {
            body["concurrency"] = request.concurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.dqlTestDatasourceName)) {
            body["dqlTestDatasourceName"] = request.dqlTestDatasourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDialect)) {
            body["sourceDialect"] = request.sourceDialect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetDialect)) {
            body["targetDialect"] = request.targetDialect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["taskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            body["taskType"] = request.taskType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EditTaskPop",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/sql-translator/editPop",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EditTaskPopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editTaskPop(_ request: EditTaskPopRequest) async throws -> EditTaskPopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await editTaskPopWithOptions(request as! EditTaskPopRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckDownloadReportWithOptions(_ request: ExecDataCheckDownloadReportRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecDataCheckDownloadReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchId)) {
            query["batchId"] = request.batchId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecDataCheckDownloadReport",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/report/v3/download",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecDataCheckDownloadReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckDownloadReport(_ request: ExecDataCheckDownloadReportRequest) async throws -> ExecDataCheckDownloadReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await execDataCheckDownloadReportWithOptions(request as! ExecDataCheckDownloadReportRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckGenerateReportWithOptions(_ request: ExecDataCheckGenerateReportRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecDataCheckGenerateReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchId)) {
            query["batchId"] = request.batchId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecDataCheckGenerateReport",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/report/v3/generateReport",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecDataCheckGenerateReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckGenerateReport(_ request: ExecDataCheckGenerateReportRequest) async throws -> ExecDataCheckGenerateReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await execDataCheckGenerateReportWithOptions(request as! ExecDataCheckGenerateReportRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckReRunWithOptions(_ request: ExecDataCheckReRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecDataCheckReRunResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchId)) {
            body["batchId"] = request.batchId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecDataCheckReRun",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/task/v3/rerun",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecDataCheckReRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckReRun(_ request: ExecDataCheckReRunRequest) async throws -> ExecDataCheckReRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await execDataCheckReRunWithOptions(request as! ExecDataCheckReRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckRunWithOptions(_ request: ExecDataCheckRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecDataCheckRunResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchId)) {
            body["batchId"] = request.batchId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecDataCheckRun",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/task/v3/run",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecDataCheckRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckRun(_ request: ExecDataCheckRunRequest) async throws -> ExecDataCheckRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await execDataCheckRunWithOptions(request as! ExecDataCheckRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckRunFailedWithOptions(_ request: ExecDataCheckRunFailedRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecDataCheckRunFailedResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchId)) {
            body["batchId"] = request.batchId!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecDataCheckRunFailed",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/task/v3/runFailed",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecDataCheckRunFailedResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckRunFailed(_ request: ExecDataCheckRunFailedRequest) async throws -> ExecDataCheckRunFailedResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await execDataCheckRunFailedWithOptions(request as! ExecDataCheckRunFailedRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckSaveTaskWithOptions(_ request: ExecDataCheckSaveTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecDataCheckSaveTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkGlobalParams)) {
            body["checkGlobalParams"] = request.checkGlobalParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fullTableCount)) {
            body["fullTableCount"] = request.fullTableCount!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceGlobalParams)) {
            body["sourceGlobalParams"] = request.sourceGlobalParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startImmediately)) {
            body["startImmediately"] = request.startImmediately!;
        }
        if (!TeaUtils.Client.isUnset(request.targetGlobalParams)) {
            body["targetGlobalParams"] = request.targetGlobalParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.totalCountThreshold)) {
            body["totalCountThreshold"] = request.totalCountThreshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecDataCheckSaveTask",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/task/v3/save",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecDataCheckSaveTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckSaveTask(_ request: ExecDataCheckSaveTaskRequest) async throws -> ExecDataCheckSaveTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await execDataCheckSaveTaskWithOptions(request as! ExecDataCheckSaveTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckSqlPreviewWithOptions(_ request: ExecDataCheckSqlPreviewRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecDataCheckSqlPreviewResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkColumn)) {
            body["checkColumn"] = request.checkColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["dataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engineId)) {
            body["engineId"] = request.engineId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fullTableName)) {
            body["fullTableName"] = request.fullTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.partitionCondition)) {
            body["partitionCondition"] = request.partitionCondition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.whereClause)) {
            body["whereClause"] = request.whereClause ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecDataCheckSqlPreview",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/config/v3/sql/preview",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecDataCheckSqlPreviewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckSqlPreview(_ request: ExecDataCheckSqlPreviewRequest) async throws -> ExecDataCheckSqlPreviewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await execDataCheckSqlPreviewWithOptions(request as! ExecDataCheckSqlPreviewRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckStopWithOptions(_ request: ExecDataCheckStopRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecDataCheckStopResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchId)) {
            body["batchId"] = request.batchId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecDataCheckStop",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/task/v3/stop",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecDataCheckStopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckStop(_ request: ExecDataCheckStopRequest) async throws -> ExecDataCheckStopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await execDataCheckStopWithOptions(request as! ExecDataCheckStopRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckToggleWithOptions(_ request: ExecDataCheckToggleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecDataCheckToggleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["params"] = request.params ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecDataCheckToggle",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/task/v3/toggle",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecDataCheckToggleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execDataCheckToggle(_ request: ExecDataCheckToggleRequest) async throws -> ExecDataCheckToggleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await execDataCheckToggleWithOptions(request as! ExecDataCheckToggleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execMetaDataComponentNameWithOptions(_ request: ExecMetaDataComponentNameRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecMetaDataComponentNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dsName)) {
            query["dsName"] = request.dsName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecMetaDataComponentName",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/v2/meta/data-component/check-name",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecMetaDataComponentNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execMetaDataComponentName(_ request: ExecMetaDataComponentNameRequest) async throws -> ExecMetaDataComponentNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await execMetaDataComponentNameWithOptions(request as! ExecMetaDataComponentNameRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execSqlTransSingleScriptTranslateWithOptions(_ request: ExecSqlTransSingleScriptTranslateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecSqlTransSingleScriptTranslateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceDialect)) {
            body["sourceDialect"] = request.sourceDialect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceSqlScript)) {
            body["sourceSqlScript"] = request.sourceSqlScript ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableMapping)) {
            body["tableMapping"] = request.tableMapping ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.targetDialect)) {
            body["targetDialect"] = request.targetDialect ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecSqlTransSingleScriptTranslate",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/sql-translator/open/single/translate-sync",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecSqlTransSingleScriptTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execSqlTransSingleScriptTranslate(_ request: ExecSqlTransSingleScriptTranslateRequest) async throws -> ExecSqlTransSingleScriptTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await execSqlTransSingleScriptTranslateWithOptions(request as! ExecSqlTransSingleScriptTranslateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execWorkflowConnectivityWithOptions(_ request: ExecWorkflowConnectivityRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecWorkflowConnectivityResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dsConfig)) {
            body["dsConfig"] = request.dsConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dsName)) {
            body["dsName"] = request.dsName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dsType)) {
            body["dsType"] = request.dsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dsVersion)) {
            body["dsVersion"] = request.dsVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.isModified)) {
            body["isModified"] = request.isModified!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecWorkflowConnectivity",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/v2/meta/data-component/workflow/connectivity",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecWorkflowConnectivityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func execWorkflowConnectivity(_ request: ExecWorkflowConnectivityRequest) async throws -> ExecWorkflowConnectivityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await execWorkflowConnectivityWithOptions(request as! ExecWorkflowConnectivityRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBwmMigrationSubmitInstanceListWithOptions(_ request: GetBwmMigrationSubmitInstanceListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBwmMigrationSubmitInstanceListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBwmMigrationSubmitInstanceList",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bwm/task/migration/submit/instances/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBwmMigrationSubmitInstanceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBwmMigrationSubmitInstanceList(_ request: GetBwmMigrationSubmitInstanceListRequest) async throws -> GetBwmMigrationSubmitInstanceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getBwmMigrationSubmitInstanceListWithOptions(request as! GetBwmMigrationSubmitInstanceListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBwmMigrationTaskWriterResultPackageWithOptions(_ request: GetBwmMigrationTaskWriterResultPackageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBwmMigrationTaskWriterResultPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["instanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBwmMigrationTaskWriterResultPackage",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bwm/task/migration/write/result/export/package",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBwmMigrationTaskWriterResultPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBwmMigrationTaskWriterResultPackage(_ request: GetBwmMigrationTaskWriterResultPackageRequest) async throws -> GetBwmMigrationTaskWriterResultPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getBwmMigrationTaskWriterResultPackageWithOptions(request as! GetBwmMigrationTaskWriterResultPackageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBwmMigrationTaskWriterWorkflowListWithOptions(_ request: GetBwmMigrationTaskWriterWorkflowListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBwmMigrationTaskWriterWorkflowListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["instanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.workflowName)) {
            query["workflowName"] = request.workflowName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBwmMigrationTaskWriterWorkflowList",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bwm/task/migration/write/result/workflow/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBwmMigrationTaskWriterWorkflowListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBwmMigrationTaskWriterWorkflowList(_ request: GetBwmMigrationTaskWriterWorkflowListRequest) async throws -> GetBwmMigrationTaskWriterWorkflowListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getBwmMigrationTaskWriterWorkflowListWithOptions(request as! GetBwmMigrationTaskWriterWorkflowListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBwmMigrationWorkflowSubmitStartWithOptions(_ request: GetBwmMigrationWorkflowSubmitStartRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBwmMigrationWorkflowSubmitStartResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBwmMigrationWorkflowSubmitStart",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bwm/task/migration/submit/start",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBwmMigrationWorkflowSubmitStartResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBwmMigrationWorkflowSubmitStart(_ request: GetBwmMigrationWorkflowSubmitStartRequest) async throws -> GetBwmMigrationWorkflowSubmitStartResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getBwmMigrationWorkflowSubmitStartWithOptions(request as! GetBwmMigrationWorkflowSubmitStartRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCronExecTimeWithOptions(_ request: GetCronExecTimeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCronExecTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cronRule)) {
            query["cronRule"] = request.cronRule ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCronExecTime",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/task/v3/cron/exeTime",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCronExecTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCronExecTime(_ request: GetCronExecTimeRequest) async throws -> GetCronExecTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getCronExecTimeWithOptions(request as! GetCronExecTimeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCheckConfigWithOptions(_ request: GetDataCheckConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataCheckConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataCheckConfig",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/config/v3/getConfig",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataCheckConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCheckConfig(_ request: GetDataCheckConfigRequest) async throws -> GetDataCheckConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDataCheckConfigWithOptions(request as! GetDataCheckConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCheckReportOverviewWithOptions(_ request: GetDataCheckReportOverviewRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataCheckReportOverviewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchId)) {
            query["batchId"] = request.batchId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataCheckReportOverview",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/report/v3/overview",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataCheckReportOverviewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCheckReportOverview(_ request: GetDataCheckReportOverviewRequest) async throws -> GetDataCheckReportOverviewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDataCheckReportOverviewWithOptions(request as! GetDataCheckReportOverviewRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCheckReportStatusWithOptions(_ request: GetDataCheckReportStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataCheckReportStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchId)) {
            query["batchId"] = request.batchId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataCheckReportStatus",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/report/v3/getReportStatus",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataCheckReportStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCheckReportStatus(_ request: GetDataCheckReportStatusRequest) async throws -> GetDataCheckReportStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDataCheckReportStatusWithOptions(request as! GetDataCheckReportStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCheckTaskConfigWithOptions(_ request: GetDataCheckTaskConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataCheckTaskConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataCheckTaskConfig",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/task/v3/config",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataCheckTaskConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCheckTaskConfig(_ request: GetDataCheckTaskConfigRequest) async throws -> GetDataCheckTaskConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDataCheckTaskConfigWithOptions(request as! GetDataCheckTaskConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCheckTaskListWithOptions(_ request: GetDataCheckTaskListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataCheckTaskListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkResult)) {
            body["checkResult"] = request.checkResult!;
        }
        if (!TeaUtils.Client.isUnset(request.checkType)) {
            body["checkType"] = request.checkType!;
        }
        if (!TeaUtils.Client.isUnset(request.createEndTime)) {
            body["createEndTime"] = request.createEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createStartTime)) {
            body["createStartTime"] = request.createStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.execStatus)) {
            body["execStatus"] = request.execStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.isScheduled)) {
            body["isScheduled"] = request.isScheduled!;
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["taskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["templateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateEndTime)) {
            body["updateEndTime"] = request.updateEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateStartTime)) {
            body["updateStartTime"] = request.updateStartTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataCheckTaskList",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/task/v3/find",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataCheckTaskListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCheckTaskList(_ request: GetDataCheckTaskListRequest) async throws -> GetDataCheckTaskListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDataCheckTaskListWithOptions(request as! GetDataCheckTaskListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCheckTemplateWithOptions(_ request: GetDataCheckTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataCheckTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["templateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataCheckTemplate",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/template/v3/get",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataCheckTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCheckTemplate(_ request: GetDataCheckTemplateRequest) async throws -> GetDataCheckTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDataCheckTemplateWithOptions(request as! GetDataCheckTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCheckTemplateListWithOptions(_ tmpReq: GetDataCheckTemplateListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataCheckTemplateListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetDataCheckTemplateListShrinkRequest = GetDataCheckTemplateListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.idList)) {
            request.idListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.idList, "idList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkType)) {
            query["checkType"] = request.checkType!;
        }
        if (!TeaUtils.Client.isUnset(request.groupBy)) {
            query["groupBy"] = request.groupBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idListShrink)) {
            query["idList"] = request.idListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAdmin)) {
            query["isAdmin"] = request.isAdmin!;
        }
        if (!TeaUtils.Client.isUnset(request.isBuiltin)) {
            query["isBuiltin"] = request.isBuiltin!;
        }
        if (!TeaUtils.Client.isUnset(request.needTotalCount)) {
            query["needTotalCount"] = request.needTotalCount!;
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["orderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderDirection)) {
            query["orderDirection"] = request.orderDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["requestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["templateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataCheckTemplateList",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/template/v3/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataCheckTemplateListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataCheckTemplateList(_ request: GetDataCheckTemplateListRequest) async throws -> GetDataCheckTemplateListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDataCheckTemplateListWithOptions(request as! GetDataCheckTemplateListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInnerConvertAsyncResultWithOptions(_ request: GetInnerConvertAsyncResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInnerConvertAsyncResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInnerConvertAsyncResult",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/skill/inner/v1/convert/async-result",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInnerConvertAsyncResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInnerConvertAsyncResult(_ request: GetInnerConvertAsyncResultRequest) async throws -> GetInnerConvertAsyncResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInnerConvertAsyncResultWithOptions(request as! GetInnerConvertAsyncResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInnerReadAsyncResultWithOptions(_ request: GetInnerReadAsyncResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInnerReadAsyncResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceName)) {
            body["dataSourceName"] = request.dataSourceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInnerReadAsyncResult",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/skill/inner/v1/read/async-result",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInnerReadAsyncResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInnerReadAsyncResult(_ request: GetInnerReadAsyncResultRequest) async throws -> GetInnerReadAsyncResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInnerReadAsyncResultWithOptions(request as! GetInnerReadAsyncResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLhmAgentStatusWithOptions(_ request: GetLhmAgentStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLhmAgentStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentType)) {
            query["agentType"] = request.agentType!;
        }
        if (!TeaUtils.Client.isUnset(request.skillName)) {
            query["skillName"] = request.skillName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLhmAgentStatus",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/lhm/agent/getAgentStatus",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLhmAgentStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLhmAgentStatus(_ request: GetLhmAgentStatusRequest) async throws -> GetLhmAgentStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLhmAgentStatusWithOptions(request as! GetLhmAgentStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLhmDWResourceGroupStatusWithOptions(_ request: GetLhmDWResourceGroupStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLhmDWResourceGroupStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLhmDWResourceGroupStatus",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/lhm/resource/getDWResourceGroupStatus",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLhmDWResourceGroupStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLhmDWResourceGroupStatus(_ request: GetLhmDWResourceGroupStatusRequest) async throws -> GetLhmDWResourceGroupStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLhmDWResourceGroupStatusWithOptions(request as! GetLhmDWResourceGroupStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMetaOssTempKeyWithOptions(_ request: GetMetaOssTempKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMetaOssTempKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMetaOssTempKey",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/v2/meta/data-component/okss-services/file-job/sts",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMetaOssTempKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMetaOssTempKey(_ request: GetMetaOssTempKeyRequest) async throws -> GetMetaOssTempKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMetaOssTempKeyWithOptions(request as! GetMetaOssTempKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSqlConversionProgressWithOptions(_ request: GetSqlConversionProgressRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSqlConversionProgressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSqlConversionProgress",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/jobMigrate/sqlTranslator/task/api/progress",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSqlConversionProgressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSqlConversionProgress(_ request: GetSqlConversionProgressRequest) async throws -> GetSqlConversionProgressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSqlConversionProgressWithOptions(request as! GetSqlConversionProgressRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSqlConversionResultWithOptions(_ request: GetSqlConversionResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSqlConversionResultResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSqlConversionResult",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/jobMigrate/sqlTranslator/task/api/result",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSqlConversionResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSqlConversionResult(_ request: GetSqlConversionResultRequest) async throws -> GetSqlConversionResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSqlConversionResultWithOptions(request as! GetSqlConversionResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSqlTableLineageWithOptions(_ request: GetSqlTableLineageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSqlTableLineageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defaultSchema)) {
            body["defaultSchema"] = request.defaultSchema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialect)) {
            body["dialect"] = request.dialect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceSqlScriptBase64)) {
            body["sourceSqlScriptBase64"] = request.sourceSqlScriptBase64 ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSqlTableLineage",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/sql-translator/open/single/getTableLineage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSqlTableLineageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSqlTableLineage(_ request: GetSqlTableLineageRequest) async throws -> GetSqlTableLineageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSqlTableLineageWithOptions(request as! GetSqlTableLineageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSqlTransTableMetaInfoWithOptions(_ request: GetSqlTransTableMetaInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSqlTransTableMetaInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceDialect)) {
            body["sourceDialect"] = request.sourceDialect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceSqlScript)) {
            body["sourceSqlScript"] = request.sourceSqlScript ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetDialect)) {
            body["targetDialect"] = request.targetDialect ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSqlTransTableMetaInfo",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/sql-translator/open/single/get-table-info",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSqlTransTableMetaInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSqlTransTableMetaInfo(_ request: GetSqlTransTableMetaInfoRequest) async throws -> GetSqlTransTableMetaInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSqlTransTableMetaInfoWithOptions(request as! GetSqlTransTableMetaInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStepResultOverviewWithOptions(_ request: GetStepResultOverviewRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStepResultOverviewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resultId)) {
            query["resultId"] = request.resultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStepResultOverview",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/report/v3/result/overview",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStepResultOverviewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStepResultOverview(_ request: GetStepResultOverviewRequest) async throws -> GetStepResultOverviewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getStepResultOverviewWithOptions(request as! GetStepResultOverviewRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCheckColumnResultsWithOptions(_ request: ListDataCheckColumnResultsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataCheckColumnResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resultId)) {
            query["resultId"] = request.resultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataCheckColumnResults",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/report/v3/column/page",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataCheckColumnResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCheckColumnResults(_ request: ListDataCheckColumnResultsRequest) async throws -> ListDataCheckColumnResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDataCheckColumnResultsWithOptions(request as! ListDataCheckColumnResultsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCheckConfigWithOptions(_ request: ListDataCheckConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataCheckConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.srcTable)) {
            query["srcTable"] = request.srcTable ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataCheckConfig",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/config/v3/listConfig/page",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataCheckConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCheckConfig(_ request: ListDataCheckConfigRequest) async throws -> ListDataCheckConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDataCheckConfigWithOptions(request as! ListDataCheckConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCheckReportWithOptions(_ request: ListDataCheckReportRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataCheckReportResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchId)) {
            body["batchId"] = request.batchId!;
        }
        if (!TeaUtils.Client.isUnset(request.checkResult)) {
            body["checkResult"] = request.checkResult!;
        }
        if (!TeaUtils.Client.isUnset(request.jobStatus)) {
            body["jobStatus"] = request.jobStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            body["tableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataCheckReport",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/report/v3/page",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataCheckReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCheckReport(_ request: ListDataCheckReportRequest) async throws -> ListDataCheckReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDataCheckReportWithOptions(request as! ListDataCheckReportRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCheckReportInstanceWithOptions(_ request: ListDataCheckReportInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataCheckReportInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataCheckReportInstance",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/report/v3/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataCheckReportInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCheckReportInstance(_ request: ListDataCheckReportInstanceRequest) async throws -> ListDataCheckReportInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDataCheckReportInstanceWithOptions(request as! ListDataCheckReportInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCheckReportStepWithOptions(_ request: ListDataCheckReportStepRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataCheckReportStepResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkResult)) {
            query["checkResult"] = request.checkResult!;
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["jobId"] = request.jobId!;
        }
        if (!TeaUtils.Client.isUnset(request.jobStatus)) {
            query["jobStatus"] = request.jobStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataCheckReportStep",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/report/v3/step/page",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataCheckReportStepResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCheckReportStep(_ request: ListDataCheckReportStepRequest) async throws -> ListDataCheckReportStepResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDataCheckReportStepWithOptions(request as! ListDataCheckReportStepRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCheckReportStepByJobIdWithOptions(_ request: ListDataCheckReportStepByJobIdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataCheckReportStepByJobIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["jobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataCheckReportStepByJobId",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/report/v3/step/pageByJobId",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataCheckReportStepByJobIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCheckReportStepByJobId(_ request: ListDataCheckReportStepByJobIdRequest) async throws -> ListDataCheckReportStepByJobIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDataCheckReportStepByJobIdWithOptions(request as! ListDataCheckReportStepByJobIdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCheckTaskHistoryWithOptions(_ request: ListDataCheckTaskHistoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataCheckTaskHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchId)) {
            query["batchId"] = request.batchId!;
        }
        if (!TeaUtils.Client.isUnset(request.checkResult)) {
            query["checkResult"] = request.checkResult!;
        }
        if (!TeaUtils.Client.isUnset(request.createEndTime)) {
            query["createEndTime"] = request.createEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createStartTime)) {
            query["createStartTime"] = request.createStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.execEndTime)) {
            query["execEndTime"] = request.execEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.execStartTime)) {
            query["execStartTime"] = request.execStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.execStatus)) {
            query["execStatus"] = request.execStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.finishEndTime)) {
            query["finishEndTime"] = request.finishEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.finishStartTime)) {
            query["finishStartTime"] = request.finishStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataCheckTaskHistory",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/task/v3/details",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataCheckTaskHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCheckTaskHistory(_ request: ListDataCheckTaskHistoryRequest) async throws -> ListDataCheckTaskHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDataCheckTaskHistoryWithOptions(request as! ListDataCheckTaskHistoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMetaDataComponentPageWithOptions(_ request: ListMetaDataComponentPageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMetaDataComponentPageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryType)) {
            body["categoryType"] = request.categoryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentType)) {
            body["componentType"] = request.componentType!;
        }
        if (!TeaUtils.Client.isUnset(request.dsName)) {
            body["dsName"] = request.dsName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dsStatus)) {
            body["dsStatus"] = request.dsStatus ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dsType)) {
            body["dsType"] = request.dsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dsTypeList)) {
            body["dsTypeList"] = request.dsTypeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.groupBy)) {
            body["groupBy"] = request.groupBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needTotalCount)) {
            body["needTotalCount"] = request.needTotalCount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            body["orderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderDirection)) {
            body["orderDirection"] = request.orderDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.srcComponentId)) {
            body["srcComponentId"] = request.srcComponentId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMetaDataComponentPage",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/v2/meta/data-component/page",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMetaDataComponentPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMetaDataComponentPage(_ request: ListMetaDataComponentPageRequest) async throws -> ListMetaDataComponentPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMetaDataComponentPageWithOptions(request as! ListMetaDataComponentPageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postInnerConvertWithOptions(_ request: PostInnerConvertRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PostInnerConvertResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sqlConvertMap)) {
            body["sqlConvertMap"] = request.sqlConvertMap ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.srcDataSourceName)) {
            body["srcDataSourceName"] = request.srcDataSourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tgtDataSourceName)) {
            body["tgtDataSourceName"] = request.tgtDataSourceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PostInnerConvert",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/skill/inner/v1/convert",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PostInnerConvertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postInnerConvert(_ request: PostInnerConvertRequest) async throws -> PostInnerConvertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await postInnerConvertWithOptions(request as! PostInnerConvertRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postInnerReaderWithOptions(_ request: PostInnerReaderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PostInnerReaderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceDescriptor)) {
            body["dataSourceDescriptor"] = request.dataSourceDescriptor!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceName)) {
            body["dataSourceName"] = request.dataSourceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PostInnerReader",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/skill/inner/v1/read",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PostInnerReaderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postInnerReader(_ request: PostInnerReaderRequest) async throws -> PostInnerReaderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await postInnerReaderWithOptions(request as! PostInnerReaderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postInnerUploadConvertPackageWithOptions(_ request: PostInnerUploadConvertPackageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PostInnerUploadConvertPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileContentBase64)) {
            body["fileContentBase64"] = request.fileContentBase64 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["taskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PostInnerUploadConvertPackage",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/skill/inner/v1/convert/upload-package",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PostInnerUploadConvertPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func postInnerUploadConvertPackage(_ request: PostInnerUploadConvertPackageRequest) async throws -> PostInnerUploadConvertPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await postInnerUploadConvertPackageWithOptions(request as! PostInnerUploadConvertPackageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func singleSqlDryRunWithOptions(_ request: SingleSqlDryRunRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SingleSqlDryRunResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasourceName)) {
            body["datasourceName"] = request.datasourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sql)) {
            body["sql"] = request.sql ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SingleSqlDryRun",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/sql-translator/dryRun",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SingleSqlDryRunResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func singleSqlDryRun(_ request: SingleSqlDryRunRequest) async throws -> SingleSqlDryRunResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await singleSqlDryRunWithOptions(request as! SingleSqlDryRunRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syntaxCheckAndTransformSqlConversionTaskWithOptions(_ request: SyntaxCheckAndTransformSqlConversionTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SyntaxCheckAndTransformSqlConversionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["taskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyntaxCheckAndTransformSqlConversionTask",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/api/bigdata/jobMigrate/sqlTranslator/task/api/syntaxCheckAndTransformTask",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyntaxCheckAndTransformSqlConversionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syntaxCheckAndTransformSqlConversionTask(_ request: SyntaxCheckAndTransformSqlConversionTaskRequest) async throws -> SyntaxCheckAndTransformSqlConversionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await syntaxCheckAndTransformSqlConversionTaskWithOptions(request as! SyntaxCheckAndTransformSqlConversionTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataCheckTaskWithOptions(_ request: UpdateDataCheckTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataCheckTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkTemplateId)) {
            body["checkTemplateId"] = request.checkTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstDsId)) {
            body["dstDsId"] = request.dstDsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstDsName)) {
            body["dstDsName"] = request.dstDsName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstDsType)) {
            body["dstDsType"] = request.dstDsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstEngineId)) {
            body["dstEngineId"] = request.dstEngineId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstEngineName)) {
            body["dstEngineName"] = request.dstEngineName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dstEngineType)) {
            body["dstEngineType"] = request.dstEngineType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.srcDsId)) {
            body["srcDsId"] = request.srcDsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcDsName)) {
            body["srcDsName"] = request.srcDsName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcDsType)) {
            body["srcDsType"] = request.srcDsType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcEngineId)) {
            body["srcEngineId"] = request.srcEngineId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcEngineName)) {
            body["srcEngineName"] = request.srcEngineName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcEngineType)) {
            body["srcEngineType"] = request.srcEngineType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskDescription)) {
            body["taskDescription"] = request.taskDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["taskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataCheckTask",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/task/v3/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataCheckTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataCheckTask(_ request: UpdateDataCheckTaskRequest) async throws -> UpdateDataCheckTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDataCheckTaskWithOptions(request as! UpdateDataCheckTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataCheckTemplateWithOptions(_ request: UpdateDataCheckTemplateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataCheckTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.basicMetricRules)) {
            body["basicMetricRules"] = request.basicMetricRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.checkType)) {
            body["checkType"] = request.checkType!;
        }
        if (!TeaUtils.Client.isUnset(request.complexMetricRules)) {
            body["complexMetricRules"] = request.complexMetricRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dsEngineRels)) {
            body["dsEngineRels"] = request.dsEngineRels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.fulltextRule)) {
            body["fulltextRule"] = request.fulltextRule!;
        }
        if (!TeaUtils.Client.isUnset(request.metricRules)) {
            body["metricRules"] = request.metricRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.nullRules)) {
            body["nullRules"] = request.nullRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateDesc)) {
            body["templateDesc"] = request.templateDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["templateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["templateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.weakContentRule)) {
            body["weakContentRule"] = request.weakContentRule!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataCheckTemplate",
            "version": "2025-01-16",
            "protocol": "HTTPS",
            "pathname": "/dataCheck/template/v3/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataCheckTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataCheckTemplate(_ request: UpdateDataCheckTemplateRequest) async throws -> UpdateDataCheckTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDataCheckTemplateWithOptions(request as! UpdateDataCheckTemplateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
