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
            "ap-northeast-2-pop": "hbr.aliyuncs.com",
            "cn-beijing-finance-pop": "hbr.aliyuncs.com",
            "cn-beijing-gov-1": "hbr.aliyuncs.com",
            "cn-beijing-nu16-b01": "hbr.aliyuncs.com",
            "cn-edge-1": "hbr.aliyuncs.com",
            "cn-fujian": "hbr.aliyuncs.com",
            "cn-haidian-cm12-c01": "hbr.aliyuncs.com",
            "cn-hangzhou-bj-b01": "hbr.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "hbr.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "hbr.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "hbr.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "hbr.aliyuncs.com",
            "cn-hangzhou-test-306": "hbr.aliyuncs.com",
            "cn-hongkong-finance-pop": "hbr.aliyuncs.com",
            "cn-huhehaote-nebula-1": "hbr.aliyuncs.com",
            "cn-qingdao-nebula": "hbr.aliyuncs.com",
            "cn-shanghai-et15-b01": "hbr.aliyuncs.com",
            "cn-shanghai-et2-b01": "hbr.aliyuncs.com",
            "cn-shanghai-inner": "hbr.aliyuncs.com",
            "cn-shanghai-internal-test-1": "hbr.aliyuncs.com",
            "cn-shenzhen-inner": "hbr.aliyuncs.com",
            "cn-shenzhen-st4-d01": "hbr.aliyuncs.com",
            "cn-shenzhen-su18-b01": "hbr.aliyuncs.com",
            "cn-wuhan": "hbr.aliyuncs.com",
            "cn-yushanfang": "hbr.aliyuncs.com",
            "cn-zhangbei": "hbr.aliyuncs.com",
            "cn-zhangbei-na61-b01": "hbr.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "hbr.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "hbr.aliyuncs.com",
            "eu-west-1-oxs": "hbr.aliyuncs.com",
            "rus-west-1-pop": "hbr.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("hbr", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addContainerClusterWithOptions(_ request: AddContainerClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddContainerClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            query["ClusterType"] = request.clusterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            query["NetworkType"] = request.networkType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddContainerCluster",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddContainerClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addContainerCluster(_ request: AddContainerClusterRequest) async throws -> AddContainerClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addContainerClusterWithOptions(request as! AddContainerClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelBackupJobWithOptions(_ request: CancelBackupJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelBackupJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.edition)) {
            query["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelBackupJob",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelBackupJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelBackupJob(_ request: CancelBackupJobRequest) async throws -> CancelBackupJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelBackupJobWithOptions(request as! CancelBackupJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelRestoreJobWithOptions(_ request: CancelRestoreJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelRestoreJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.edition)) {
            query["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreId)) {
            query["RestoreId"] = request.restoreId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelRestoreJob",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelRestoreJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelRestoreJob(_ request: CancelRestoreJobRequest) async throws -> CancelRestoreJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelRestoreJobWithOptions(request as! CancelRestoreJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroupWithOptions(_ request: ChangeResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.newResourceGroupId)) {
            body["NewResourceGroupId"] = request.newResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeResourceGroup",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroup(_ request: ChangeResourceGroupRequest) async throws -> ChangeResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeResourceGroupWithOptions(request as! ChangeResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkRoleWithOptions(_ request: CheckRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkRoleType)) {
            query["CheckRoleType"] = request.checkRoleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountRoleName)) {
            query["CrossAccountRoleName"] = request.crossAccountRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountUserId)) {
            query["CrossAccountUserId"] = request.crossAccountUserId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckRole",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkRole(_ request: CheckRoleRequest) async throws -> CheckRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkRoleWithOptions(request as! CheckRoleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackupJobWithOptions(_ tmpReq: CreateBackupJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBackupJobResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateBackupJobShrinkRequest = CreateBackupJobShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.detail)) {
            request.detailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.detail, "Detail", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupType)) {
            query["BackupType"] = request.backupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerClusterId)) {
            query["ContainerClusterId"] = request.containerClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerResources)) {
            query["ContainerResources"] = request.containerResources ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountRoleName)) {
            query["CrossAccountRoleName"] = request.crossAccountRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountType)) {
            query["CrossAccountType"] = request.crossAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountUserId)) {
            query["CrossAccountUserId"] = request.crossAccountUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.detailShrink)) {
            query["Detail"] = request.detailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exclude)) {
            query["Exclude"] = request.exclude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.include)) {
            query["Include"] = request.include ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initiatedByAck)) {
            query["InitiatedByAck"] = request.initiatedByAck!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobName)) {
            query["JobName"] = request.jobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            query["Options"] = request.options ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retention)) {
            query["Retention"] = request.retention!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.speedLimit)) {
            query["SpeedLimit"] = request.speedLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBackupJob",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBackupJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackupJob(_ request: CreateBackupJobRequest) async throws -> CreateBackupJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBackupJobWithOptions(request as! CreateBackupJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackupPlanWithOptions(_ tmpReq: CreateBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBackupPlanResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateBackupPlanShrinkRequest = CreateBackupPlanShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.destDataSourceDetail)) {
            request.destDataSourceDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.destDataSourceDetail, "DestDataSourceDetail", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.detail)) {
            request.detailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.detail, "Detail", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.otsDetail)) {
            request.otsDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.otsDetail, "OtsDetail", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupType)) {
            query["BackupType"] = request.backupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucket)) {
            query["Bucket"] = request.bucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeListPath)) {
            query["ChangeListPath"] = request.changeListPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTime)) {
            query["CreateTime"] = request.createTime!;
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountRoleName)) {
            query["CrossAccountRoleName"] = request.crossAccountRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountType)) {
            query["CrossAccountType"] = request.crossAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountUserId)) {
            query["CrossAccountUserId"] = request.crossAccountUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.destDataSourceDetailShrink)) {
            query["DestDataSourceDetail"] = request.destDataSourceDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destDataSourceId)) {
            query["DestDataSourceId"] = request.destDataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destSourceType)) {
            query["DestSourceType"] = request.destSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detailShrink)) {
            query["Detail"] = request.detailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disabled)) {
            query["Disabled"] = request.disabled!;
        }
        if (!TeaUtils.Client.isUnset(request.fileSystemId)) {
            query["FileSystemId"] = request.fileSystemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keepLatestSnapshots)) {
            query["KeepLatestSnapshots"] = request.keepLatestSnapshots!;
        }
        if (!TeaUtils.Client.isUnset(request.planName)) {
            query["PlanName"] = request.planName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["Prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retention)) {
            query["Retention"] = request.retention!;
        }
        if (!TeaUtils.Client.isUnset(request.schedule)) {
            query["Schedule"] = request.schedule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.udmRegionId)) {
            query["UdmRegionId"] = request.udmRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exclude)) {
            body["Exclude"] = request.exclude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.include)) {
            body["Include"] = request.include ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            body["Options"] = request.options ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otsDetailShrink)) {
            body["OtsDetail"] = request.otsDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            body["Path"] = request.path ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.rule)) {
            body["Rule"] = request.rule ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.speedLimit)) {
            body["SpeedLimit"] = request.speedLimit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBackupPlan",
            "version": "2017-09-08",
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
    public func createClientsWithOptions(_ request: CreateClientsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateClientsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertSetting)) {
            query["AlertSetting"] = request.alertSetting ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientInfo)) {
            query["ClientInfo"] = request.clientInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountRoleName)) {
            query["CrossAccountRoleName"] = request.crossAccountRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountType)) {
            query["CrossAccountType"] = request.crossAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountUserId)) {
            query["CrossAccountUserId"] = request.crossAccountUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useHttps)) {
            query["UseHttps"] = request.useHttps!;
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateClients",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateClientsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createClients(_ request: CreateClientsRequest) async throws -> CreateClientsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createClientsWithOptions(request as! CreateClientsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHanaBackupPlanWithOptions(_ request: CreateHanaBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHanaBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPrefix)) {
            query["BackupPrefix"] = request.backupPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupType)) {
            query["BackupType"] = request.backupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planName)) {
            query["PlanName"] = request.planName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedule)) {
            query["Schedule"] = request.schedule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHanaBackupPlan",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHanaBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHanaBackupPlan(_ request: CreateHanaBackupPlanRequest) async throws -> CreateHanaBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createHanaBackupPlanWithOptions(request as! CreateHanaBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHanaInstanceWithOptions(_ request: CreateHanaInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHanaInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertSetting)) {
            query["AlertSetting"] = request.alertSetting ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountRoleName)) {
            query["CrossAccountRoleName"] = request.crossAccountRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountType)) {
            query["CrossAccountType"] = request.crossAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountUserId)) {
            query["CrossAccountUserId"] = request.crossAccountUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.ecsInstanceId)) {
            query["EcsInstanceId"] = request.ecsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hanaName)) {
            query["HanaName"] = request.hanaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.host)) {
            query["Host"] = request.host ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceNumber)) {
            query["InstanceNumber"] = request.instanceNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sid)) {
            query["Sid"] = request.sid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useSsl)) {
            query["UseSsl"] = request.useSsl!;
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validateCertificate)) {
            query["ValidateCertificate"] = request.validateCertificate!;
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHanaInstance",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHanaInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHanaInstance(_ request: CreateHanaInstanceRequest) async throws -> CreateHanaInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createHanaInstanceWithOptions(request as! CreateHanaInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHanaRestoreWithOptions(_ request: CreateHanaRestoreRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHanaRestoreResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupId)) {
            query["BackupId"] = request.backupId!;
        }
        if (!TeaUtils.Client.isUnset(request.backupPrefix)) {
            query["BackupPrefix"] = request.backupPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkAccess)) {
            query["CheckAccess"] = request.checkAccess!;
        }
        if (!TeaUtils.Client.isUnset(request.clearLog)) {
            query["ClearLog"] = request.clearLog!;
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logPosition)) {
            query["LogPosition"] = request.logPosition!;
        }
        if (!TeaUtils.Client.isUnset(request.masterClientId)) {
            query["MasterClientId"] = request.masterClientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPointInTime)) {
            query["RecoveryPointInTime"] = request.recoveryPointInTime!;
        }
        if (!TeaUtils.Client.isUnset(request.sidAdmin)) {
            query["SidAdmin"] = request.sidAdmin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceClusterId)) {
            query["SourceClusterId"] = request.sourceClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemCopy)) {
            query["SystemCopy"] = request.systemCopy!;
        }
        if (!TeaUtils.Client.isUnset(request.useCatalog)) {
            query["UseCatalog"] = request.useCatalog!;
        }
        if (!TeaUtils.Client.isUnset(request.useDelta)) {
            query["UseDelta"] = request.useDelta!;
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volumeId)) {
            query["VolumeId"] = request.volumeId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHanaRestore",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHanaRestoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHanaRestore(_ request: CreateHanaRestoreRequest) async throws -> CreateHanaRestoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createHanaRestoreWithOptions(request as! CreateHanaRestoreRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicyBindingsWithOptions(_ tmpReq: CreatePolicyBindingsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePolicyBindingsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePolicyBindingsShrinkRequest = CreatePolicyBindingsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.policyBindingList)) {
            request.policyBindingListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.policyBindingList, "PolicyBindingList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyBindingListShrink)) {
            query["PolicyBindingList"] = request.policyBindingListShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            body["PolicyId"] = request.policyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePolicyBindings",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePolicyBindingsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicyBindings(_ request: CreatePolicyBindingsRequest) async throws -> CreatePolicyBindingsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPolicyBindingsWithOptions(request as! CreatePolicyBindingsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicyV2WithOptions(_ tmpReq: CreatePolicyV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePolicyV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePolicyV2ShrinkRequest = CreatePolicyV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.rules)) {
            request.rulesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.rules, "Rules", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyDescription)) {
            body["PolicyDescription"] = request.policyDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            body["PolicyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyType)) {
            body["PolicyType"] = request.policyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rulesShrink)) {
            body["Rules"] = request.rulesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePolicyV2",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePolicyV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicyV2(_ request: CreatePolicyV2Request) async throws -> CreatePolicyV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPolicyV2WithOptions(request as! CreatePolicyV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createReplicationVaultWithOptions(_ request: CreateReplicationVaultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateReplicationVaultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptType)) {
            query["EncryptType"] = request.encryptType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kmsKeyId)) {
            query["KmsKeyId"] = request.kmsKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.redundancyType)) {
            query["RedundancyType"] = request.redundancyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationSourceRegionId)) {
            query["ReplicationSourceRegionId"] = request.replicationSourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationSourceVaultId)) {
            query["ReplicationSourceVaultId"] = request.replicationSourceVaultId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultName)) {
            query["VaultName"] = request.vaultName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultRegionId)) {
            query["VaultRegionId"] = request.vaultRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultStorageClass)) {
            query["VaultStorageClass"] = request.vaultStorageClass ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateReplicationVault",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateReplicationVaultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createReplicationVault(_ request: CreateReplicationVaultRequest) async throws -> CreateReplicationVaultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createReplicationVaultWithOptions(request as! CreateReplicationVaultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRestoreJobWithOptions(_ tmpReq: CreateRestoreJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRestoreJobResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateRestoreJobShrinkRequest = CreateRestoreJobShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.failbackDetail)) {
            request.failbackDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.failbackDetail, "FailbackDetail", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.otsDetail)) {
            request.otsDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.otsDetail, "OtsDetail", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.udmDetail)) {
            request.udmDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.udmDetail, "UdmDetail", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.crossAccountRoleName)) {
            query["CrossAccountRoleName"] = request.crossAccountRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountType)) {
            query["CrossAccountType"] = request.crossAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountUserId)) {
            query["CrossAccountUserId"] = request.crossAccountUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.edition)) {
            query["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.failbackDetailShrink)) {
            query["FailbackDetail"] = request.failbackDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initiatedByAck)) {
            query["InitiatedByAck"] = request.initiatedByAck!;
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            query["Options"] = request.options ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreType)) {
            query["RestoreType"] = request.restoreType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotHash)) {
            query["SnapshotHash"] = request.snapshotHash ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetBucket)) {
            query["TargetBucket"] = request.targetBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetContainer)) {
            query["TargetContainer"] = request.targetContainer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetContainerClusterId)) {
            query["TargetContainerClusterId"] = request.targetContainerClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetCreateTime)) {
            query["TargetCreateTime"] = request.targetCreateTime!;
        }
        if (!TeaUtils.Client.isUnset(request.targetFileSystemId)) {
            query["TargetFileSystemId"] = request.targetFileSystemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetInstanceName)) {
            query["TargetInstanceName"] = request.targetInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPrefix)) {
            query["TargetPrefix"] = request.targetPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetTableName)) {
            query["TargetTableName"] = request.targetTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetTime)) {
            query["TargetTime"] = request.targetTime!;
        }
        if (!TeaUtils.Client.isUnset(request.udmDetailShrink)) {
            query["UdmDetail"] = request.udmDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.udmRegionId)) {
            query["UdmRegionId"] = request.udmRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.exclude)) {
            body["Exclude"] = request.exclude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.include)) {
            body["Include"] = request.include ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otsDetailShrink)) {
            body["OtsDetail"] = request.otsDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetInstanceId)) {
            body["TargetInstanceId"] = request.targetInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPath)) {
            body["TargetPath"] = request.targetPath ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRestoreJob",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRestoreJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRestoreJob(_ request: CreateRestoreJobRequest) async throws -> CreateRestoreJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRestoreJobWithOptions(request as! CreateRestoreJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTempFileUploadUrlWithOptions(_ request: CreateTempFileUploadUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTempFileUploadUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            query["FileName"] = request.fileName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTempFileUploadUrl",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTempFileUploadUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTempFileUploadUrl(_ request: CreateTempFileUploadUrlRequest) async throws -> CreateTempFileUploadUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTempFileUploadUrlWithOptions(request as! CreateTempFileUploadUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVaultWithOptions(_ request: CreateVaultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVaultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptType)) {
            query["EncryptType"] = request.encryptType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kmsKeyId)) {
            query["KmsKeyId"] = request.kmsKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replication)) {
            query["Replication"] = request.replication!;
        }
        if (!TeaUtils.Client.isUnset(request.vaultName)) {
            query["VaultName"] = request.vaultName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultRegionId)) {
            query["VaultRegionId"] = request.vaultRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultStorageClass)) {
            query["VaultStorageClass"] = request.vaultStorageClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultType)) {
            query["VaultType"] = request.vaultType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wormEnabled)) {
            query["WormEnabled"] = request.wormEnabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVault",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVaultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVault(_ request: CreateVaultRequest) async throws -> CreateVaultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVaultWithOptions(request as! CreateVaultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVaultReplicationWithOptions(_ request: CreateVaultReplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVaultReplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.replicationSourceRegionId)) {
            query["ReplicationSourceRegionId"] = request.replicationSourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationSourceVaultId)) {
            query["ReplicationSourceVaultId"] = request.replicationSourceVaultId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationTargetVaultId)) {
            query["ReplicationTargetVaultId"] = request.replicationTargetVaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVaultReplication",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVaultReplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVaultReplication(_ request: CreateVaultReplicationRequest) async throws -> CreateVaultReplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVaultReplicationWithOptions(request as! CreateVaultReplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAirEcsInstanceWithOptions(_ tmpReq: DeleteAirEcsInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAirEcsInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteAirEcsInstanceShrinkRequest = DeleteAirEcsInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.uninstallClientSourceTypes)) {
            request.uninstallClientSourceTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.uninstallClientSourceTypes, "UninstallClientSourceTypes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ecsInstanceId)) {
            query["EcsInstanceId"] = request.ecsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uninstallClientSourceTypesShrink)) {
            query["UninstallClientSourceTypes"] = request.uninstallClientSourceTypesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAirEcsInstance",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAirEcsInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAirEcsInstance(_ request: DeleteAirEcsInstanceRequest) async throws -> DeleteAirEcsInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAirEcsInstanceWithOptions(request as! DeleteAirEcsInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackupClientWithOptions(_ request: DeleteBackupClientRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBackupClientResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            query["ClientId"] = request.clientId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBackupClient",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBackupClientResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackupClient(_ request: DeleteBackupClientRequest) async throws -> DeleteBackupClientResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBackupClientWithOptions(request as! DeleteBackupClientRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackupClientResourceWithOptions(_ tmpReq: DeleteBackupClientResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBackupClientResourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteBackupClientResourceShrinkRequest = DeleteBackupClientResourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.clientIds)) {
            request.clientIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.clientIds, "ClientIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientIdsShrink)) {
            query["ClientIds"] = request.clientIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBackupClientResource",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBackupClientResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackupClientResource(_ request: DeleteBackupClientResourceRequest) async throws -> DeleteBackupClientResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBackupClientResourceWithOptions(request as! DeleteBackupClientResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackupPlanWithOptions(_ request: DeleteBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.edition)) {
            query["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requireNoRunningJobs)) {
            query["RequireNoRunningJobs"] = request.requireNoRunningJobs!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBackupPlan",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackupPlan(_ request: DeleteBackupPlanRequest) async throws -> DeleteBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBackupPlanWithOptions(request as! DeleteBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClientWithOptions(_ request: DeleteClientRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteClientResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            query["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteClient",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteClientResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteClient(_ request: DeleteClientRequest) async throws -> DeleteClientResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteClientWithOptions(request as! DeleteClientRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHanaBackupPlanWithOptions(_ request: DeleteHanaBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHanaBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHanaBackupPlan",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHanaBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHanaBackupPlan(_ request: DeleteHanaBackupPlanRequest) async throws -> DeleteHanaBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteHanaBackupPlanWithOptions(request as! DeleteHanaBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHanaInstanceWithOptions(_ request: DeleteHanaInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHanaInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sid)) {
            query["Sid"] = request.sid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHanaInstance",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHanaInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHanaInstance(_ request: DeleteHanaInstanceRequest) async throws -> DeleteHanaInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteHanaInstanceWithOptions(request as! DeleteHanaInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyBindingWithOptions(_ tmpReq: DeletePolicyBindingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePolicyBindingResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeletePolicyBindingShrinkRequest = DeletePolicyBindingShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataSourceIds)) {
            request.dataSourceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataSourceIds, "DataSourceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceIdsShrink)) {
            body["DataSourceIds"] = request.dataSourceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            body["PolicyId"] = request.policyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePolicyBinding",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePolicyBindingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyBinding(_ request: DeletePolicyBindingRequest) async throws -> DeletePolicyBindingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePolicyBindingWithOptions(request as! DeletePolicyBindingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyV2WithOptions(_ request: DeletePolicyV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePolicyV2Response {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            body["PolicyId"] = request.policyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePolicyV2",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePolicyV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyV2(_ request: DeletePolicyV2Request) async throws -> DeletePolicyV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePolicyV2WithOptions(request as! DeletePolicyV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSnapshotWithOptions(_ request: DeleteSnapshotRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            query["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.force)) {
            query["Force"] = request.force!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSnapshot",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSnapshot(_ request: DeleteSnapshotRequest) async throws -> DeleteSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSnapshotWithOptions(request as! DeleteSnapshotRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUdmDiskWithOptions(_ request: DeleteUdmDiskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUdmDiskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.diskId)) {
            query["DiskId"] = request.diskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUdmDisk",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUdmDiskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUdmDisk(_ request: DeleteUdmDiskRequest) async throws -> DeleteUdmDiskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUdmDiskWithOptions(request as! DeleteUdmDiskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUdmEcsInstanceWithOptions(_ request: DeleteUdmEcsInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUdmEcsInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUdmEcsInstance",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUdmEcsInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUdmEcsInstance(_ request: DeleteUdmEcsInstanceRequest) async throws -> DeleteUdmEcsInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUdmEcsInstanceWithOptions(request as! DeleteUdmEcsInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVaultWithOptions(_ request: DeleteVaultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVaultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVault",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVaultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVault(_ request: DeleteVaultRequest) async throws -> DeleteVaultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteVaultWithOptions(request as! DeleteVaultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVaultReplicationWithOptions(_ request: DeleteVaultReplicationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVaultReplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.replicationSourceRegionId)) {
            query["ReplicationSourceRegionId"] = request.replicationSourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationSourceVaultId)) {
            query["ReplicationSourceVaultId"] = request.replicationSourceVaultId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replicationTargetVaultId)) {
            query["ReplicationTargetVaultId"] = request.replicationTargetVaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVaultReplication",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVaultReplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVaultReplication(_ request: DeleteVaultReplicationRequest) async throws -> DeleteVaultReplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteVaultReplicationWithOptions(request as! DeleteVaultReplicationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupClientsWithOptions(_ tmpReq: DescribeBackupClientsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupClientsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeBackupClientsShrinkRequest = DescribeBackupClientsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.clientIds)) {
            request.clientIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.clientIds, "ClientIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            query["ClientType"] = request.clientType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountRoleName)) {
            query["CrossAccountRoleName"] = request.crossAccountRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountType)) {
            query["CrossAccountType"] = request.crossAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountUserId)) {
            query["CrossAccountUserId"] = request.crossAccountUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.filters)) {
            query["Filters"] = request.filters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientIdsShrink)) {
            body["ClientIds"] = request.clientIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            body["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupClients",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupClientsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupClients(_ request: DescribeBackupClientsRequest) async throws -> DescribeBackupClientsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupClientsWithOptions(request as! DescribeBackupClientsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupJobs2WithOptions(_ request: DescribeBackupJobs2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupJobs2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.edition)) {
            query["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filters)) {
            query["Filters"] = request.filters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortDirection)) {
            query["SortDirection"] = request.sortDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupJobs2",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupJobs2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupJobs2(_ request: DescribeBackupJobs2Request) async throws -> DescribeBackupJobs2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupJobs2WithOptions(request as! DescribeBackupJobs2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPlansWithOptions(_ request: DescribeBackupPlansRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupPlansResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.edition)) {
            query["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filters)) {
            query["Filters"] = request.filters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupPlans",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPlans(_ request: DescribeBackupPlansRequest) async throws -> DescribeBackupPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupPlansWithOptions(request as! DescribeBackupPlansRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClientsWithOptions(_ request: DescribeClientsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClientsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            query["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            query["ClientType"] = request.clientType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClients",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClientsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClients(_ request: DescribeClientsRequest) async throws -> DescribeClientsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClientsWithOptions(request as! DescribeClientsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeContainerClusterWithOptions(_ request: DescribeContainerClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeContainerClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeContainerCluster",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeContainerClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeContainerCluster(_ request: DescribeContainerClusterRequest) async throws -> DescribeContainerClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeContainerClusterWithOptions(request as! DescribeContainerClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCrossAccountsWithOptions(_ request: DescribeCrossAccountsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCrossAccountsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCrossAccounts",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCrossAccountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCrossAccounts(_ request: DescribeCrossAccountsRequest) async throws -> DescribeCrossAccountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCrossAccountsWithOptions(request as! DescribeCrossAccountsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHanaBackupPlansWithOptions(_ request: DescribeHanaBackupPlansRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHanaBackupPlansResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHanaBackupPlans",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHanaBackupPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHanaBackupPlans(_ request: DescribeHanaBackupPlansRequest) async throws -> DescribeHanaBackupPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHanaBackupPlansWithOptions(request as! DescribeHanaBackupPlansRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHanaBackupSettingWithOptions(_ request: DescribeHanaBackupSettingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHanaBackupSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHanaBackupSetting",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHanaBackupSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHanaBackupSetting(_ request: DescribeHanaBackupSettingRequest) async throws -> DescribeHanaBackupSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHanaBackupSettingWithOptions(request as! DescribeHanaBackupSettingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHanaBackupsAsyncWithOptions(_ request: DescribeHanaBackupsAsyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHanaBackupsAsyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeDifferential)) {
            query["IncludeDifferential"] = request.includeDifferential!;
        }
        if (!TeaUtils.Client.isUnset(request.includeIncremental)) {
            query["IncludeIncremental"] = request.includeIncremental!;
        }
        if (!TeaUtils.Client.isUnset(request.includeLog)) {
            query["IncludeLog"] = request.includeLog!;
        }
        if (!TeaUtils.Client.isUnset(request.logPosition)) {
            query["LogPosition"] = request.logPosition!;
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryPointInTime)) {
            query["RecoveryPointInTime"] = request.recoveryPointInTime!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceClusterId)) {
            query["SourceClusterId"] = request.sourceClusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.systemCopy)) {
            query["SystemCopy"] = request.systemCopy!;
        }
        if (!TeaUtils.Client.isUnset(request.useBackint)) {
            query["UseBackint"] = request.useBackint!;
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volumeId)) {
            query["VolumeId"] = request.volumeId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHanaBackupsAsync",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHanaBackupsAsyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHanaBackupsAsync(_ request: DescribeHanaBackupsAsyncRequest) async throws -> DescribeHanaBackupsAsyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHanaBackupsAsyncWithOptions(request as! DescribeHanaBackupsAsyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHanaDatabasesWithOptions(_ request: DescribeHanaDatabasesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHanaDatabasesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHanaDatabases",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHanaDatabasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHanaDatabases(_ request: DescribeHanaDatabasesRequest) async throws -> DescribeHanaDatabasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHanaDatabasesWithOptions(request as! DescribeHanaDatabasesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHanaInstancesWithOptions(_ request: DescribeHanaInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHanaInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHanaInstances",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHanaInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHanaInstances(_ request: DescribeHanaInstancesRequest) async throws -> DescribeHanaInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHanaInstancesWithOptions(request as! DescribeHanaInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHanaRestoresWithOptions(_ request: DescribeHanaRestoresRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHanaRestoresResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupId)) {
            query["BackupId"] = request.backupId!;
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreId)) {
            query["RestoreId"] = request.restoreId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreStatus)) {
            query["RestoreStatus"] = request.restoreStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHanaRestores",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHanaRestoresResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHanaRestores(_ request: DescribeHanaRestoresRequest) async throws -> DescribeHanaRestoresResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHanaRestoresWithOptions(request as! DescribeHanaRestoresRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHanaRetentionSettingWithOptions(_ request: DescribeHanaRetentionSettingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHanaRetentionSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHanaRetentionSetting",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHanaRetentionSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHanaRetentionSetting(_ request: DescribeHanaRetentionSettingRequest) async throws -> DescribeHanaRetentionSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHanaRetentionSettingWithOptions(request as! DescribeHanaRetentionSettingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOtsTableSnapshotsWithOptions(_ request: DescribeOtsTableSnapshotsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeOtsTableSnapshotsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.crossAccountRoleName)) {
            query["CrossAccountRoleName"] = request.crossAccountRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountType)) {
            query["CrossAccountType"] = request.crossAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountUserId)) {
            query["CrossAccountUserId"] = request.crossAccountUserId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.otsInstances)) {
            bodyFlat["OtsInstances"] = request.otsInstances ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.snapshotIds)) {
            bodyFlat["SnapshotIds"] = request.snapshotIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeOtsTableSnapshots",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeOtsTableSnapshotsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOtsTableSnapshots(_ request: DescribeOtsTableSnapshotsRequest) async throws -> DescribeOtsTableSnapshotsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeOtsTableSnapshotsWithOptions(request as! DescribeOtsTableSnapshotsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePoliciesV2WithOptions(_ request: DescribePoliciesV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePoliciesV2Response {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            body["PolicyId"] = request.policyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePoliciesV2",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePoliciesV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePoliciesV2(_ request: DescribePoliciesV2Request) async throws -> DescribePoliciesV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePoliciesV2WithOptions(request as! DescribePoliciesV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolicyBindingsWithOptions(_ tmpReq: DescribePolicyBindingsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePolicyBindingsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribePolicyBindingsShrinkRequest = DescribePolicyBindingsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dataSourceIds)) {
            request.dataSourceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dataSourceIds, "DataSourceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filters)) {
            query["Filters"] = request.filters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceIdsShrink)) {
            body["DataSourceIds"] = request.dataSourceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            body["PolicyId"] = request.policyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePolicyBindings",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePolicyBindingsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolicyBindings(_ request: DescribePolicyBindingsRequest) async throws -> DescribePolicyBindingsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePolicyBindingsWithOptions(request as! DescribePolicyBindingsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRecoverableOtsInstancesWithOptions(_ request: DescribeRecoverableOtsInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRecoverableOtsInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.crossAccountRoleName)) {
            query["CrossAccountRoleName"] = request.crossAccountRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountType)) {
            query["CrossAccountType"] = request.crossAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountUserId)) {
            query["CrossAccountUserId"] = request.crossAccountUserId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRecoverableOtsInstances",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRecoverableOtsInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRecoverableOtsInstances(_ request: DescribeRecoverableOtsInstancesRequest) async throws -> DescribeRecoverableOtsInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRecoverableOtsInstancesWithOptions(request as! DescribeRecoverableOtsInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2017-09-08",
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
    public func describeRegions() async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRegionsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRestoreJobs2WithOptions(_ request: DescribeRestoreJobs2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRestoreJobs2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.edition)) {
            query["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filters)) {
            query["Filters"] = request.filters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.restoreType)) {
            query["RestoreType"] = request.restoreType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRestoreJobs2",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRestoreJobs2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRestoreJobs2(_ request: DescribeRestoreJobs2Request) async throws -> DescribeRestoreJobs2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRestoreJobs2WithOptions(request as! DescribeRestoreJobs2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTaskWithOptions(_ request: DescribeTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTask",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTask(_ request: DescribeTaskRequest) async throws -> DescribeTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTaskWithOptions(request as! DescribeTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUdmSnapshotsWithOptions(_ tmpReq: DescribeUdmSnapshotsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUdmSnapshotsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeUdmSnapshotsShrinkRequest = DescribeUdmSnapshotsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.snapshotIds)) {
            request.snapshotIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.snapshotIds, "SnapshotIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.diskId)) {
            query["DiskId"] = request.diskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.udmRegionId)) {
            query["UdmRegionId"] = request.udmRegionId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.snapshotIdsShrink)) {
            body["SnapshotIds"] = request.snapshotIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUdmSnapshots",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUdmSnapshotsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUdmSnapshots(_ request: DescribeUdmSnapshotsRequest) async throws -> DescribeUdmSnapshotsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUdmSnapshotsWithOptions(request as! DescribeUdmSnapshotsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVaultReplicationRegionsWithOptions(_ request: DescribeVaultReplicationRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVaultReplicationRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVaultReplicationRegions",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVaultReplicationRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVaultReplicationRegions(_ request: DescribeVaultReplicationRegionsRequest) async throws -> DescribeVaultReplicationRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVaultReplicationRegionsWithOptions(request as! DescribeVaultReplicationRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVaultsWithOptions(_ request: DescribeVaultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVaultsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.replication)) {
            query["Replication"] = request.replication!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultName)) {
            query["VaultName"] = request.vaultName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultOwnerId)) {
            query["VaultOwnerId"] = request.vaultOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.vaultRegionId)) {
            query["VaultRegionId"] = request.vaultRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultType)) {
            query["VaultType"] = request.vaultType ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVaults",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVaultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVaults(_ request: DescribeVaultsRequest) async throws -> DescribeVaultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVaultsWithOptions(request as! DescribeVaultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachNasFileSystemWithOptions(_ request: DetachNasFileSystemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachNasFileSystemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTime)) {
            query["CreateTime"] = request.createTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountRoleName)) {
            query["CrossAccountRoleName"] = request.crossAccountRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountType)) {
            query["CrossAccountType"] = request.crossAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountUserId)) {
            query["CrossAccountUserId"] = request.crossAccountUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.fileSystemId)) {
            query["FileSystemId"] = request.fileSystemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachNasFileSystem",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachNasFileSystemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachNasFileSystem(_ request: DetachNasFileSystemRequest) async throws -> DetachNasFileSystemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachNasFileSystemWithOptions(request as! DetachNasFileSystemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableBackupPlanWithOptions(_ request: DisableBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.edition)) {
            query["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableBackupPlan",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableBackupPlan(_ request: DisableBackupPlanRequest) async throws -> DisableBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableBackupPlanWithOptions(request as! DisableBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableHanaBackupPlanWithOptions(_ request: DisableHanaBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableHanaBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableHanaBackupPlan",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableHanaBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableHanaBackupPlan(_ request: DisableHanaBackupPlanRequest) async throws -> DisableHanaBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableHanaBackupPlanWithOptions(request as! DisableHanaBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableBackupPlanWithOptions(_ request: EnableBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.edition)) {
            query["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableBackupPlan",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableBackupPlan(_ request: EnableBackupPlanRequest) async throws -> EnableBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableBackupPlanWithOptions(request as! EnableBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableHanaBackupPlanWithOptions(_ request: EnableHanaBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableHanaBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableHanaBackupPlan",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableHanaBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableHanaBackupPlan(_ request: EnableHanaBackupPlanRequest) async throws -> EnableHanaBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableHanaBackupPlanWithOptions(request as! EnableHanaBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeBackupPlanWithOptions(_ request: ExecuteBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.edition)) {
            query["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteBackupPlan",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeBackupPlan(_ request: ExecuteBackupPlanRequest) async throws -> ExecuteBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeBackupPlanWithOptions(request as! ExecuteBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executePolicyV2WithOptions(_ request: ExecutePolicyV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecutePolicyV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            body["PolicyId"] = request.policyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecutePolicyV2",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecutePolicyV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executePolicyV2(_ request: ExecutePolicyV2Request) async throws -> ExecutePolicyV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executePolicyV2WithOptions(request as! ExecutePolicyV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateRamPolicyWithOptions(_ request: GenerateRamPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateRamPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionType)) {
            query["ActionType"] = request.actionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requireBasePolicy)) {
            query["RequireBasePolicy"] = request.requireBasePolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateRamPolicy",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateRamPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateRamPolicy(_ request: GenerateRamPolicyRequest) async throws -> GenerateRamPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateRamPolicyWithOptions(request as! GenerateRamPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTempFileDownloadLinkWithOptions(_ request: GetTempFileDownloadLinkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTempFileDownloadLinkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tempFileKey)) {
            query["TempFileKey"] = request.tempFileKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTempFileDownloadLink",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTempFileDownloadLinkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTempFileDownloadLink(_ request: GetTempFileDownloadLinkRequest) async throws -> GetTempFileDownloadLinkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTempFileDownloadLinkWithOptions(request as! GetTempFileDownloadLinkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installBackupClientsWithOptions(_ tmpReq: InstallBackupClientsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InstallBackupClientsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InstallBackupClientsShrinkRequest = InstallBackupClientsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.crossAccountRoleName)) {
            query["CrossAccountRoleName"] = request.crossAccountRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountType)) {
            query["CrossAccountType"] = request.crossAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountUserId)) {
            query["CrossAccountUserId"] = request.crossAccountUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InstallBackupClients",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InstallBackupClientsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func installBackupClients(_ request: InstallBackupClientsRequest) async throws -> InstallBackupClientsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await installBackupClientsWithOptions(request as! InstallBackupClientsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProtectedResourcesWithOptions(_ request: ListProtectedResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProtectedResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createdByProduct)) {
            query["CreatedByProduct"] = request.createdByProduct ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skip)) {
            query["Skip"] = request.skip!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProtectedResources",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProtectedResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProtectedResources(_ request: ListProtectedResourcesRequest) async throws -> ListProtectedResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProtectedResourcesWithOptions(request as! ListProtectedResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openHbrServiceWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> OpenHbrServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OpenHbrService",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OpenHbrServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openHbrService() async throws -> OpenHbrServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await openHbrServiceWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchHistoricalSnapshotsWithOptions(_ tmpReq: SearchHistoricalSnapshotsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchHistoricalSnapshotsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchHistoricalSnapshotsShrinkRequest = SearchHistoricalSnapshotsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.query)) {
            request.queryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.query, "Query", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.edition)) {
            query["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryShrink)) {
            query["Query"] = request.queryShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchHistoricalSnapshots",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchHistoricalSnapshotsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchHistoricalSnapshots(_ request: SearchHistoricalSnapshotsRequest) async throws -> SearchHistoricalSnapshotsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchHistoricalSnapshotsWithOptions(request as! SearchHistoricalSnapshotsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startHanaDatabaseAsyncWithOptions(_ request: StartHanaDatabaseAsyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartHanaDatabaseAsyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartHanaDatabaseAsync",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartHanaDatabaseAsyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startHanaDatabaseAsync(_ request: StartHanaDatabaseAsyncRequest) async throws -> StartHanaDatabaseAsyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startHanaDatabaseAsyncWithOptions(request as! StartHanaDatabaseAsyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopHanaDatabaseAsyncWithOptions(_ request: StopHanaDatabaseAsyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopHanaDatabaseAsyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopHanaDatabaseAsync",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopHanaDatabaseAsyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopHanaDatabaseAsync(_ request: StopHanaDatabaseAsyncRequest) async throws -> StopHanaDatabaseAsyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopHanaDatabaseAsyncWithOptions(request as! StopHanaDatabaseAsyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uninstallBackupClientsWithOptions(_ tmpReq: UninstallBackupClientsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UninstallBackupClientsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UninstallBackupClientsShrinkRequest = UninstallBackupClientsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.clientIds)) {
            request.clientIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.clientIds, "ClientIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientIdsShrink)) {
            query["ClientIds"] = request.clientIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountRoleName)) {
            query["CrossAccountRoleName"] = request.crossAccountRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountType)) {
            query["CrossAccountType"] = request.crossAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountUserId)) {
            query["CrossAccountUserId"] = request.crossAccountUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UninstallBackupClients",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UninstallBackupClientsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uninstallBackupClients(_ request: UninstallBackupClientsRequest) async throws -> UninstallBackupClientsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uninstallBackupClientsWithOptions(request as! UninstallBackupClientsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uninstallClientWithOptions(_ request: UninstallClientRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UninstallClientResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            query["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UninstallClient",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UninstallClientResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uninstallClient(_ request: UninstallClientRequest) async throws -> UninstallClientResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uninstallClientWithOptions(request as! UninstallClientRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBackupPlanWithOptions(_ tmpReq: UpdateBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateBackupPlanResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateBackupPlanShrinkRequest = UpdateBackupPlanShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.detail)) {
            request.detailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.detail, "Detail", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.otsDetail)) {
            request.otsDetailShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.otsDetail, "OtsDetail", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeListPath)) {
            query["ChangeListPath"] = request.changeListPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detailShrink)) {
            query["Detail"] = request.detailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.edition)) {
            query["Edition"] = request.edition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keepLatestSnapshots)) {
            query["KeepLatestSnapshots"] = request.keepLatestSnapshots!;
        }
        if (!TeaUtils.Client.isUnset(request.path)) {
            query["Path"] = request.path ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planName)) {
            query["PlanName"] = request.planName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["Prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retention)) {
            query["Retention"] = request.retention!;
        }
        if (!TeaUtils.Client.isUnset(request.schedule)) {
            query["Schedule"] = request.schedule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.speedLimit)) {
            query["SpeedLimit"] = request.speedLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updatePaths)) {
            query["UpdatePaths"] = request.updatePaths!;
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.exclude)) {
            body["Exclude"] = request.exclude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.include)) {
            body["Include"] = request.include ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            body["Options"] = request.options ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otsDetailShrink)) {
            body["OtsDetail"] = request.otsDetailShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rule)) {
            body["Rule"] = request.rule ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateBackupPlan",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBackupPlan(_ request: UpdateBackupPlanRequest) async throws -> UpdateBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateBackupPlanWithOptions(request as! UpdateBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateClientSettingsWithOptions(_ request: UpdateClientSettingsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateClientSettingsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertOnPartialComplete)) {
            query["AlertOnPartialComplete"] = request.alertOnPartialComplete!;
        }
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            query["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataNetworkType)) {
            query["DataNetworkType"] = request.dataNetworkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataProxySetting)) {
            query["DataProxySetting"] = request.dataProxySetting ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxCpuCore)) {
            query["MaxCpuCore"] = request.maxCpuCore!;
        }
        if (!TeaUtils.Client.isUnset(request.maxMemory)) {
            query["MaxMemory"] = request.maxMemory!;
        }
        if (!TeaUtils.Client.isUnset(request.maxWorker)) {
            query["MaxWorker"] = request.maxWorker!;
        }
        if (!TeaUtils.Client.isUnset(request.proxyHost)) {
            query["ProxyHost"] = request.proxyHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyPassword)) {
            query["ProxyPassword"] = request.proxyPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyPort)) {
            query["ProxyPort"] = request.proxyPort!;
        }
        if (!TeaUtils.Client.isUnset(request.proxyUser)) {
            query["ProxyUser"] = request.proxyUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useHttps)) {
            query["UseHttps"] = request.useHttps!;
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateClientSettings",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateClientSettingsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateClientSettings(_ request: UpdateClientSettingsRequest) async throws -> UpdateClientSettingsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateClientSettingsWithOptions(request as! UpdateClientSettingsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateContainerClusterWithOptions(_ request: UpdateContainerClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateContainerClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            query["NetworkType"] = request.networkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renewToken)) {
            query["RenewToken"] = request.renewToken!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateContainerCluster",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateContainerClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateContainerCluster(_ request: UpdateContainerClusterRequest) async throws -> UpdateContainerClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateContainerClusterWithOptions(request as! UpdateContainerClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHanaBackupPlanWithOptions(_ request: UpdateHanaBackupPlanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateHanaBackupPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPrefix)) {
            query["BackupPrefix"] = request.backupPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["PlanId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planName)) {
            query["PlanName"] = request.planName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedule)) {
            query["Schedule"] = request.schedule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateHanaBackupPlan",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateHanaBackupPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHanaBackupPlan(_ request: UpdateHanaBackupPlanRequest) async throws -> UpdateHanaBackupPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateHanaBackupPlanWithOptions(request as! UpdateHanaBackupPlanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHanaBackupSettingWithOptions(_ request: UpdateHanaBackupSettingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateHanaBackupSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogBackupParameterFile)) {
            query["CatalogBackupParameterFile"] = request.catalogBackupParameterFile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.catalogBackupUsingBackint)) {
            query["CatalogBackupUsingBackint"] = request.catalogBackupUsingBackint!;
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataBackupParameterFile)) {
            query["DataBackupParameterFile"] = request.dataBackupParameterFile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAutoLogBackup)) {
            query["EnableAutoLogBackup"] = request.enableAutoLogBackup!;
        }
        if (!TeaUtils.Client.isUnset(request.logBackupParameterFile)) {
            query["LogBackupParameterFile"] = request.logBackupParameterFile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logBackupTimeout)) {
            query["LogBackupTimeout"] = request.logBackupTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.logBackupUsingBackint)) {
            query["LogBackupUsingBackint"] = request.logBackupUsingBackint!;
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateHanaBackupSetting",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateHanaBackupSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHanaBackupSetting(_ request: UpdateHanaBackupSettingRequest) async throws -> UpdateHanaBackupSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateHanaBackupSettingWithOptions(request as! UpdateHanaBackupSettingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHanaInstanceWithOptions(_ request: UpdateHanaInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateHanaInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertSetting)) {
            query["AlertSetting"] = request.alertSetting ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hanaName)) {
            query["HanaName"] = request.hanaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.host)) {
            query["Host"] = request.host ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceNumber)) {
            query["InstanceNumber"] = request.instanceNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useSsl)) {
            query["UseSsl"] = request.useSsl!;
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validateCertificate)) {
            query["ValidateCertificate"] = request.validateCertificate!;
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateHanaInstance",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateHanaInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHanaInstance(_ request: UpdateHanaInstanceRequest) async throws -> UpdateHanaInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateHanaInstanceWithOptions(request as! UpdateHanaInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHanaRetentionSettingWithOptions(_ request: UpdateHanaRetentionSettingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateHanaRetentionSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["DatabaseName"] = request.databaseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disabled)) {
            query["Disabled"] = request.disabled!;
        }
        if (!TeaUtils.Client.isUnset(request.retentionDays)) {
            query["RetentionDays"] = request.retentionDays!;
        }
        if (!TeaUtils.Client.isUnset(request.schedule)) {
            query["Schedule"] = request.schedule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateHanaRetentionSetting",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateHanaRetentionSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHanaRetentionSetting(_ request: UpdateHanaRetentionSettingRequest) async throws -> UpdateHanaRetentionSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateHanaRetentionSettingWithOptions(request as! UpdateHanaRetentionSettingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePolicyBindingWithOptions(_ tmpReq: UpdatePolicyBindingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePolicyBindingResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdatePolicyBindingShrinkRequest = UpdatePolicyBindingShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.advancedOptions)) {
            request.advancedOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.advancedOptions, "AdvancedOptions", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.advancedOptionsShrink)) {
            query["AdvancedOptions"] = request.advancedOptionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disabled)) {
            query["Disabled"] = request.disabled!;
        }
        if (!TeaUtils.Client.isUnset(request.exclude)) {
            query["Exclude"] = request.exclude ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.include)) {
            query["Include"] = request.include ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyBindingDescription)) {
            query["PolicyBindingDescription"] = request.policyBindingDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.speedLimit)) {
            query["SpeedLimit"] = request.speedLimit ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            body["PolicyId"] = request.policyId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePolicyBinding",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePolicyBindingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePolicyBinding(_ request: UpdatePolicyBindingRequest) async throws -> UpdatePolicyBindingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePolicyBindingWithOptions(request as! UpdatePolicyBindingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePolicyV2WithOptions(_ tmpReq: UpdatePolicyV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePolicyV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdatePolicyV2ShrinkRequest = UpdatePolicyV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.rules)) {
            request.rulesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.rules, "Rules", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyDescription)) {
            body["PolicyDescription"] = request.policyDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            body["PolicyId"] = request.policyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            body["PolicyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rulesShrink)) {
            body["Rules"] = request.rulesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePolicyV2",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePolicyV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePolicyV2(_ request: UpdatePolicyV2Request) async throws -> UpdatePolicyV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePolicyV2WithOptions(request as! UpdatePolicyV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVaultWithOptions(_ request: UpdateVaultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateVaultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultName)) {
            query["VaultName"] = request.vaultName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wormEnabled)) {
            query["WormEnabled"] = request.wormEnabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateVault",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateVaultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateVault(_ request: UpdateVaultRequest) async throws -> UpdateVaultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateVaultWithOptions(request as! UpdateVaultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeBackupClientsWithOptions(_ tmpReq: UpgradeBackupClientsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeBackupClientsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpgradeBackupClientsShrinkRequest = UpgradeBackupClientsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.clientIds)) {
            request.clientIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.clientIds, "ClientIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.instanceIds)) {
            request.instanceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instanceIds, "InstanceIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientIdsShrink)) {
            query["ClientIds"] = request.clientIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountRoleName)) {
            query["CrossAccountRoleName"] = request.crossAccountRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountType)) {
            query["CrossAccountType"] = request.crossAccountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crossAccountUserId)) {
            query["CrossAccountUserId"] = request.crossAccountUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdsShrink)) {
            query["InstanceIds"] = request.instanceIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeBackupClients",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeBackupClientsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeBackupClients(_ request: UpgradeBackupClientsRequest) async throws -> UpgradeBackupClientsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeBackupClientsWithOptions(request as! UpgradeBackupClientsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeClientWithOptions(_ request: UpgradeClientRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeClientResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientId)) {
            query["ClientId"] = request.clientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vaultId)) {
            query["VaultId"] = request.vaultId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeClient",
            "version": "2017-09-08",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeClientResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeClient(_ request: UpgradeClientRequest) async throws -> UpgradeClientResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeClientWithOptions(request as! UpgradeClientRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
