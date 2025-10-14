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
        self._endpoint = try getEndpoint("cloud-siem", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func checkUpgradeItemWithOptions(_ request: CheckUpgradeItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckUpgradeItemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.upgradeItemId)) {
            body["UpgradeItemId"] = request.upgradeItemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckUpgradeItem",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckUpgradeItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkUpgradeItem(_ request: CheckUpgradeItemRequest) async throws -> CheckUpgradeItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkUpgradeItemWithOptions(request as! CheckUpgradeItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataIngestionWithOptions(_ request: CreateDataIngestionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDataIngestionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.capacityCount)) {
            body["CapacityCount"] = request.capacityCount!;
        }
        if (!TeaUtils.Client.isUnset(request.dataIngestionMode)) {
            body["DataIngestionMode"] = request.dataIngestionMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataIngestionStateCode)) {
            body["DataIngestionStateCode"] = request.dataIngestionStateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataIngestionType)) {
            body["DataIngestionType"] = request.dataIngestionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceEditable)) {
            body["DataSourceEditable"] = request.dataSourceEditable!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleEditable)) {
            body["NormalizationRuleEditable"] = request.normalizationRuleEditable!;
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleId)) {
            body["NormalizationRuleId"] = request.normalizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["ProductId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.scanDataSourceId)) {
            body["ScanDataSourceId"] = request.scanDataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.streamJobId)) {
            body["StreamJobId"] = request.streamJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateTime)) {
            body["UpdateTime"] = request.updateTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataIngestion",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDataIngestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataIngestion(_ request: CreateDataIngestionRequest) async throws -> CreateDataIngestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDataIngestionWithOptions(request as! CreateDataIngestionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataSetWithOptions(_ request: CreateDataSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDataSetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSetDescription)) {
            body["DataSetDescription"] = request.dataSetDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSetFieldKeyName)) {
            body["DataSetFieldKeyName"] = request.dataSetFieldKeyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSetFileName)) {
            body["DataSetFileName"] = request.dataSetFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSetName)) {
            body["DataSetName"] = request.dataSetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSetStatus)) {
            body["DataSetStatus"] = request.dataSetStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSetType)) {
            body["DataSetType"] = request.dataSetType ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ipWhitelistRecognizers)) {
            bodyFlat["IpWhitelistRecognizers"] = request.ipWhitelistRecognizers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataSet",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDataSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataSet(_ request: CreateDataSetRequest) async throws -> CreateDataSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDataSetWithOptions(request as! CreateDataSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataSourceWithOptions(_ tmpReq: CreateDataSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDataSourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDataSourceShrinkRequest = CreateDataSourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataSourceIds)) {
            request.dataSourceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataSourceIds, "DataSourceIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.dataSourceReferences)) {
            request.dataSourceReferencesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataSourceReferences, "DataSourceReferences", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceFrom)) {
            body["DataSourceFrom"] = request.dataSourceFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceIdsShrink)) {
            body["DataSourceIds"] = request.dataSourceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceName)) {
            body["DataSourceName"] = request.dataSourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceRecognizeEnabled)) {
            body["DataSourceRecognizeEnabled"] = request.dataSourceRecognizeEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceRecognizer)) {
            body["DataSourceRecognizer"] = request.dataSourceRecognizer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceReferencesShrink)) {
            body["DataSourceReferences"] = request.dataSourceReferencesShrink ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceStores)) {
            bodyFlat["DataSourceStores"] = request.dataSourceStores ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceTemplateId)) {
            body["DataSourceTemplateId"] = request.dataSourceTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logProjectName)) {
            body["LogProjectName"] = request.logProjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRegionId)) {
            body["LogRegionId"] = request.logRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStoreName)) {
            body["LogStoreName"] = request.logStoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logUserId)) {
            body["LogUserId"] = request.logUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            body["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.updateTime)) {
            body["UpdateTime"] = request.updateTime!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataSource",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataSource(_ request: CreateDataSourceRequest) async throws -> CreateDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDataSourceWithOptions(request as! CreateDataSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDetectionRuleWithOptions(_ request: CreateDetectionRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDetectionRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertAttCk)) {
            body["AlertAttCk"] = request.alertAttCk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertLevel)) {
            body["AlertLevel"] = request.alertLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertSchemaId)) {
            body["AlertSchemaId"] = request.alertSchemaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertTacticId)) {
            body["AlertTacticId"] = request.alertTacticId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertThresholdCount)) {
            body["AlertThresholdCount"] = request.alertThresholdCount!;
        }
        if (!TeaUtils.Client.isUnset(request.alertThresholdGroup)) {
            body["AlertThresholdGroup"] = request.alertThresholdGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertThresholdPeriod)) {
            body["AlertThresholdPeriod"] = request.alertThresholdPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertType)) {
            body["AlertType"] = request.alertType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionExpressionContent)) {
            body["DetectionExpressionContent"] = request.detectionExpressionContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionExpressionType)) {
            body["DetectionExpressionType"] = request.detectionExpressionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionRuleDescription)) {
            body["DetectionRuleDescription"] = request.detectionRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionRuleName)) {
            body["DetectionRuleName"] = request.detectionRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionRuleStatus)) {
            body["DetectionRuleStatus"] = request.detectionRuleStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionRuleType)) {
            body["DetectionRuleType"] = request.detectionRuleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entityMappings)) {
            body["EntityMappings"] = request.entityMappings ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentAggregationExpression)) {
            body["IncidentAggregationExpression"] = request.incidentAggregationExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentAggregationType)) {
            body["IncidentAggregationType"] = request.incidentAggregationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logCategoryId)) {
            body["LogCategoryId"] = request.logCategoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logSchemaId)) {
            body["LogSchemaId"] = request.logSchemaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookParameters)) {
            body["PlaybookParameters"] = request.playbookParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookUuid)) {
            body["PlaybookUuid"] = request.playbookUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleBeginTime)) {
            body["ScheduleBeginTime"] = request.scheduleBeginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleExpression)) {
            body["ScheduleExpression"] = request.scheduleExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleMaxRetries)) {
            body["ScheduleMaxRetries"] = request.scheduleMaxRetries!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleMaxTimeout)) {
            body["ScheduleMaxTimeout"] = request.scheduleMaxTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleType)) {
            body["ScheduleType"] = request.scheduleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleWindow)) {
            body["ScheduleWindow"] = request.scheduleWindow ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDetectionRule",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDetectionRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDetectionRule(_ request: CreateDetectionRuleRequest) async throws -> CreateDetectionRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDetectionRuleWithOptions(request as! CreateDetectionRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExportTaskWithOptions(_ request: CreateExportTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateExportTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.exportTaskParameter)) {
            body["ExportTaskParameter"] = request.exportTaskParameter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exportTaskType)) {
            body["ExportTaskType"] = request.exportTaskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateExportTask",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateExportTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createExportTask(_ request: CreateExportTaskRequest) async throws -> CreateExportTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createExportTaskWithOptions(request as! CreateExportTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLogStoreWithOptions(_ request: CreateLogStoreRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLogStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logProjectName)) {
            body["LogProjectName"] = request.logProjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRegionId)) {
            body["LogRegionId"] = request.logRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStoreName)) {
            body["LogStoreName"] = request.logStoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logUserId)) {
            body["LogUserId"] = request.logUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLogStore",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLogStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLogStore(_ request: CreateLogStoreRequest) async throws -> CreateLogStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLogStoreWithOptions(request as! CreateLogStoreRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNormalizationRuleWithOptions(_ tmpReq: CreateNormalizationRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNormalizationRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateNormalizationRuleShrinkRequest = CreateNormalizationRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.normalizationRuleIds)) {
            request.normalizationRuleIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.normalizationRuleIds, "NormalizationRuleIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extendContentPacked)) {
            body["ExtendContentPacked"] = request.extendContentPacked ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationCategoryId)) {
            body["NormalizationCategoryId"] = request.normalizationCategoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleDescription)) {
            body["NormalizationRuleDescription"] = request.normalizationRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleExpression)) {
            body["NormalizationRuleExpression"] = request.normalizationRuleExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleFormat)) {
            body["NormalizationRuleFormat"] = request.normalizationRuleFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleIdsShrink)) {
            body["NormalizationRuleIds"] = request.normalizationRuleIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleMode)) {
            body["NormalizationRuleMode"] = request.normalizationRuleMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleName)) {
            body["NormalizationRuleName"] = request.normalizationRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleType)) {
            body["NormalizationRuleType"] = request.normalizationRuleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleVersion)) {
            body["NormalizationRuleVersion"] = request.normalizationRuleVersion!;
        }
        if (!TeaUtils.Client.isUnset(request.normalizationSchemaId)) {
            body["NormalizationSchemaId"] = request.normalizationSchemaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderField)) {
            body["OrderField"] = request.orderField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["ProductId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.vendorId)) {
            body["VendorId"] = request.vendorId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNormalizationRule",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNormalizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNormalizationRule(_ request: CreateNormalizationRuleRequest) async throws -> CreateNormalizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNormalizationRuleWithOptions(request as! CreateNormalizationRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProductWithOptions(_ request: CreateProductRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProductResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productName)) {
            body["ProductName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.vendorName)) {
            body["VendorName"] = request.vendorName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProduct",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProduct(_ request: CreateProductRequest) async throws -> CreateProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createProductWithOptions(request as! CreateProductRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVendorWithOptions(_ request: CreateVendorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVendorResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.vendorName)) {
            body["VendorName"] = request.vendorName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVendor",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVendorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVendor(_ request: CreateVendorRequest) async throws -> CreateVendorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVendorWithOptions(request as! CreateVendorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataIngestionWithOptions(_ request: DeleteDataIngestionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDataIngestionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataIngestionId)) {
            body["DataIngestionId"] = request.dataIngestionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataIngestion",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDataIngestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataIngestion(_ request: DeleteDataIngestionRequest) async throws -> DeleteDataIngestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDataIngestionWithOptions(request as! DeleteDataIngestionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataSetWithOptions(_ request: DeleteDataSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDataSetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSetId)) {
            body["DataSetId"] = request.dataSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataSet",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDataSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataSet(_ request: DeleteDataSetRequest) async throws -> DeleteDataSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDataSetWithOptions(request as! DeleteDataSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataSetRecordWithOptions(_ request: DeleteDataSetRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDataSetRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSetId)) {
            body["DataSetId"] = request.dataSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSetRecordIds)) {
            body["DataSetRecordIds"] = request.dataSetRecordIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataSetRecord",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDataSetRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataSetRecord(_ request: DeleteDataSetRecordRequest) async throws -> DeleteDataSetRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDataSetRecordWithOptions(request as! DeleteDataSetRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataSourceWithOptions(_ request: DeleteDataSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDataSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataSource",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataSource(_ request: DeleteDataSourceRequest) async throws -> DeleteDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDataSourceWithOptions(request as! DeleteDataSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDetectionRuleWithOptions(_ request: DeleteDetectionRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDetectionRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.detectionRuleId)) {
            body["DetectionRuleId"] = request.detectionRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDetectionRule",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDetectionRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDetectionRule(_ request: DeleteDetectionRuleRequest) async throws -> DeleteDetectionRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDetectionRuleWithOptions(request as! DeleteDetectionRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogStoreWithOptions(_ request: DeleteLogStoreRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLogStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logProjectName)) {
            body["LogProjectName"] = request.logProjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRegionId)) {
            body["LogRegionId"] = request.logRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStoreName)) {
            body["LogStoreName"] = request.logStoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logUserId)) {
            body["LogUserId"] = request.logUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLogStore",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLogStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLogStore(_ request: DeleteLogStoreRequest) async throws -> DeleteLogStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLogStoreWithOptions(request as! DeleteLogStoreRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNormalizationRuleWithOptions(_ request: DeleteNormalizationRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNormalizationRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleId)) {
            body["NormalizationRuleId"] = request.normalizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNormalizationRule",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNormalizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNormalizationRule(_ request: DeleteNormalizationRuleRequest) async throws -> DeleteNormalizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNormalizationRuleWithOptions(request as! DeleteNormalizationRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNormalizationRuleVersionWithOptions(_ request: DeleteNormalizationRuleVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNormalizationRuleVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleId)) {
            body["NormalizationRuleId"] = request.normalizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleVersion)) {
            body["NormalizationRuleVersion"] = request.normalizationRuleVersion!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNormalizationRuleVersion",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNormalizationRuleVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNormalizationRuleVersion(_ request: DeleteNormalizationRuleVersionRequest) async throws -> DeleteNormalizationRuleVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNormalizationRuleVersionWithOptions(request as! DeleteNormalizationRuleVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProductWithOptions(_ request: DeleteProductRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProductResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["ProductId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProduct",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProduct(_ request: DeleteProductRequest) async throws -> DeleteProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteProductWithOptions(request as! DeleteProductRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVendorWithOptions(_ request: DeleteVendorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVendorResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.vendorId)) {
            body["VendorId"] = request.vendorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendorName)) {
            body["VendorName"] = request.vendorName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVendor",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVendorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVendor(_ request: DeleteVendorRequest) async throws -> DeleteVendorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteVendorWithOptions(request as! DeleteVendorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableDataIngestionWithOptions(_ request: DisableDataIngestionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableDataIngestionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataIngestionId)) {
            body["DataIngestionId"] = request.dataIngestionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableDataIngestion",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableDataIngestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableDataIngestion(_ request: DisableDataIngestionRequest) async throws -> DisableDataIngestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableDataIngestionWithOptions(request as! DisableDataIngestionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableDataIngestionWithOptions(_ request: EnableDataIngestionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableDataIngestionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataIngestionId)) {
            body["DataIngestionId"] = request.dataIngestionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["ProductId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableDataIngestion",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableDataIngestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableDataIngestion(_ request: EnableDataIngestionRequest) async throws -> EnableDataIngestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableDataIngestionWithOptions(request as! EnableDataIngestionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeLogQueryWithOptions(_ request: ExecuteLogQueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteLogQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extendContentPacked)) {
            body["ExtendContentPacked"] = request.extendContentPacked ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logProjectName)) {
            body["LogProjectName"] = request.logProjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logQuery)) {
            body["LogQuery"] = request.logQuery ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRegionId)) {
            body["LogRegionId"] = request.logRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStoreName)) {
            body["LogStoreName"] = request.logStoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logUserId)) {
            body["LogUserId"] = request.logUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.normalizationSchemaId)) {
            body["NormalizationSchemaId"] = request.normalizationSchemaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteLogQuery",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteLogQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeLogQuery(_ request: ExecuteLogQueryRequest) async throws -> ExecuteLogQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeLogQueryWithOptions(request as! ExecuteLogQueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeUpgradeWithOptions(_ request: ExecuteUpgradeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteUpgradeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteUpgrade",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteUpgradeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeUpgrade(_ request: ExecuteUpgradeRequest) async throws -> ExecuteUpgradeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeUpgradeWithOptions(request as! ExecuteUpgradeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataBatchIngestionWithOptions(_ request: GetDataBatchIngestionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataBatchIngestionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataBatchIngestion",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataBatchIngestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataBatchIngestion(_ request: GetDataBatchIngestionRequest) async throws -> GetDataBatchIngestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataBatchIngestionWithOptions(request as! GetDataBatchIngestionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataStorageWithOptions(_ request: GetDataStorageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDataStorageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataStorage",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDataStorageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataStorage(_ request: GetDataStorageRequest) async throws -> GetDataStorageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDataStorageWithOptions(request as! GetDataStorageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDetectionStatisticWithOptions(_ request: GetDetectionStatisticRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDetectionStatisticResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDetectionStatistic",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDetectionStatisticResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDetectionStatistic(_ request: GetDetectionStatisticRequest) async throws -> GetDetectionStatisticResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDetectionStatisticWithOptions(request as! GetDetectionStatisticRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExportTaskWithOptions(_ request: GetExportTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetExportTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.exportId)) {
            body["ExportId"] = request.exportId!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetExportTask",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetExportTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExportTask(_ request: GetExportTaskRequest) async throws -> GetExportTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getExportTaskWithOptions(request as! GetExportTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIncidentWithOptions(_ request: GetIncidentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIncidentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.incidentUuid)) {
            body["IncidentUuid"] = request.incidentUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIncident",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIncidentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIncident(_ request: GetIncidentRequest) async throws -> GetIncidentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getIncidentWithOptions(request as! GetIncidentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogTicketWithOptions(_ request: GetLogTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLogTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logUserId)) {
            body["LogUserId"] = request.logUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLogTicket",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLogTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogTicket(_ request: GetLogTicketRequest) async throws -> GetLogTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLogTicketWithOptions(request as! GetLogTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNormalizationRuleWithOptions(_ request: GetNormalizationRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNormalizationRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleId)) {
            body["NormalizationRuleId"] = request.normalizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNormalizationRule",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNormalizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNormalizationRule(_ request: GetNormalizationRuleRequest) async throws -> GetNormalizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNormalizationRuleWithOptions(request as! GetNormalizationRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNormalizationRuleVersionWithOptions(_ request: GetNormalizationRuleVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNormalizationRuleVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleId)) {
            body["NormalizationRuleId"] = request.normalizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleVersion)) {
            body["NormalizationRuleVersion"] = request.normalizationRuleVersion!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNormalizationRuleVersion",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNormalizationRuleVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNormalizationRuleVersion(_ request: GetNormalizationRuleVersionRequest) async throws -> GetNormalizationRuleVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNormalizationRuleVersionWithOptions(request as! GetNormalizationRuleVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNormalizationSchemaWithOptions(_ request: GetNormalizationSchemaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNormalizationSchemaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationSchemaId)) {
            body["NormalizationSchemaId"] = request.normalizationSchemaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationSchemaType)) {
            body["NormalizationSchemaType"] = request.normalizationSchemaType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNormalizationSchema",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNormalizationSchemaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNormalizationSchema(_ request: GetNormalizationSchemaRequest) async throws -> GetNormalizationSchemaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNormalizationSchemaWithOptions(request as! GetNormalizationSchemaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserConfigWithOptions(_ request: GetUserConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserConfig",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserConfig(_ request: GetUserConfigRequest) async throws -> GetUserConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserConfigWithOptions(request as! GetUserConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataIngestionTemplatesWithOptions(_ request: ListDataIngestionTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataIngestionTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataIngestionTemplateStatus)) {
            body["DataIngestionTemplateStatus"] = request.dataIngestionTemplateStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceTemplateIds)) {
            body["DataSourceTemplateIds"] = request.dataSourceTemplateIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["ProductId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataIngestionTemplates",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataIngestionTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataIngestionTemplates(_ request: ListDataIngestionTemplatesRequest) async throws -> ListDataIngestionTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataIngestionTemplatesWithOptions(request as! ListDataIngestionTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataIngestionsWithOptions(_ tmpReq: ListDataIngestionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataIngestionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDataIngestionsShrinkRequest = ListDataIngestionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataIngestionIds)) {
            request.dataIngestionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataIngestionIds, "DataIngestionIds", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.dataIngestionTemplateIds)) {
            request.dataIngestionTemplateIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataIngestionTemplateIds, "DataIngestionTemplateIds", "simple")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataIngestionIdsShrink)) {
            body["DataIngestionIds"] = request.dataIngestionIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataIngestionStatus)) {
            body["DataIngestionStatus"] = request.dataIngestionStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataIngestionTemplateIdsShrink)) {
            body["DataIngestionTemplateIds"] = request.dataIngestionTemplateIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["ProductId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataIngestions",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataIngestionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataIngestions(_ request: ListDataIngestionsRequest) async throws -> ListDataIngestionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataIngestionsWithOptions(request as! ListDataIngestionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSetRecordsWithOptions(_ request: ListDataSetRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataSetRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSetId)) {
            body["DataSetId"] = request.dataSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataSetRecords",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataSetRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSetRecords(_ request: ListDataSetRecordsRequest) async throws -> ListDataSetRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataSetRecordsWithOptions(request as! ListDataSetRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSetsWithOptions(_ tmpReq: ListDataSetsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataSetsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDataSetsShrinkRequest = ListDataSetsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataSetIds)) {
            request.dataSetIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataSetIds, "DataSetIds", "simple")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSetId)) {
            body["DataSetId"] = request.dataSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSetIdsShrink)) {
            body["DataSetIds"] = request.dataSetIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSetName)) {
            body["DataSetName"] = request.dataSetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSetStatus)) {
            body["DataSetStatus"] = request.dataSetStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSetType)) {
            body["DataSetType"] = request.dataSetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderDirection)) {
            body["OrderDirection"] = request.orderDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderFieldName)) {
            body["OrderFieldName"] = request.orderFieldName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataSets",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataSetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSets(_ request: ListDataSetsRequest) async throws -> ListDataSetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataSetsWithOptions(request as! ListDataSetsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSourceTemplatesWithOptions(_ tmpReq: ListDataSourceTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataSourceTemplatesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDataSourceTemplatesShrinkRequest = ListDataSourceTemplatesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataSourceTemplateIds)) {
            request.dataSourceTemplateIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataSourceTemplateIds, "DataSourceTemplateIds", "simple")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceTemplateIdsShrink)) {
            body["DataSourceTemplateIds"] = request.dataSourceTemplateIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataSourceTemplates",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataSourceTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSourceTemplates(_ request: ListDataSourceTemplatesRequest) async throws -> ListDataSourceTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataSourceTemplatesWithOptions(request as! ListDataSourceTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSourcesWithOptions(_ tmpReq: ListDataSourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataSourcesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDataSourcesShrinkRequest = ListDataSourcesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataSourceIds)) {
            request.dataSourceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataSourceIds, "DataSourceIds", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.dataSourceTemplateIds)) {
            request.dataSourceTemplateIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataSourceTemplateIds, "DataSourceTemplateIds", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.logUserIds)) {
            request.logUserIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.logUserIds, "LogUserIds", "simple")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceFrom)) {
            body["DataSourceFrom"] = request.dataSourceFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceIdsShrink)) {
            body["DataSourceIds"] = request.dataSourceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceName)) {
            body["DataSourceName"] = request.dataSourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceStatus)) {
            body["DataSourceStatus"] = request.dataSourceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceStoreStatus)) {
            body["DataSourceStoreStatus"] = request.dataSourceStoreStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceTemplateIdsShrink)) {
            body["DataSourceTemplateIds"] = request.dataSourceTemplateIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logProjectName)) {
            body["LogProjectName"] = request.logProjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRegionId)) {
            body["LogRegionId"] = request.logRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStoreName)) {
            body["LogStoreName"] = request.logStoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logUserIdsShrink)) {
            body["LogUserIds"] = request.logUserIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            body["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderField)) {
            body["OrderField"] = request.orderField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataSources",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataSourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSources(_ request: ListDataSourcesRequest) async throws -> ListDataSourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDataSourcesWithOptions(request as! ListDataSourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDetectionRulesWithOptions(_ tmpReq: ListDetectionRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDetectionRulesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListDetectionRulesShrinkRequest = ListDetectionRulesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.detectionRuleIds)) {
            request.detectionRuleIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.detectionRuleIds, "DetectionRuleIds", "simple")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertAttCk)) {
            body["AlertAttCk"] = request.alertAttCk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertLevel)) {
            body["AlertLevel"] = request.alertLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertTacticId)) {
            body["AlertTacticId"] = request.alertTacticId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertType)) {
            body["AlertType"] = request.alertType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionExpressionType)) {
            body["DetectionExpressionType"] = request.detectionExpressionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionRuleId)) {
            body["DetectionRuleId"] = request.detectionRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionRuleIdsShrink)) {
            body["DetectionRuleIds"] = request.detectionRuleIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionRuleName)) {
            body["DetectionRuleName"] = request.detectionRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionRuleStatus)) {
            body["DetectionRuleStatus"] = request.detectionRuleStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionRuleType)) {
            body["DetectionRuleType"] = request.detectionRuleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentAggregationType)) {
            body["IncidentAggregationType"] = request.incidentAggregationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logCategoryId)) {
            body["LogCategoryId"] = request.logCategoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logSchemaId)) {
            body["LogSchemaId"] = request.logSchemaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderDirection)) {
            body["OrderDirection"] = request.orderDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderFieldName)) {
            body["OrderFieldName"] = request.orderFieldName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDetectionRules",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDetectionRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDetectionRules(_ request: ListDetectionRulesRequest) async throws -> ListDetectionRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDetectionRulesWithOptions(request as! ListDetectionRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIncidentsWithOptions(_ tmpReq: ListIncidentsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIncidentsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListIncidentsShrinkRequest = ListIncidentsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.incidentUuids)) {
            request.incidentUuidsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.incidentUuids, "IncidentUuids", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.incidentName)) {
            query["IncidentName"] = request.incidentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentUuidsShrink)) {
            query["IncidentUuids"] = request.incidentUuidsShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertUuid)) {
            body["AlertUuid"] = request.alertUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.incidentStatus)) {
            body["IncidentStatus"] = request.incidentStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.incidentTags)) {
            body["IncidentTags"] = request.incidentTags ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderDirection)) {
            body["OrderDirection"] = request.orderDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderFieldName)) {
            body["OrderFieldName"] = request.orderFieldName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relateAssetId)) {
            body["RelateAssetId"] = request.relateAssetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relateEntityId)) {
            body["RelateEntityId"] = request.relateEntityId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.roleType)) {
            body["RoleType"] = request.roleType!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.threatLevel)) {
            body["ThreatLevel"] = request.threatLevel ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIncidents",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIncidentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIncidents(_ request: ListIncidentsRequest) async throws -> ListIncidentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listIncidentsWithOptions(request as! ListIncidentsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogProjectsWithOptions(_ request: ListLogProjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLogProjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRegionId)) {
            body["LogRegionId"] = request.logRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logUserId)) {
            body["LogUserId"] = request.logUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLogProjects",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLogProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogProjects(_ request: ListLogProjectsRequest) async throws -> ListLogProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLogProjectsWithOptions(request as! ListLogProjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogRegionsWithOptions(_ request: ListLogRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLogRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLogRegions",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLogRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogRegions(_ request: ListLogRegionsRequest) async throws -> ListLogRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLogRegionsWithOptions(request as! ListLogRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogStoresWithOptions(_ request: ListLogStoresRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLogStoresResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logProjectName)) {
            body["LogProjectName"] = request.logProjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRegionId)) {
            body["LogRegionId"] = request.logRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logUserId)) {
            body["LogUserId"] = request.logUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLogStores",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLogStoresResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogStores(_ request: ListLogStoresRequest) async throws -> ListLogStoresResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listLogStoresWithOptions(request as! ListLogStoresRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNormalizationCategoriesWithOptions(_ request: ListNormalizationCategoriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNormalizationCategoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationCategoryType)) {
            body["NormalizationCategoryType"] = request.normalizationCategoryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNormalizationCategories",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNormalizationCategoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNormalizationCategories(_ request: ListNormalizationCategoriesRequest) async throws -> ListNormalizationCategoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNormalizationCategoriesWithOptions(request as! ListNormalizationCategoriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNormalizationFieldsWithOptions(_ request: ListNormalizationFieldsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNormalizationFieldsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNormalizationFields",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNormalizationFieldsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNormalizationFields(_ request: ListNormalizationFieldsRequest) async throws -> ListNormalizationFieldsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNormalizationFieldsWithOptions(request as! ListNormalizationFieldsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNormalizationRuleCapacitiesWithOptions(_ tmpReq: ListNormalizationRuleCapacitiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNormalizationRuleCapacitiesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListNormalizationRuleCapacitiesShrinkRequest = ListNormalizationRuleCapacitiesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.normalizationRuleIds)) {
            request.normalizationRuleIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.normalizationRuleIds, "NormalizationRuleIds", "simple")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleId)) {
            body["NormalizationRuleId"] = request.normalizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleIdsShrink)) {
            body["NormalizationRuleIds"] = request.normalizationRuleIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNormalizationRuleCapacities",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNormalizationRuleCapacitiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNormalizationRuleCapacities(_ request: ListNormalizationRuleCapacitiesRequest) async throws -> ListNormalizationRuleCapacitiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNormalizationRuleCapacitiesWithOptions(request as! ListNormalizationRuleCapacitiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNormalizationRuleVersionsWithOptions(_ request: ListNormalizationRuleVersionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNormalizationRuleVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleId)) {
            body["NormalizationRuleId"] = request.normalizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNormalizationRuleVersions",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNormalizationRuleVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNormalizationRuleVersions(_ request: ListNormalizationRuleVersionsRequest) async throws -> ListNormalizationRuleVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNormalizationRuleVersionsWithOptions(request as! ListNormalizationRuleVersionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNormalizationRulesWithOptions(_ tmpReq: ListNormalizationRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNormalizationRulesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListNormalizationRulesShrinkRequest = ListNormalizationRulesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.normalizationRuleIds)) {
            request.normalizationRuleIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.normalizationRuleIds, "NormalizationRuleIds", "simple")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationCategoryId)) {
            body["NormalizationCategoryId"] = request.normalizationCategoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleIdsShrink)) {
            body["NormalizationRuleIds"] = request.normalizationRuleIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleName)) {
            body["NormalizationRuleName"] = request.normalizationRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleType)) {
            body["NormalizationRuleType"] = request.normalizationRuleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationSchemaId)) {
            body["NormalizationSchemaId"] = request.normalizationSchemaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderField)) {
            body["OrderField"] = request.orderField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            body["OrderType"] = request.orderType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["ProductId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.vendorId)) {
            body["VendorId"] = request.vendorId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNormalizationRules",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNormalizationRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNormalizationRules(_ request: ListNormalizationRulesRequest) async throws -> ListNormalizationRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNormalizationRulesWithOptions(request as! ListNormalizationRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNormalizationSchemasWithOptions(_ request: ListNormalizationSchemasRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNormalizationSchemasResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationCategoryId)) {
            body["NormalizationCategoryId"] = request.normalizationCategoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationSchemaType)) {
            body["NormalizationSchemaType"] = request.normalizationSchemaType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNormalizationSchemas",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNormalizationSchemasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNormalizationSchemas(_ request: ListNormalizationSchemasRequest) async throws -> ListNormalizationSchemasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNormalizationSchemasWithOptions(request as! ListNormalizationSchemasRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductsWithOptions(_ tmpReq: ListProductsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListProductsShrinkRequest = ListProductsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.productIds)) {
            request.productIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.productIds, "ProductIds", "simple")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productIdsShrink)) {
            body["ProductIds"] = request.productIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productName)) {
            body["ProductName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.vendorId)) {
            body["VendorId"] = request.vendorId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProducts",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProducts(_ request: ListProductsRequest) async throws -> ListProductsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProductsWithOptions(request as! ListProductsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrafficStatisticsWithOptions(_ tmpReq: ListTrafficStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrafficStatisticsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTrafficStatisticsShrinkRequest = ListTrafficStatisticsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.logUserIds)) {
            request.logUserIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.logUserIds, "LogUserIds", "simple")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logUserIdsShrink)) {
            body["LogUserIds"] = request.logUserIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["ProductId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionTag)) {
            body["RegionTag"] = request.regionTag!;
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.trafficStatisticPeriod)) {
            body["TrafficStatisticPeriod"] = request.trafficStatisticPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficStatisticPeriodType)) {
            body["TrafficStatisticPeriodType"] = request.trafficStatisticPeriodType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trafficStatisticType)) {
            body["TrafficStatisticType"] = request.trafficStatisticType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrafficStatistics",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrafficStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrafficStatistics(_ request: ListTrafficStatisticsRequest) async throws -> ListTrafficStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTrafficStatisticsWithOptions(request as! ListTrafficStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUpgradeItemsWithOptions(_ request: ListUpgradeItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUpgradeItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUpgradeItems",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUpgradeItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUpgradeItems(_ request: ListUpgradeItemsRequest) async throws -> ListUpgradeItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUpgradeItemsWithOptions(request as! ListUpgradeItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVendorsWithOptions(_ tmpReq: ListVendorsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVendorsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListVendorsShrinkRequest = ListVendorsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.vendorIds)) {
            request.vendorIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.vendorIds, "VendorIds", "simple")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.vendorIdsShrink)) {
            body["VendorIds"] = request.vendorIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendorName)) {
            body["VendorName"] = request.vendorName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendorType)) {
            body["VendorType"] = request.vendorType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVendors",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVendorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVendors(_ request: ListVendorsRequest) async throws -> ListVendorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listVendorsWithOptions(request as! ListVendorsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetDataStorageWithOptions(_ request: ResetDataStorageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetDataStorageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetDataStorage",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetDataStorageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetDataStorage(_ request: ResetDataStorageRequest) async throws -> ResetDataStorageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetDataStorageWithOptions(request as! ResetDataStorageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDefaultNormalizationRuleVersionWithOptions(_ request: SetDefaultNormalizationRuleVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDefaultNormalizationRuleVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleId)) {
            body["NormalizationRuleId"] = request.normalizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleVersion)) {
            body["NormalizationRuleVersion"] = request.normalizationRuleVersion!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDefaultNormalizationRuleVersion",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDefaultNormalizationRuleVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDefaultNormalizationRuleVersion(_ request: SetDefaultNormalizationRuleVersionRequest) async throws -> SetDefaultNormalizationRuleVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDefaultNormalizationRuleVersionWithOptions(request as! SetDefaultNormalizationRuleVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataBatchIngestionWithOptions(_ tmpReq: UpdateDataBatchIngestionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataBatchIngestionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateDataBatchIngestionShrinkRequest = UpdateDataBatchIngestionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataIngestionIds)) {
            request.dataIngestionIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataIngestionIds, "DataIngestionIds", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.logUserIds)) {
            request.logUserIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.logUserIds, "LogUserIds", "simple")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoScanNew)) {
            body["AutoScanNew"] = request.autoScanNew ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataBatchIngestionMode)) {
            body["DataBatchIngestionMode"] = request.dataBatchIngestionMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataIngestionIdsShrink)) {
            body["DataIngestionIds"] = request.dataIngestionIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceRecognizeEnabled)) {
            body["DataSourceRecognizeEnabled"] = request.dataSourceRecognizeEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logUserIdsShrink)) {
            body["LogUserIds"] = request.logUserIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataBatchIngestion",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataBatchIngestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataBatchIngestion(_ request: UpdateDataBatchIngestionRequest) async throws -> UpdateDataBatchIngestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataBatchIngestionWithOptions(request as! UpdateDataBatchIngestionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataIngestionWithOptions(_ request: UpdateDataIngestionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataIngestionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataIngestionId)) {
            body["DataIngestionId"] = request.dataIngestionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataIngestionMode)) {
            body["DataIngestionMode"] = request.dataIngestionMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleId)) {
            body["NormalizationRuleId"] = request.normalizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataIngestion",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataIngestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataIngestion(_ request: UpdateDataIngestionRequest) async throws -> UpdateDataIngestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataIngestionWithOptions(request as! UpdateDataIngestionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataIngestionTemplateWithOptions(_ request: UpdateDataIngestionTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataIngestionTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataIngestionStatus)) {
            body["DataIngestionStatus"] = request.dataIngestionStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataIngestionTemplateId)) {
            body["DataIngestionTemplateId"] = request.dataIngestionTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataIngestionTemplateName)) {
            body["DataIngestionTemplateName"] = request.dataIngestionTemplateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleId)) {
            body["NormalizationRuleId"] = request.normalizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataIngestionTemplate",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataIngestionTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataIngestionTemplate(_ request: UpdateDataIngestionTemplateRequest) async throws -> UpdateDataIngestionTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataIngestionTemplateWithOptions(request as! UpdateDataIngestionTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSetWithOptions(_ request: UpdateDataSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataSetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSetDescription)) {
            body["DataSetDescription"] = request.dataSetDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSetFileName)) {
            body["DataSetFileName"] = request.dataSetFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSetId)) {
            body["DataSetId"] = request.dataSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSetName)) {
            body["DataSetName"] = request.dataSetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSetStatus)) {
            body["DataSetStatus"] = request.dataSetStatus!;
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ipWhitelistRecognizers)) {
            bodyFlat["IpWhitelistRecognizers"] = request.ipWhitelistRecognizers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataSet",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSet(_ request: UpdateDataSetRequest) async throws -> UpdateDataSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataSetWithOptions(request as! UpdateDataSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSetRecordWithOptions(_ request: UpdateDataSetRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataSetRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSetFileName)) {
            body["DataSetFileName"] = request.dataSetFileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSetId)) {
            body["DataSetId"] = request.dataSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSetRecords)) {
            body["DataSetRecords"] = request.dataSetRecords ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataSetRecord",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataSetRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSetRecord(_ request: UpdateDataSetRecordRequest) async throws -> UpdateDataSetRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataSetRecordWithOptions(request as! UpdateDataSetRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSourceWithOptions(_ request: UpdateDataSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceFrom)) {
            body["DataSourceFrom"] = request.dataSourceFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceName)) {
            body["DataSourceName"] = request.dataSourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceRecognizeEnabled)) {
            body["DataSourceRecognizeEnabled"] = request.dataSourceRecognizeEnabled!;
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceStores)) {
            bodyFlat["DataSourceStores"] = request.dataSourceStores ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logProjectName)) {
            body["LogProjectName"] = request.logProjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRegionId)) {
            body["LogRegionId"] = request.logRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStoreName)) {
            body["LogStoreName"] = request.logStoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logUserId)) {
            body["LogUserId"] = request.logUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.orderField)) {
            body["OrderField"] = request.orderField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataSource",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSource(_ request: UpdateDataSourceRequest) async throws -> UpdateDataSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataSourceWithOptions(request as! UpdateDataSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSourceTemplateWithOptions(_ tmpReq: UpdateDataSourceTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataSourceTemplateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateDataSourceTemplateShrinkRequest = UpdateDataSourceTemplateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.logUserIds)) {
            request.logUserIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.logUserIds, "LogUserIds", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceRecognizeEnabled)) {
            query["DataSourceRecognizeEnabled"] = request.dataSourceRecognizeEnabled!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoScanNew)) {
            body["AutoScanNew"] = request.autoScanNew ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceTemplateId)) {
            body["DataSourceTemplateId"] = request.dataSourceTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceTemplateName)) {
            body["DataSourceTemplateName"] = request.dataSourceTemplateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logProjectPattern)) {
            body["LogProjectPattern"] = request.logProjectPattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRegionIds)) {
            body["LogRegionIds"] = request.logRegionIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStorePattern)) {
            body["LogStorePattern"] = request.logStorePattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logUserIdsShrink)) {
            body["LogUserIds"] = request.logUserIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataSourceTemplate",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataSourceTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataSourceTemplate(_ request: UpdateDataSourceTemplateRequest) async throws -> UpdateDataSourceTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataSourceTemplateWithOptions(request as! UpdateDataSourceTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataStorageWithOptions(_ request: UpdateDataStorageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataStorageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataStorageRegionId)) {
            body["DataStorageRegionId"] = request.dataStorageRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryStatus)) {
            body["DeliveryStatus"] = request.deliveryStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataStorage",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataStorageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataStorage(_ request: UpdateDataStorageRequest) async throws -> UpdateDataStorageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataStorageWithOptions(request as! UpdateDataStorageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataStorageDeliveryWithOptions(_ request: UpdateDataStorageDeliveryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataStorageDeliveryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logCode)) {
            body["LogCode"] = request.logCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logDeliveryStatus)) {
            body["LogDeliveryStatus"] = request.logDeliveryStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataStorageDelivery",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataStorageDeliveryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataStorageDelivery(_ request: UpdateDataStorageDeliveryRequest) async throws -> UpdateDataStorageDeliveryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataStorageDeliveryWithOptions(request as! UpdateDataStorageDeliveryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataStorageTtlWithOptions(_ request: UpdateDataStorageTtlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDataStorageTtlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStoreColdTtl)) {
            body["LogStoreColdTtl"] = request.logStoreColdTtl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStoreHotTtl)) {
            body["LogStoreHotTtl"] = request.logStoreHotTtl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStoreName)) {
            body["LogStoreName"] = request.logStoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStoreTtl)) {
            body["LogStoreTtl"] = request.logStoreTtl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataStorageTtl",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDataStorageTtlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataStorageTtl(_ request: UpdateDataStorageTtlRequest) async throws -> UpdateDataStorageTtlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDataStorageTtlWithOptions(request as! UpdateDataStorageTtlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDetectionRuleWithOptions(_ request: UpdateDetectionRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDetectionRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertAttCk)) {
            body["AlertAttCk"] = request.alertAttCk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertLevel)) {
            body["AlertLevel"] = request.alertLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertSchemaId)) {
            body["AlertSchemaId"] = request.alertSchemaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertTacticId)) {
            body["AlertTacticId"] = request.alertTacticId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertThresholdCount)) {
            body["AlertThresholdCount"] = request.alertThresholdCount!;
        }
        if (!TeaUtils.Client.isUnset(request.alertThresholdGroup)) {
            body["AlertThresholdGroup"] = request.alertThresholdGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertThresholdPeriod)) {
            body["AlertThresholdPeriod"] = request.alertThresholdPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertType)) {
            body["AlertType"] = request.alertType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionExpressionContent)) {
            body["DetectionExpressionContent"] = request.detectionExpressionContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionExpressionType)) {
            body["DetectionExpressionType"] = request.detectionExpressionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionRuleDescription)) {
            body["DetectionRuleDescription"] = request.detectionRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionRuleId)) {
            body["DetectionRuleId"] = request.detectionRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionRuleName)) {
            body["DetectionRuleName"] = request.detectionRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionRuleStatus)) {
            body["DetectionRuleStatus"] = request.detectionRuleStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionRuleType)) {
            body["DetectionRuleType"] = request.detectionRuleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entityMappings)) {
            body["EntityMappings"] = request.entityMappings ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentAggregationExpression)) {
            body["IncidentAggregationExpression"] = request.incidentAggregationExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentAggregationType)) {
            body["IncidentAggregationType"] = request.incidentAggregationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logCategoryId)) {
            body["LogCategoryId"] = request.logCategoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logSchemaId)) {
            body["LogSchemaId"] = request.logSchemaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookParameters)) {
            body["PlaybookParameters"] = request.playbookParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.playbookUuid)) {
            body["PlaybookUuid"] = request.playbookUuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleBeginTime)) {
            body["ScheduleBeginTime"] = request.scheduleBeginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleExpression)) {
            body["ScheduleExpression"] = request.scheduleExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleMaxRetries)) {
            body["ScheduleMaxRetries"] = request.scheduleMaxRetries!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleMaxTimeout)) {
            body["ScheduleMaxTimeout"] = request.scheduleMaxTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleType)) {
            body["ScheduleType"] = request.scheduleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleWindow)) {
            body["ScheduleWindow"] = request.scheduleWindow ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDetectionRule",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDetectionRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDetectionRule(_ request: UpdateDetectionRuleRequest) async throws -> UpdateDetectionRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDetectionRuleWithOptions(request as! UpdateDetectionRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNormalizationRuleWithOptions(_ tmpReq: UpdateNormalizationRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateNormalizationRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateNormalizationRuleShrinkRequest = UpdateNormalizationRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.normalizationRuleIds)) {
            request.normalizationRuleIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.normalizationRuleIds, "NormalizationRuleIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extendContentPacked)) {
            body["ExtendContentPacked"] = request.extendContentPacked ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleDescription)) {
            body["NormalizationRuleDescription"] = request.normalizationRuleDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleExpression)) {
            body["NormalizationRuleExpression"] = request.normalizationRuleExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleFormat)) {
            body["NormalizationRuleFormat"] = request.normalizationRuleFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleId)) {
            body["NormalizationRuleId"] = request.normalizationRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleIdsShrink)) {
            body["NormalizationRuleIds"] = request.normalizationRuleIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleMode)) {
            body["NormalizationRuleMode"] = request.normalizationRuleMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleName)) {
            body["NormalizationRuleName"] = request.normalizationRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationRuleType)) {
            body["NormalizationRuleType"] = request.normalizationRuleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationSchemaId)) {
            body["NormalizationSchemaId"] = request.normalizationSchemaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderField)) {
            body["OrderField"] = request.orderField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["ProductId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.vendorId)) {
            body["VendorId"] = request.vendorId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateNormalizationRule",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateNormalizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNormalizationRule(_ request: UpdateNormalizationRuleRequest) async throws -> UpdateNormalizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateNormalizationRuleWithOptions(request as! UpdateNormalizationRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProductWithOptions(_ request: UpdateProductRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProductResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["ProductId"] = request.productId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productName)) {
            body["ProductName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.vendorName)) {
            body["VendorName"] = request.vendorName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProduct",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProduct(_ request: UpdateProductRequest) async throws -> UpdateProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateProductWithOptions(request as! UpdateProductRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVendorWithOptions(_ request: UpdateVendorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateVendorResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        if (!TeaUtils.Client.isUnset(request.vendorId)) {
            body["VendorId"] = request.vendorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendorName)) {
            body["VendorName"] = request.vendorName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateVendor",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateVendorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVendor(_ request: UpdateVendorRequest) async throws -> UpdateVendorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateVendorWithOptions(request as! UpdateVendorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateLogStoreWithOptions(_ request: ValidateLogStoreRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateLogStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logProjectName)) {
            body["LogProjectName"] = request.logProjectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRegionId)) {
            body["LogRegionId"] = request.logRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStoreName)) {
            body["LogStoreName"] = request.logStoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logUserId)) {
            body["LogUserId"] = request.logUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateLogStore",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateLogStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateLogStore(_ request: ValidateLogStoreRequest) async throws -> ValidateLogStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await validateLogStoreWithOptions(request as! ValidateLogStoreRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateNormalizationRuleWithOptions(_ request: ValidateNormalizationRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateNormalizationRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            body["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationCategoryId)) {
            body["NormalizationCategoryId"] = request.normalizationCategoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.normalizationSchemaId)) {
            body["NormalizationSchemaId"] = request.normalizationSchemaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleFor)) {
            body["RoleFor"] = request.roleFor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateNormalizationRule",
            "version": "2024-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateNormalizationRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateNormalizationRule(_ request: ValidateNormalizationRuleRequest) async throws -> ValidateNormalizationRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await validateNormalizationRuleWithOptions(request as! ValidateNormalizationRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
