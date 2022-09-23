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
    public func createDownloadWithOptions(_ request: CreateDownloadRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDownloadResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bakSetId)) {
            query["BakSetId"] = request.bakSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bakSetSize)) {
            query["BakSetSize"] = request.bakSetSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bakSetType)) {
            query["BakSetType"] = request.bakSetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.downloadPointInTime)) {
            query["DownloadPointInTime"] = request.downloadPointInTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formatType)) {
            query["FormatType"] = request.formatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionCode)) {
            query["RegionCode"] = request.regionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetBucket)) {
            query["TargetBucket"] = request.targetBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetOssRegion)) {
            query["TargetOssRegion"] = request.targetOssRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetOssUid)) {
            query["TargetOssUid"] = request.targetOssUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPath)) {
            query["TargetPath"] = request.targetPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            query["TargetType"] = request.targetType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDownload",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDownloadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDownload(_ request: CreateDownloadRequest) async throws -> CreateDownloadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDownloadWithOptions(request as! CreateDownloadRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSandboxInstanceWithOptions(_ request: CreateSandboxInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSandboxInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupSetId)) {
            query["BackupSetId"] = request.backupSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreTime)) {
            query["RestoreTime"] = request.restoreTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sandboxInstanceName)) {
            query["SandboxInstanceName"] = request.sandboxInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sandboxPassword)) {
            query["SandboxPassword"] = request.sandboxPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sandboxSpecification)) {
            query["SandboxSpecification"] = request.sandboxSpecification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sandboxType)) {
            query["SandboxType"] = request.sandboxType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sandboxUser)) {
            query["SandboxUser"] = request.sandboxUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcSwitchId)) {
            query["VpcSwitchId"] = request.vpcSwitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSandboxInstance",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSandboxInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSandboxInstance(_ request: CreateSandboxInstanceRequest) async throws -> CreateSandboxInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSandboxInstanceWithOptions(request as! CreateSandboxInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSandboxInstanceWithOptions(_ request: DeleteSandboxInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSandboxInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSandboxInstance",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSandboxInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSandboxInstance(_ request: DeleteSandboxInstanceRequest) async throws -> DeleteSandboxInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSandboxInstanceWithOptions(request as! DeleteSandboxInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDownloadBackupSetStorageInfoWithOptions(_ request: DescribeDownloadBackupSetStorageInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDownloadBackupSetStorageInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupSetId)) {
            query["BackupSetId"] = request.backupSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionCode)) {
            query["RegionCode"] = request.regionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDownloadBackupSetStorageInfo",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDownloadBackupSetStorageInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDownloadBackupSetStorageInfo(_ request: DescribeDownloadBackupSetStorageInfoRequest) async throws -> DescribeDownloadBackupSetStorageInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDownloadBackupSetStorageInfoWithOptions(request as! DescribeDownloadBackupSetStorageInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDownloadSupportWithOptions(_ request: DescribeDownloadSupportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDownloadSupportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionCode)) {
            query["RegionCode"] = request.regionCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDownloadSupport",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDownloadSupportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDownloadSupport(_ request: DescribeDownloadSupportRequest) async throws -> DescribeDownloadSupportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDownloadSupportWithOptions(request as! DescribeDownloadSupportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDownloadTaskWithOptions(_ request: DescribeDownloadTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDownloadTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupSetId)) {
            query["BackupSetId"] = request.backupSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasourceId)) {
            query["DatasourceId"] = request.datasourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderColumn)) {
            query["OrderColumn"] = request.orderColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderDirect)) {
            query["OrderDirect"] = request.orderDirect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionCode)) {
            query["RegionCode"] = request.regionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDownloadTask",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDownloadTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDownloadTask(_ request: DescribeDownloadTaskRequest) async throws -> DescribeDownloadTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDownloadTaskWithOptions(request as! DescribeDownloadTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSandboxBackupSetsWithOptions(_ request: DescribeSandboxBackupSetsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSandboxBackupSetsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupSetId)) {
            query["BackupSetId"] = request.backupSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSandboxBackupSets",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSandboxBackupSetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSandboxBackupSets(_ request: DescribeSandboxBackupSetsRequest) async throws -> DescribeSandboxBackupSetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSandboxBackupSetsWithOptions(request as! DescribeSandboxBackupSetsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSandboxInstancesWithOptions(_ request: DescribeSandboxInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSandboxInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSandboxInstances",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSandboxInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSandboxInstances(_ request: DescribeSandboxInstancesRequest) async throws -> DescribeSandboxInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSandboxInstancesWithOptions(request as! DescribeSandboxInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSandboxRecoveryTimeWithOptions(_ request: DescribeSandboxRecoveryTimeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSandboxRecoveryTimeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupPlanId)) {
            query["BackupPlanId"] = request.backupPlanId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSandboxRecoveryTime",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSandboxRecoveryTimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSandboxRecoveryTime(_ request: DescribeSandboxRecoveryTimeRequest) async throws -> DescribeSandboxRecoveryTimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSandboxRecoveryTimeWithOptions(request as! DescribeSandboxRecoveryTimeRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
