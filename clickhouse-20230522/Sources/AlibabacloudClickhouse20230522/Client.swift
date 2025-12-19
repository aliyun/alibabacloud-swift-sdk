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
            "ap-northeast-2-pop": "clickhouse.aliyuncs.com",
            "ap-southeast-1": "clickhouse.aliyuncs.com",
            "cn-beijing": "clickhouse.aliyuncs.com",
            "cn-beijing-finance-1": "clickhouse.aliyuncs.com",
            "cn-beijing-finance-pop": "clickhouse.aliyuncs.com",
            "cn-beijing-gov-1": "clickhouse.aliyuncs.com",
            "cn-beijing-nu16-b01": "clickhouse.aliyuncs.com",
            "cn-edge-1": "clickhouse.aliyuncs.com",
            "cn-fujian": "clickhouse.aliyuncs.com",
            "cn-haidian-cm12-c01": "clickhouse.aliyuncs.com",
            "cn-hangzhou": "clickhouse.aliyuncs.com",
            "cn-hangzhou-bj-b01": "clickhouse.aliyuncs.com",
            "cn-hangzhou-finance": "clickhouse.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "clickhouse.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "clickhouse.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "clickhouse.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "clickhouse.aliyuncs.com",
            "cn-hangzhou-test-306": "clickhouse.aliyuncs.com",
            "cn-hongkong": "clickhouse.aliyuncs.com",
            "cn-hongkong-finance-pop": "clickhouse.aliyuncs.com",
            "cn-north-2-gov-1": "clickhouse.aliyuncs.com",
            "cn-qingdao": "clickhouse.aliyuncs.com",
            "cn-qingdao-nebula": "clickhouse.aliyuncs.com",
            "cn-shanghai": "clickhouse.aliyuncs.com",
            "cn-shanghai-et15-b01": "clickhouse.aliyuncs.com",
            "cn-shanghai-et2-b01": "clickhouse.aliyuncs.com",
            "cn-shanghai-finance-1": "clickhouse.aliyuncs.com",
            "cn-shanghai-inner": "clickhouse.aliyuncs.com",
            "cn-shanghai-internal-test-1": "clickhouse.aliyuncs.com",
            "cn-shenzhen": "clickhouse.aliyuncs.com",
            "cn-shenzhen-finance-1": "clickhouse.aliyuncs.com",
            "cn-shenzhen-inner": "clickhouse.aliyuncs.com",
            "cn-shenzhen-st4-d01": "clickhouse.aliyuncs.com",
            "cn-shenzhen-su18-b01": "clickhouse.aliyuncs.com",
            "cn-wuhan": "clickhouse.aliyuncs.com",
            "cn-yushanfang": "clickhouse.aliyuncs.com",
            "cn-zhangbei-na61-b01": "clickhouse.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "clickhouse.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "clickhouse.aliyuncs.com",
            "eu-west-1-oxs": "clickhouse.aliyuncs.com",
            "me-east-1": "clickhouse.aliyuncs.com",
            "rus-west-1-pop": "clickhouse.aliyuncs.com",
            "us-east-1": "clickhouse.aliyuncs.com",
            "us-west-1": "clickhouse.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("clickhouse", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func attachWhitelistTemplateToInstanceWithOptions(_ request: AttachWhitelistTemplateToInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachWhitelistTemplateToInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachWhitelistTemplateToInstance",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachWhitelistTemplateToInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachWhitelistTemplateToInstance(_ request: AttachWhitelistTemplateToInstanceRequest) async throws -> AttachWhitelistTemplateToInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachWhitelistTemplateToInstanceWithOptions(request as! AttachWhitelistTemplateToInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroupWithOptions(_ request: ChangeResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeResourceGroup",
            "version": "2023-05-22",
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
    public func createAccountWithOptions(_ tmpReq: CreateAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAccountResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAccountShrinkRequest = CreateAccountShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dmlAuthSetting)) {
            request.dmlAuthSettingShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dmlAuthSetting, "DmlAuthSetting", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.account)) {
            query["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dmlAuthSettingShrink)) {
            query["DmlAuthSetting"] = request.dmlAuthSettingShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["Product"] = request.product ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAccount",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAccount(_ request: CreateAccountRequest) async throws -> CreateAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAccountWithOptions(request as! CreateAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackupPolicyWithOptions(_ request: CreateBackupPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBackupPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupRetentionPeriod)) {
            query["BackupRetentionPeriod"] = request.backupRetentionPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferredBackupPeriod)) {
            query["PreferredBackupPeriod"] = request.preferredBackupPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferredBackupTime)) {
            query["PreferredBackupTime"] = request.preferredBackupTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBackupPolicy",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBackupPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBackupPolicy(_ request: CreateBackupPolicyRequest) async throws -> CreateBackupPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBackupPolicyWithOptions(request as! CreateBackupPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDBWithOptions(_ request: CreateDBRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDBResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBName)) {
            query["DBName"] = request.DBName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDB",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDBResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDB(_ request: CreateDBRequest) async throws -> CreateDBResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDBWithOptions(request as! CreateDBRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDBInstanceWithOptions(_ tmpReq: CreateDBInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDBInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDBInstanceShrinkRequest = CreateDBInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.multiZone)) {
            request.multiZoneShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.multiZone, "MultiZone", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupSetId)) {
            query["BackupSetId"] = request.backupSetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceDescription)) {
            query["DBInstanceDescription"] = request.DBInstanceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBTimeZone)) {
            query["DBTimeZone"] = request.DBTimeZone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deploySchema)) {
            query["DeploySchema"] = request.deploySchema ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engine)) {
            query["Engine"] = request.engine ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.engineVersion)) {
            query["EngineVersion"] = request.engineVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.multiZoneShrink)) {
            query["MultiZone"] = request.multiZoneShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeCount)) {
            query["NodeCount"] = request.nodeCount!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeScaleMax)) {
            query["NodeScaleMax"] = request.nodeScaleMax!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeScaleMin)) {
            query["NodeScaleMin"] = request.nodeScaleMin!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scaleMax)) {
            query["ScaleMax"] = request.scaleMax ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scaleMin)) {
            query["ScaleMin"] = request.scaleMin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDBInstanceId)) {
            query["SourceDBInstanceId"] = request.sourceDBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageQuota)) {
            query["StorageQuota"] = request.storageQuota!;
        }
        if (!TeaUtils.Client.isUnset(request.storageType)) {
            query["StorageType"] = request.storageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vswitchId)) {
            query["VswitchId"] = request.vswitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDBInstance",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDBInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDBInstance(_ request: CreateDBInstanceRequest) async throws -> CreateDBInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDBInstanceWithOptions(request as! CreateDBInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEndpointWithOptions(_ request: CreateEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.computingGroupId)) {
            query["ComputingGroupId"] = request.computingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionPrefix)) {
            query["ConnectionPrefix"] = request.connectionPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceNetType)) {
            query["DBInstanceNetType"] = request.DBInstanceNetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEndpoint",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEndpoint(_ request: CreateEndpointRequest) async throws -> CreateEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEndpointWithOptions(request as! CreateEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAccountWithOptions(_ request: DeleteAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.account)) {
            query["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["Product"] = request.product ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAccount",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAccount(_ request: DeleteAccountRequest) async throws -> DeleteAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAccountWithOptions(request as! DeleteAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackupPolicyWithOptions(_ request: DeleteBackupPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBackupPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBackupPolicy",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBackupPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBackupPolicy(_ request: DeleteBackupPolicyRequest) async throws -> DeleteBackupPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBackupPolicyWithOptions(request as! DeleteBackupPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDBWithOptions(_ request: DeleteDBRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDBResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBName)) {
            query["DBName"] = request.DBName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDB",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDBResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDB(_ request: DeleteDBRequest) async throws -> DeleteDBResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDBWithOptions(request as! DeleteDBRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDBInstanceWithOptions(_ request: DeleteDBInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDBInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDBInstance",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDBInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDBInstance(_ request: DeleteDBInstanceRequest) async throws -> DeleteDBInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDBInstanceWithOptions(request as! DeleteDBInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEndpointWithOptions(_ request: DeleteEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.computingGroupId)) {
            query["ComputingGroupId"] = request.computingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionString)) {
            query["ConnectionString"] = request.connectionString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceNetType)) {
            query["DBInstanceNetType"] = request.DBInstanceNetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEndpoint",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEndpoint(_ request: DeleteEndpointRequest) async throws -> DeleteEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEndpointWithOptions(request as! DeleteEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWhitelistTemplateWithOptions(_ request: DeleteWhitelistTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWhitelistTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWhitelistTemplate",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWhitelistTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWhitelistTemplate(_ request: DeleteWhitelistTemplateRequest) async throws -> DeleteWhitelistTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteWhitelistTemplateWithOptions(request as! DeleteWhitelistTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountAuthorityWithOptions(_ request: DescribeAccountAuthorityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAccountAuthorityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.account)) {
            query["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAccountAuthority",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAccountAuthorityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountAuthority(_ request: DescribeAccountAuthorityRequest) async throws -> DescribeAccountAuthorityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAccountAuthorityWithOptions(request as! DescribeAccountAuthorityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountsWithOptions(_ request: DescribeAccountsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAccountsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["Product"] = request.product ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAccounts",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAccountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccounts(_ request: DescribeAccountsRequest) async throws -> DescribeAccountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAccountsWithOptions(request as! DescribeAccountsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPolicyWithOptions(_ request: DescribeBackupPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupPolicy",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPolicy(_ request: DescribeBackupPolicyRequest) async throws -> DescribeBackupPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupPolicyWithOptions(request as! DescribeBackupPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupsWithOptions(_ request: DescribeBackupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupId)) {
            query["BackupId"] = request.backupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackups",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackups(_ request: DescribeBackupsRequest) async throws -> DescribeBackupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupsWithOptions(request as! DescribeBackupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceAttributeWithOptions(_ request: DescribeDBInstanceAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBInstanceAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBInstanceAttribute",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBInstanceAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceAttribute(_ request: DescribeDBInstanceAttributeRequest) async throws -> DescribeDBInstanceAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBInstanceAttributeWithOptions(request as! DescribeDBInstanceAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceConfigWithOptions(_ request: DescribeDBInstanceConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBInstanceConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBInstanceConfig",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBInstanceConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceConfig(_ request: DescribeDBInstanceConfigRequest) async throws -> DescribeDBInstanceConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBInstanceConfigWithOptions(request as! DescribeDBInstanceConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceConfigChangeLogWithOptions(_ request: DescribeDBInstanceConfigChangeLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBInstanceConfigChangeLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBInstanceConfigChangeLog",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBInstanceConfigChangeLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceConfigChangeLog(_ request: DescribeDBInstanceConfigChangeLogRequest) async throws -> DescribeDBInstanceConfigChangeLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBInstanceConfigChangeLogWithOptions(request as! DescribeDBInstanceConfigChangeLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceDataSourcesWithOptions(_ request: DescribeDBInstanceDataSourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBInstanceDataSourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBName)) {
            query["DBName"] = request.DBName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBInstanceDataSources",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBInstanceDataSourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstanceDataSources(_ request: DescribeDBInstanceDataSourcesRequest) async throws -> DescribeDBInstanceDataSourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBInstanceDataSourcesWithOptions(request as! DescribeDBInstanceDataSourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstancesWithOptions(_ request: DescribeDBInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDBInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceIds)) {
            query["DBInstanceIds"] = request.DBInstanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceStatus)) {
            query["DBInstanceStatus"] = request.DBInstanceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDBInstances",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDBInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDBInstances(_ request: DescribeDBInstancesRequest) async throws -> DescribeDBInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDBInstancesWithOptions(request as! DescribeDBInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEndpointsWithOptions(_ request: DescribeEndpointsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEndpointsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEndpoints",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEndpointsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEndpoints(_ request: DescribeEndpointsRequest) async throws -> DescribeEndpointsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEndpointsWithOptions(request as! DescribeEndpointsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeProcessListWithOptions(_ request: DescribeProcessListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeProcessListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.computingGroupId)) {
            query["ComputingGroupId"] = request.computingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initialQueryId)) {
            query["InitialQueryId"] = request.initialQueryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initialUser)) {
            query["InitialUser"] = request.initialUser ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryDurationMs)) {
            query["QueryDurationMs"] = request.queryDurationMs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryOrder)) {
            query["QueryOrder"] = request.queryOrder!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeProcessList",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeProcessListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeProcessList(_ request: DescribeProcessListRequest) async throws -> DescribeProcessListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeProcessListWithOptions(request as! DescribeProcessListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityIPListWithOptions(_ request: DescribeSecurityIPListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecurityIPListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecurityIPList",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecurityIPListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityIPList(_ request: DescribeSecurityIPListRequest) async throws -> DescribeSecurityIPListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecurityIPListWithOptions(request as! DescribeSecurityIPListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlowLogRecordsWithOptions(_ request: DescribeSlowLogRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSlowLogRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.computingGroupId)) {
            query["ComputingGroupId"] = request.computingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryDurationMs)) {
            query["QueryDurationMs"] = request.queryDurationMs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSlowLogRecords",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSlowLogRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlowLogRecords(_ request: DescribeSlowLogRecordsRequest) async throws -> DescribeSlowLogRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSlowLogRecordsWithOptions(request as! DescribeSlowLogRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlowLogTrendWithOptions(_ request: DescribeSlowLogTrendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSlowLogTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.computingGroupId)) {
            query["ComputingGroupId"] = request.computingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["Product"] = request.product ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryDurationMs)) {
            query["QueryDurationMs"] = request.queryDurationMs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSlowLogTrend",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSlowLogTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlowLogTrend(_ request: DescribeSlowLogTrendRequest) async throws -> DescribeSlowLogTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSlowLogTrendWithOptions(request as! DescribeSlowLogTrendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachWhitelistTemplateToInstanceWithOptions(_ request: DetachWhitelistTemplateToInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachWhitelistTemplateToInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachWhitelistTemplateToInstance",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachWhitelistTemplateToInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachWhitelistTemplateToInstance(_ request: DetachWhitelistTemplateToInstanceRequest) async throws -> DetachWhitelistTemplateToInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachWhitelistTemplateToInstanceWithOptions(request as! DetachWhitelistTemplateToInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWhitelistTemplateWithOptions(_ request: GetWhitelistTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWhitelistTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWhitelistTemplate",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWhitelistTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWhitelistTemplate(_ request: GetWhitelistTemplateRequest) async throws -> GetWhitelistTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWhitelistTemplateWithOptions(request as! GetWhitelistTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killProcessWithOptions(_ request: KillProcessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> KillProcessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.computingGroupId)) {
            query["ComputingGroupId"] = request.computingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initialQueryId)) {
            query["InitialQueryId"] = request.initialQueryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "KillProcess",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(KillProcessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func killProcess(_ request: KillProcessRequest) async throws -> KillProcessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await killProcessWithOptions(request as! KillProcessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceLinkedWhitelistTemplatesWithOptions(_ request: ListInstanceLinkedWhitelistTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstanceLinkedWhitelistTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstanceLinkedWhitelistTemplates",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstanceLinkedWhitelistTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceLinkedWhitelistTemplates(_ request: ListInstanceLinkedWhitelistTemplatesRequest) async throws -> ListInstanceLinkedWhitelistTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInstanceLinkedWhitelistTemplatesWithOptions(request as! ListInstanceLinkedWhitelistTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWhitelistTemplatesWithOptions(_ request: ListWhitelistTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWhitelistTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWhitelistTemplates",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWhitelistTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWhitelistTemplates(_ request: ListWhitelistTemplatesRequest) async throws -> ListWhitelistTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listWhitelistTemplatesWithOptions(request as! ListWhitelistTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountAuthorityWithOptions(_ tmpReq: ModifyAccountAuthorityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAccountAuthorityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyAccountAuthorityShrinkRequest = ModifyAccountAuthorityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dmlAuthSetting)) {
            request.dmlAuthSettingShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dmlAuthSetting, "DmlAuthSetting", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.account)) {
            query["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dmlAuthSettingShrink)) {
            query["DmlAuthSetting"] = request.dmlAuthSettingShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAccountAuthority",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAccountAuthorityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountAuthority(_ request: ModifyAccountAuthorityRequest) async throws -> ModifyAccountAuthorityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAccountAuthorityWithOptions(request as! ModifyAccountAuthorityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountDescriptionWithOptions(_ request: ModifyAccountDescriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAccountDescriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.account)) {
            query["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAccountDescription",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAccountDescriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountDescription(_ request: ModifyAccountDescriptionRequest) async throws -> ModifyAccountDescriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAccountDescriptionWithOptions(request as! ModifyAccountDescriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackupPolicyWithOptions(_ request: ModifyBackupPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBackupPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupRetentionPeriod)) {
            query["BackupRetentionPeriod"] = request.backupRetentionPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferredBackupPeriod)) {
            query["PreferredBackupPeriod"] = request.preferredBackupPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferredBackupTime)) {
            query["PreferredBackupTime"] = request.preferredBackupTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyBackupPolicy",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBackupPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBackupPolicy(_ request: ModifyBackupPolicyRequest) async throws -> ModifyBackupPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBackupPolicyWithOptions(request as! ModifyBackupPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceAttributeWithOptions(_ request: ModifyDBInstanceAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBInstanceAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attributeType)) {
            query["AttributeType"] = request.attributeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attributeValue)) {
            query["AttributeValue"] = request.attributeValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["Product"] = request.product ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBInstanceAttribute",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBInstanceAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceAttribute(_ request: ModifyDBInstanceAttributeRequest) async throws -> ModifyDBInstanceAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBInstanceAttributeWithOptions(request as! ModifyDBInstanceAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceClassWithOptions(_ request: ModifyDBInstanceClassRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBInstanceClassResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.computingGroupId)) {
            query["ComputingGroupId"] = request.computingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeCount)) {
            query["NodeCount"] = request.nodeCount!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeScaleMax)) {
            query["NodeScaleMax"] = request.nodeScaleMax!;
        }
        if (!TeaUtils.Client.isUnset(request.nodeScaleMin)) {
            query["NodeScaleMin"] = request.nodeScaleMin!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scaleMax)) {
            query["ScaleMax"] = request.scaleMax!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleMin)) {
            query["ScaleMin"] = request.scaleMin!;
        }
        if (!TeaUtils.Client.isUnset(request.storageQuota)) {
            query["StorageQuota"] = request.storageQuota!;
        }
        if (!TeaUtils.Client.isUnset(request.storageType)) {
            query["StorageType"] = request.storageType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBInstanceClass",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBInstanceClassResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceClass(_ request: ModifyDBInstanceClassRequest) async throws -> ModifyDBInstanceClassResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBInstanceClassWithOptions(request as! ModifyDBInstanceClassRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceConfigWithOptions(_ request: ModifyDBInstanceConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBInstanceConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parameters)) {
            query["Parameters"] = request.parameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBInstanceConfig",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBInstanceConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceConfig(_ request: ModifyDBInstanceConfigRequest) async throws -> ModifyDBInstanceConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBInstanceConfigWithOptions(request as! ModifyDBInstanceConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceConnectionStringWithOptions(_ request: ModifyDBInstanceConnectionStringRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDBInstanceConnectionStringResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.computingGroupId)) {
            query["ComputingGroupId"] = request.computingGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionString)) {
            query["ConnectionString"] = request.connectionString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionStringPrefix)) {
            query["ConnectionStringPrefix"] = request.connectionStringPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceNetType)) {
            query["DBInstanceNetType"] = request.DBInstanceNetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disablePorts)) {
            query["DisablePorts"] = request.disablePorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDBInstanceConnectionString",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDBInstanceConnectionStringResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDBInstanceConnectionString(_ request: ModifyDBInstanceConnectionStringRequest) async throws -> ModifyDBInstanceConnectionStringResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDBInstanceConnectionStringWithOptions(request as! ModifyDBInstanceConnectionStringRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySecurityIPListWithOptions(_ request: ModifySecurityIPListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySecurityIPListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyMode)) {
            query["ModifyMode"] = request.modifyMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityIPList)) {
            query["SecurityIPList"] = request.securityIPList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySecurityIPList",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySecurityIPListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySecurityIPList(_ request: ModifySecurityIPListRequest) async throws -> ModifySecurityIPListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySecurityIPListWithOptions(request as! ModifySecurityIPListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAccountPasswordWithOptions(_ request: ResetAccountPasswordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetAccountPasswordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.account)) {
            query["Account"] = request.account ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["Product"] = request.product ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetAccountPassword",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetAccountPasswordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetAccountPassword(_ request: ResetAccountPasswordRequest) async throws -> ResetAccountPasswordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetAccountPasswordWithOptions(request as! ResetAccountPasswordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartDBInstanceWithOptions(_ request: RestartDBInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartDBInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartDBInstance",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartDBInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartDBInstance(_ request: RestartDBInstanceRequest) async throws -> RestartDBInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await restartDBInstanceWithOptions(request as! RestartDBInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startDBInstanceWithOptions(_ request: StartDBInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartDBInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartDBInstance",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartDBInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startDBInstance(_ request: StartDBInstanceRequest) async throws -> StartDBInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startDBInstanceWithOptions(request as! StartDBInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDBInstanceWithOptions(_ request: StopDBInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopDBInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopDBInstance",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopDBInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDBInstance(_ request: StopDBInstanceRequest) async throws -> StopDBInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopDBInstanceWithOptions(request as! StopDBInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWhitelistTemplateWithOptions(_ request: UpdateWhitelistTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWhitelistTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityIPList)) {
            query["SecurityIPList"] = request.securityIPList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWhitelistTemplate",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWhitelistTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWhitelistTemplate(_ request: UpdateWhitelistTemplateRequest) async throws -> UpdateWhitelistTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateWhitelistTemplateWithOptions(request as! UpdateWhitelistTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeMinorVersionWithOptions(_ request: UpgradeMinorVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeMinorVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchTime)) {
            query["SwitchTime"] = request.switchTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.switchTimeMode)) {
            query["SwitchTimeMode"] = request.switchTimeMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetMinorVersion)) {
            query["TargetMinorVersion"] = request.targetMinorVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeMinorVersion",
            "version": "2023-05-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeMinorVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeMinorVersion(_ request: UpgradeMinorVersionRequest) async throws -> UpgradeMinorVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeMinorVersionWithOptions(request as! UpgradeMinorVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
