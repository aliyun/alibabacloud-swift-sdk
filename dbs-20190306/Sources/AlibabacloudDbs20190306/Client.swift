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
            "cn-qingdao": "dbs-api.cn-hangzhou.aliyuncs.com",
            "cn-beijing": "dbs-api.cn-hangzhou.aliyuncs.com",
            "cn-chengdu": "dbs-api.cn-chengdu.aliyuncs.com",
            "cn-zhangjiakou": "dbs-api.cn-hangzhou.aliyuncs.com",
            "cn-huhehaote": "dbs-api.cn-huhehaote.aliyuncs.com",
            "cn-hangzhou": "dbs-api.cn-hangzhou.aliyuncs.com",
            "cn-shanghai": "dbs-api.cn-hangzhou.aliyuncs.com",
            "cn-shenzhen": "dbs-api.cn-hangzhou.aliyuncs.com",
            "cn-hongkong": "dbs-api.cn-hangzhou.aliyuncs.com",
            "ap-southeast-1": "dbs-api.ap-southeast-1.aliyuncs.com",
            "ap-southeast-2": "dbs-api.ap-southeast-2.aliyuncs.com",
            "ap-southeast-3": "dbs-api.ap-southeast-3.aliyuncs.com",
            "ap-southeast-5": "dbs-api.ap-southeast-5.aliyuncs.com",
            "ap-northeast-1": "dbs-api.ap-northeast-1.aliyuncs.com",
            "us-west-1": "dbs-api.cn-hangzhou.aliyuncs.com",
            "us-east-1": "dbs-api.cn-hangzhou.aliyuncs.com",
            "eu-central-1": "dbs-api.eu-central-1.aliyuncs.com",
            "cn-hangzhou-finance": "dbs-api.cn-hangzhou.aliyuncs.com",
            "cn-shanghai-finance-1": "dbs-api.cn-hangzhou.aliyuncs.com",
            "cn-shenzhen-finance-1": "dbs-api.cn-hangzhou.aliyuncs.com",
            "ap-south-1": "dbs-api.ap-south-1.aliyuncs.com",
            "eu-west-1": "dbs-api.eu-west-1.aliyuncs.com",
            "me-east-1": "dbs-api.me-east-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("dbs", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func configureBackupPlanWithOptions(_ request: ConfigureBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigureBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoStartBackup)) {
            query["AutoStartBackup"] = request.autoStartBackup!;
        }
        if (!TeaUtils.Client.isUnset(request.backupGatewayId)) {
            query["BackupGatewayId"] = request.backupGatewayId!;
        }
        if (!TeaUtils.Client.isUnset(request.backupLogIntervalSeconds)) {
            query["BackupLogIntervalSeconds"] = request.backupLogIntervalSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.backupObjects)) {
            query["BackupObjects"] = request.backupObjects ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupPeriod)) {
            query["BackupPeriod"] = request.backupPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupPlanName)) {
            query["BackupPlanName"] = request.backupPlanName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupRateLimit)) {
            query["BackupRateLimit"] = request.backupRateLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.backupRetentionPeriod)) {
            query["BackupRetentionPeriod"] = request.backupRetentionPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.backupSpeedLimit)) {
            query["BackupSpeedLimit"] = request.backupSpeedLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.backupStartTime)) {
            query["BackupStartTime"] = request.backupStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupStorageType)) {
            query["BackupStorageType"] = request.backupStorageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupStrategyType)) {
            query["BackupStrategyType"] = request.backupStrategyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAliyunId)) {
            query["CrossAliyunId"] = request.crossAliyunId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossRoleName)) {
            query["CrossRoleName"] = request.crossRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duplicationArchivePeriod)) {
            query["DuplicationArchivePeriod"] = request.duplicationArchivePeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.duplicationInfrequentAccessPeriod)) {
            query["DuplicationInfrequentAccessPeriod"] = request.duplicationInfrequentAccessPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.enableBackupLog)) {
            query["EnableBackupLog"] = request.enableBackupLog!;
        }
        if (!TeaUtils.Client.isUnset(request.OSSBucketName)) {
            query["OSSBucketName"] = request.OSSBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointDatabaseName)) {
            query["SourceEndpointDatabaseName"] = request.sourceEndpointDatabaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointIP)) {
            query["SourceEndpointIP"] = request.sourceEndpointIP ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointInstanceID)) {
            query["SourceEndpointInstanceID"] = request.sourceEndpointInstanceID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointInstanceType)) {
            query["SourceEndpointInstanceType"] = request.sourceEndpointInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointOracleSID)) {
            query["SourceEndpointOracleSID"] = request.sourceEndpointOracleSID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointPassword)) {
            query["SourceEndpointPassword"] = request.sourceEndpointPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointPort)) {
            query["SourceEndpointPort"] = request.sourceEndpointPort!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointRegion)) {
            query["SourceEndpointRegion"] = request.sourceEndpointRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointUserName)) {
            query["SourceEndpointUserName"] = request.sourceEndpointUserName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigureBackupPlan",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigureBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureBackupPlan(_ request: ConfigureBackupPlanRequest) async throws -> ConfigureBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configureBackupPlanWithOptions(request as! ConfigureBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAndStartBackupPlanWithOptions(_ request: CreateAndStartBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAndStartBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupGatewayId)) {
            query["BackupGatewayId"] = request.backupGatewayId!;
        }
        if (!TeaUtils.Client.isUnset(request.backupLogIntervalSeconds)) {
            query["BackupLogIntervalSeconds"] = request.backupLogIntervalSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.backupMethod)) {
            query["BackupMethod"] = request.backupMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupObjects)) {
            query["BackupObjects"] = request.backupObjects ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupPeriod)) {
            query["BackupPeriod"] = request.backupPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupPlanName)) {
            query["BackupPlanName"] = request.backupPlanName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupRateLimit)) {
            query["BackupRateLimit"] = request.backupRateLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.backupRetentionPeriod)) {
            query["BackupRetentionPeriod"] = request.backupRetentionPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.backupSpeedLimit)) {
            query["BackupSpeedLimit"] = request.backupSpeedLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.backupStartTime)) {
            query["BackupStartTime"] = request.backupStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupStorageType)) {
            query["BackupStorageType"] = request.backupStorageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupStrategyType)) {
            query["BackupStrategyType"] = request.backupStrategyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAliyunId)) {
            query["CrossAliyunId"] = request.crossAliyunId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossRoleName)) {
            query["CrossRoleName"] = request.crossRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseRegion)) {
            query["DatabaseRegion"] = request.databaseRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseType)) {
            query["DatabaseType"] = request.databaseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duplicationArchivePeriod)) {
            query["DuplicationArchivePeriod"] = request.duplicationArchivePeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.duplicationInfrequentAccessPeriod)) {
            query["DuplicationInfrequentAccessPeriod"] = request.duplicationInfrequentAccessPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.enableBackupLog)) {
            query["EnableBackupLog"] = request.enableBackupLog!;
        }
        if (!TeaUtils.Client.isUnset(request.fromApp)) {
            query["FromApp"] = request.fromApp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceClass)) {
            query["InstanceClass"] = request.instanceClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSSBucketName)) {
            query["OSSBucketName"] = request.OSSBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointDatabaseName)) {
            query["SourceEndpointDatabaseName"] = request.sourceEndpointDatabaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointIP)) {
            query["SourceEndpointIP"] = request.sourceEndpointIP ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointInstanceID)) {
            query["SourceEndpointInstanceID"] = request.sourceEndpointInstanceID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointInstanceType)) {
            query["SourceEndpointInstanceType"] = request.sourceEndpointInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointOracleSID)) {
            query["SourceEndpointOracleSID"] = request.sourceEndpointOracleSID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointPassword)) {
            query["SourceEndpointPassword"] = request.sourceEndpointPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointPort)) {
            query["SourceEndpointPort"] = request.sourceEndpointPort!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointRegion)) {
            query["SourceEndpointRegion"] = request.sourceEndpointRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointUserName)) {
            query["SourceEndpointUserName"] = request.sourceEndpointUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageRegion)) {
            query["StorageRegion"] = request.storageRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageType)) {
            query["StorageType"] = request.storageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usedTime)) {
            query["UsedTime"] = request.usedTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAndStartBackupPlan",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAndStartBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAndStartBackupPlan(_ request: CreateAndStartBackupPlanRequest) async throws -> CreateAndStartBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAndStartBackupPlanWithOptions(request as! CreateAndStartBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackupPlanWithOptions(_ request: CreateBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupMethod)) {
            query["BackupMethod"] = request.backupMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseRegion)) {
            query["DatabaseRegion"] = request.databaseRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseType)) {
            query["DatabaseType"] = request.databaseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromApp)) {
            query["FromApp"] = request.fromApp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceClass)) {
            query["InstanceClass"] = request.instanceClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageRegion)) {
            query["StorageRegion"] = request.storageRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageType)) {
            query["StorageType"] = request.storageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usedTime)) {
            query["UsedTime"] = request.usedTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBackupPlan",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackupPlan(_ request: CreateBackupPlanRequest) async throws -> CreateBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBackupPlanWithOptions(request as! CreateBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFullBackupSetDownloadWithOptions(_ request: CreateFullBackupSetDownloadRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFullBackupSetDownloadResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupSetDataFormat)) {
            query["BackupSetDataFormat"] = request.backupSetDataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupSetId)) {
            query["BackupSetId"] = request.backupSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFullBackupSetDownload",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFullBackupSetDownloadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFullBackupSetDownload(_ request: CreateFullBackupSetDownloadRequest) async throws -> CreateFullBackupSetDownloadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFullBackupSetDownloadWithOptions(request as! CreateFullBackupSetDownloadRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGetDBListFromAgentTaskWithOptions(_ request: CreateGetDBListFromAgentTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGetDBListFromAgentTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupGatewayId)) {
            query["BackupGatewayId"] = request.backupGatewayId!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseType)) {
            query["DatabaseType"] = request.databaseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointIP)) {
            query["SourceEndpointIP"] = request.sourceEndpointIP ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointPort)) {
            query["SourceEndpointPort"] = request.sourceEndpointPort!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointRegion)) {
            query["SourceEndpointRegion"] = request.sourceEndpointRegion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGetDBListFromAgentTask",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGetDBListFromAgentTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGetDBListFromAgentTask(_ request: CreateGetDBListFromAgentTaskRequest) async throws -> CreateGetDBListFromAgentTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGetDBListFromAgentTaskWithOptions(request as! CreateGetDBListFromAgentTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIncrementBackupSetDownloadWithOptions(_ request: CreateIncrementBackupSetDownloadRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIncrementBackupSetDownloadResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupSetDataFormat)) {
            query["BackupSetDataFormat"] = request.backupSetDataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupSetId)) {
            query["BackupSetId"] = request.backupSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupSetName)) {
            query["BackupSetName"] = request.backupSetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIncrementBackupSetDownload",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIncrementBackupSetDownloadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIncrementBackupSetDownload(_ request: CreateIncrementBackupSetDownloadRequest) async throws -> CreateIncrementBackupSetDownloadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createIncrementBackupSetDownloadWithOptions(request as! CreateIncrementBackupSetDownloadRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRestoreTaskWithOptions(_ request: CreateRestoreTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRestoreTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupGatewayId)) {
            query["BackupGatewayId"] = request.backupGatewayId!;
        }
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupSetId)) {
            query["BackupSetId"] = request.backupSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAliyunId)) {
            query["CrossAliyunId"] = request.crossAliyunId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossRoleName)) {
            query["CrossRoleName"] = request.crossRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointDatabaseName)) {
            query["DestinationEndpointDatabaseName"] = request.destinationEndpointDatabaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointIP)) {
            query["DestinationEndpointIP"] = request.destinationEndpointIP ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointInstanceID)) {
            query["DestinationEndpointInstanceID"] = request.destinationEndpointInstanceID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointInstanceType)) {
            query["DestinationEndpointInstanceType"] = request.destinationEndpointInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointOracleSID)) {
            query["DestinationEndpointOracleSID"] = request.destinationEndpointOracleSID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointPassword)) {
            query["DestinationEndpointPassword"] = request.destinationEndpointPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointPort)) {
            query["DestinationEndpointPort"] = request.destinationEndpointPort!;
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointRegion)) {
            query["DestinationEndpointRegion"] = request.destinationEndpointRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpointUserName)) {
            query["DestinationEndpointUserName"] = request.destinationEndpointUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duplicateConflict)) {
            query["DuplicateConflict"] = request.duplicateConflict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreDir)) {
            query["RestoreDir"] = request.restoreDir ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreHome)) {
            query["RestoreHome"] = request.restoreHome ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreObjects)) {
            query["RestoreObjects"] = request.restoreObjects ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreTaskName)) {
            query["RestoreTaskName"] = request.restoreTaskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreTime)) {
            query["RestoreTime"] = request.restoreTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRestoreTask",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRestoreTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRestoreTask(_ request: CreateRestoreTaskRequest) async throws -> CreateRestoreTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRestoreTaskWithOptions(request as! CreateRestoreTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupGatewayListWithOptions(_ request: DescribeBackupGatewayListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupGatewayListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupGatewayList",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupGatewayListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupGatewayList(_ request: DescribeBackupGatewayListRequest) async throws -> DescribeBackupGatewayListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupGatewayListWithOptions(request as! DescribeBackupGatewayListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPlanBillingWithOptions(_ request: DescribeBackupPlanBillingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupPlanBillingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showStorageType)) {
            query["ShowStorageType"] = request.showStorageType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupPlanBilling",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupPlanBillingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPlanBilling(_ request: DescribeBackupPlanBillingRequest) async throws -> DescribeBackupPlanBillingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupPlanBillingWithOptions(request as! DescribeBackupPlanBillingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPlanListWithOptions(_ request: DescribeBackupPlanListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupPlanListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupPlanName)) {
            query["BackupPlanName"] = request.backupPlanName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupPlanStatus)) {
            query["BackupPlanStatus"] = request.backupPlanStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupPlanList",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupPlanListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPlanList(_ request: DescribeBackupPlanListRequest) async throws -> DescribeBackupPlanListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupPlanListWithOptions(request as! DescribeBackupPlanListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupSetDownloadTaskListWithOptions(_ request: DescribeBackupSetDownloadTaskListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupSetDownloadTaskListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupSetDownloadTaskId)) {
            query["BackupSetDownloadTaskId"] = request.backupSetDownloadTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupSetDownloadTaskList",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupSetDownloadTaskListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupSetDownloadTaskList(_ request: DescribeBackupSetDownloadTaskListRequest) async throws -> DescribeBackupSetDownloadTaskListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupSetDownloadTaskListWithOptions(request as! DescribeBackupSetDownloadTaskListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDLAServiceWithOptions(_ request: DescribeDLAServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDLAServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDLAService",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDLAServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDLAService(_ request: DescribeDLAServiceRequest) async throws -> DescribeDLAServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDLAServiceWithOptions(request as! DescribeDLAServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFullBackupListWithOptions(_ request: DescribeFullBackupListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFullBackupListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupSetId)) {
            query["BackupSetId"] = request.backupSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.showStorageType)) {
            query["ShowStorageType"] = request.showStorageType!;
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFullBackupList",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFullBackupListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFullBackupList(_ request: DescribeFullBackupListRequest) async throws -> DescribeFullBackupListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFullBackupListWithOptions(request as! DescribeFullBackupListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIncrementBackupListWithOptions(_ request: DescribeIncrementBackupListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIncrementBackupListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.showStorageType)) {
            query["ShowStorageType"] = request.showStorageType!;
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeIncrementBackupList",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIncrementBackupListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIncrementBackupList(_ request: DescribeIncrementBackupListRequest) async throws -> DescribeIncrementBackupListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeIncrementBackupListWithOptions(request as! DescribeIncrementBackupListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeJobErrorCodeWithOptions(_ request: DescribeJobErrorCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeJobErrorCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeJobErrorCode",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeJobErrorCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeJobErrorCode(_ request: DescribeJobErrorCodeRequest) async throws -> DescribeJobErrorCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeJobErrorCodeWithOptions(request as! DescribeJobErrorCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNodeCidrListWithOptions(_ request: DescribeNodeCidrListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNodeCidrListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNodeCidrList",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNodeCidrListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNodeCidrList(_ request: DescribeNodeCidrListRequest) async throws -> DescribeNodeCidrListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNodeCidrListWithOptions(request as! DescribeNodeCidrListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePreCheckProgressListWithOptions(_ request: DescribePreCheckProgressListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePreCheckProgressListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreTaskId)) {
            query["RestoreTaskId"] = request.restoreTaskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePreCheckProgressList",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePreCheckProgressListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePreCheckProgressList(_ request: DescribePreCheckProgressListRequest) async throws -> DescribePreCheckProgressListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePreCheckProgressListWithOptions(request as! DescribePreCheckProgressListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegions(_ request: DescribeRegionsRequest) async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRegionsWithOptions(request as! DescribeRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRestoreRangeInfoWithOptions(_ request: DescribeRestoreRangeInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRestoreRangeInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.beginTimestampForRestore)) {
            query["BeginTimestampForRestore"] = request.beginTimestampForRestore!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTimestampForRestore)) {
            query["EndTimestampForRestore"] = request.endTimestampForRestore!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recentlyRestore)) {
            query["RecentlyRestore"] = request.recentlyRestore!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRestoreRangeInfo",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRestoreRangeInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRestoreRangeInfo(_ request: DescribeRestoreRangeInfoRequest) async throws -> DescribeRestoreRangeInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRestoreRangeInfoWithOptions(request as! DescribeRestoreRangeInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRestoreTaskListWithOptions(_ request: DescribeRestoreTaskListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRestoreTaskListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.restoreTaskId)) {
            query["RestoreTaskId"] = request.restoreTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRestoreTaskList",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRestoreTaskListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRestoreTaskList(_ request: DescribeRestoreTaskListRequest) async throws -> DescribeRestoreTaskListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRestoreTaskListWithOptions(request as! DescribeRestoreTaskListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableBackupLogWithOptions(_ request: DisableBackupLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableBackupLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableBackupLog",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableBackupLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableBackupLog(_ request: DisableBackupLogRequest) async throws -> DisableBackupLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableBackupLogWithOptions(request as! DisableBackupLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableBackupLogWithOptions(_ request: EnableBackupLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableBackupLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableBackupLog",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableBackupLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableBackupLog(_ request: EnableBackupLogRequest) async throws -> EnableBackupLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableBackupLogWithOptions(request as! EnableBackupLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDBListFromAgentWithOptions(_ request: GetDBListFromAgentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDBListFromAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupGatewayId)) {
            query["BackupGatewayId"] = request.backupGatewayId!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointRegion)) {
            query["SourceEndpointRegion"] = request.sourceEndpointRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDBListFromAgent",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDBListFromAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDBListFromAgent(_ request: GetDBListFromAgentRequest) async throws -> GetDBListFromAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDBListFromAgentWithOptions(request as! GetDBListFromAgentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initializeDbsServiceLinkedRoleWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> InitializeDbsServiceLinkedRoleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InitializeDbsServiceLinkedRole",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitializeDbsServiceLinkedRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initializeDbsServiceLinkedRole() async throws -> InitializeDbsServiceLinkedRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await initializeDbsServiceLinkedRoleWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackupObjectsWithOptions(_ request: ModifyBackupObjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBackupObjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupObjects)) {
            query["BackupObjects"] = request.backupObjects ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyBackupObjects",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBackupObjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackupObjects(_ request: ModifyBackupObjectsRequest) async throws -> ModifyBackupObjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBackupObjectsWithOptions(request as! ModifyBackupObjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackupPlanNameWithOptions(_ request: ModifyBackupPlanNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBackupPlanNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupPlanName)) {
            query["BackupPlanName"] = request.backupPlanName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyBackupPlanName",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBackupPlanNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackupPlanName(_ request: ModifyBackupPlanNameRequest) async throws -> ModifyBackupPlanNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBackupPlanNameWithOptions(request as! ModifyBackupPlanNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackupSetDownloadRulesWithOptions(_ request: ModifyBackupSetDownloadRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBackupSetDownloadRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupGatewayId)) {
            query["BackupGatewayId"] = request.backupGatewayId!;
        }
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupSetDownloadDir)) {
            query["BackupSetDownloadDir"] = request.backupSetDownloadDir ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupSetDownloadTargetType)) {
            query["BackupSetDownloadTargetType"] = request.backupSetDownloadTargetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupSetDownloadTargetTypeLocation)) {
            query["BackupSetDownloadTargetTypeLocation"] = request.backupSetDownloadTargetTypeLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fullDataFormat)) {
            query["FullDataFormat"] = request.fullDataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incrementDataFormat)) {
            query["IncrementDataFormat"] = request.incrementDataFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.openAutoDownload)) {
            query["OpenAutoDownload"] = request.openAutoDownload!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyBackupSetDownloadRules",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBackupSetDownloadRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackupSetDownloadRules(_ request: ModifyBackupSetDownloadRulesRequest) async throws -> ModifyBackupSetDownloadRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBackupSetDownloadRulesWithOptions(request as! ModifyBackupSetDownloadRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackupSourceEndpointWithOptions(_ request: ModifyBackupSourceEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBackupSourceEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupGatewayId)) {
            query["BackupGatewayId"] = request.backupGatewayId!;
        }
        if (!TeaUtils.Client.isUnset(request.backupObjects)) {
            query["BackupObjects"] = request.backupObjects ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAliyunId)) {
            query["CrossAliyunId"] = request.crossAliyunId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossRoleName)) {
            query["CrossRoleName"] = request.crossRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointDatabaseName)) {
            query["SourceEndpointDatabaseName"] = request.sourceEndpointDatabaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointIP)) {
            query["SourceEndpointIP"] = request.sourceEndpointIP ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointInstanceID)) {
            query["SourceEndpointInstanceID"] = request.sourceEndpointInstanceID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointInstanceType)) {
            query["SourceEndpointInstanceType"] = request.sourceEndpointInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointOracleSID)) {
            query["SourceEndpointOracleSID"] = request.sourceEndpointOracleSID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointPassword)) {
            query["SourceEndpointPassword"] = request.sourceEndpointPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointPort)) {
            query["SourceEndpointPort"] = request.sourceEndpointPort!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointRegion)) {
            query["SourceEndpointRegion"] = request.sourceEndpointRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpointUserName)) {
            query["SourceEndpointUserName"] = request.sourceEndpointUserName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyBackupSourceEndpoint",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBackupSourceEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackupSourceEndpoint(_ request: ModifyBackupSourceEndpointRequest) async throws -> ModifyBackupSourceEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBackupSourceEndpointWithOptions(request as! ModifyBackupSourceEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackupStrategyWithOptions(_ request: ModifyBackupStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBackupStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupLogIntervalSeconds)) {
            query["BackupLogIntervalSeconds"] = request.backupLogIntervalSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.backupPeriod)) {
            query["BackupPeriod"] = request.backupPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupStartTime)) {
            query["BackupStartTime"] = request.backupStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupStrategyType)) {
            query["BackupStrategyType"] = request.backupStrategyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyBackupStrategy",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBackupStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackupStrategy(_ request: ModifyBackupStrategyRequest) async throws -> ModifyBackupStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBackupStrategyWithOptions(request as! ModifyBackupStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyStorageStrategyWithOptions(_ request: ModifyStorageStrategyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyStorageStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupRetentionPeriod)) {
            query["BackupRetentionPeriod"] = request.backupRetentionPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duplicationArchivePeriod)) {
            query["DuplicationArchivePeriod"] = request.duplicationArchivePeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.duplicationInfrequentAccessPeriod)) {
            query["DuplicationInfrequentAccessPeriod"] = request.duplicationInfrequentAccessPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyStorageStrategy",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyStorageStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyStorageStrategy(_ request: ModifyStorageStrategyRequest) async throws -> ModifyStorageStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyStorageStrategyWithOptions(request as! ModifyStorageStrategyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseBackupPlanWithOptions(_ request: ReleaseBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseBackupPlan",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseBackupPlan(_ request: ReleaseBackupPlanRequest) async throws -> ReleaseBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseBackupPlanWithOptions(request as! ReleaseBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewBackupPlanWithOptions(_ request: RenewBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usedTime)) {
            query["UsedTime"] = request.usedTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewBackupPlan",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewBackupPlan(_ request: RenewBackupPlanRequest) async throws -> RenewBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewBackupPlanWithOptions(request as! RenewBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startBackupPlanWithOptions(_ request: StartBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartBackupPlan",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startBackupPlan(_ request: StartBackupPlanRequest) async throws -> StartBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startBackupPlanWithOptions(request as! StartBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startRestoreTaskWithOptions(_ request: StartRestoreTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartRestoreTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreTaskId)) {
            query["RestoreTaskId"] = request.restoreTaskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartRestoreTask",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartRestoreTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startRestoreTask(_ request: StartRestoreTaskRequest) async throws -> StartRestoreTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startRestoreTaskWithOptions(request as! StartRestoreTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopBackupPlanWithOptions(_ request: StopBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stopMethod)) {
            query["StopMethod"] = request.stopMethod ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopBackupPlan",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopBackupPlan(_ request: StopBackupPlanRequest) async throws -> StopBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopBackupPlanWithOptions(request as! StopBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeBackupPlanWithOptions(_ request: UpgradeBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceClass)) {
            query["InstanceClass"] = request.instanceClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeBackupPlan",
            "version": "2019-03-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeBackupPlan(_ request: UpgradeBackupPlanRequest) async throws -> UpgradeBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeBackupPlanWithOptions(request as! UpgradeBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
